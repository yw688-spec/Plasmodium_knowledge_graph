#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
antimalarial_drug_enrichment.py
================================
为 PMC13088779 / RSC Adv. 2026, 16, 20024 (DOI:10.1039/D5RA08585C) 综述中
列出的全部抗疟药物，自动补全综述未涵盖的属性：
    Modality（小分子 / 生物制剂）
    Groups / 研发状态
    Structure（SMILES / InChI）
    Weight (Average) / Monoisotopic mass
    Chemical Formula
    DrugBank ID / ChEMBL ID / PubChem CID

数据来源（均为开放、可批量调用的 API）：
    1. PubChem PUG REST  —— 化学式、分子量、SMILES、InChI、InChIKey、IUPAC 名
       https://pubchem.ncbi.nlm.nih.gov/docs/pug-rest
    2. UniChem (EBI)     —— 用 InChIKey 把化合物交叉映射到 DrugBank ID / ChEMBL ID
       https://www.ebi.ac.uk/unichem/
    3. ChEMBL API        —— 多端点：
         · molecule          : Modality、max_phase/withdrawn、ATC 编码、ADMET(alogp/psa/hbd/hba/Ro5)
         · mechanism+target  : 靶标、结构化作用机制、作用类型、UniProt 号
         · drug_warning      : 毒性/黑框等药物警告
         · drug_indication   : 适应症
       https://www.ebi.ac.uk/chembl/api/data/
    4. ClassyFire (ChemOnt) —— 按 InChIKey 取结构分类层级，每级带 CHEMONT ID
       http://classyfire.wishartlab.com/

需求覆盖矩阵（对照“分类/机理/耐药 + 靶标/结构/其他属性”）：
    分类   : review_class(综述DOI) + atc_class_who(WHO) + cf_*(ChemOnt)   —— ✅ 三套可溯源
    机理   : review_moa(综述) + chembl_moa/action_type(ChEMBL mechanism) —— ✅ 双源
    靶标   : target_name/organism/uniprot/target_chembl_id(ChEMBL)       —— ✅ 可引用
    分子结构: SMILES/InChI/式量(PubChem)                                 —— ✅
    其他属性: ADMET + drug_warning + indications(ChEMBL)                  —— ✅
    耐药机制: resistance_mechanism/resistance_source                      —— ⏸ 占位，暂搁置
             （无干净结构化 API；留空字段待后续从综述正文/文献人工补充，
               每条引用须 web 核实，绝不凭记忆杜撰 DOI/PMID）

★ 关于药物分类（三套可溯源 + 一套人读）：
    本脚本提供【三套可溯源分类】+【一套中文人读大类】：
      · review_class / phase / review_moa —— 综述 Table 1/2 原表，逐条录自
        DOI:10.1039/D5RA08585C，出处即综述本身，可按 DOI 引用（权威）。
      · atc_class_who / atc_code —— WHO ATC 官方分类，抓自 ChEMBL atc_class，
        带 P01Bx 编码可引用；但仅覆盖已上市药，在研候选标“无 (未上市/无 ATC)”。
      · cf_parent / cf_subclass / cf_class / cf_superclass —— ClassyFire 结构分类，
        按 InChIKey 自动判定，每级带 CHEMONT ID；基于结构故【覆盖在研候选】。
      · cn_class —— 中文结构大类，仅便于人读 / 分组，非引用来源。
    => 三套可溯源分类互补：综述原表覆盖全部 26 条且权威；ATC 补已上市药的
       WHO 编码；ClassyFire 补在研候选的结构本体 ID。需引用时三者皆有出处。

⚠ 关于 DrugBank：
    DrugBank Online 的使用条款禁止对其网页做自动化爬取。本脚本因此【不】爬 DrugBank 网页，
    而是：
      · 用 UniChem 取得 DrugBank ID（合规、开放）；
      · 化学属性从 PubChem 取（与 DrugBank 展示的同源，数值一致）；
      · Modality / 研发状态用 ChEMBL 近似。
    如果你需要 DrugBank 网页上【逐字一致】的 Groups / Modality 等原生字段，
    请去 DrugBank 申请学术许可、下载整库 XML，再用文件末尾的
    parse_drugbank_xml() 在本地解析。这是唯一合规的 DrugBank 原生字段获取方式。

依赖：
    pip install requests openpyxl    # openpyxl 仅用于导出 .xlsx，没装则只导 CSV

运行：
    python antimalarial_drug_enrichment.py
输出：
    antimalarial_drugs_enriched.csv   (始终生成)
    antimalarial_drugs_enriched.xlsx  (若安装了 openpyxl)
"""

import csv
import json
import sys
import time
import urllib.parse
import urllib.request
import urllib.error
from dataclasses import dataclass, field, asdict
from typing import Optional

# --------------------------------------------------------------------------- #
# 1. 药物清单 —— 严格依据综述 Table 1 + Table 2（用户核对原表录入）
#    DOI:10.1039/D5RA08585C, RSC Adv. 2026, 16, 20024
#    复方已拆为单体（便于逐一映射数据库）。每条字段含义：
#      display / query : 显示名 / PubChem 查询名
#      status / phase  : Approved 或 Candidate / 临床期（Table 2 给出，Table 1 为 Approved）
#      trade / fda_year: 商品名 / FDA 批准年（Table 1 给出）
#      review_class    : 综述原表 “Class” 列（Table 2 权威；Table 1 取综述正文/标准药理类）
#      cn_class        : 中文结构大类（便于人读与分组）
#      review_moa      : 综述所述作用机制（已精简转述）
#    review_class 与 review_moa 出处即综述本身，可引用 DOI 溯源。
# --------------------------------------------------------------------------- #
DRUGS: list[dict] = [
    # ---- Table 1: FDA-approved（复方拆分；review_class 取自综述正文/标准药理类）----
    {"display": "Chloroquine", "query": "chloroquine", "status": "Approved", "phase": "—",
     "trade": "Aralen", "fda_year": "1949", "review_class": "4-Aminoquinoline",
     "cn_class": "喹啉类", "review_moa": "结合hematin、阻断hemozoin形成，游离血红素堆积致虫体死亡"},
    {"display": "Primaquine", "query": "primaquine", "status": "Approved", "phase": "—",
     "trade": "Primaquine phosphate", "fda_year": "1952", "review_class": "8-Aminoquinoline",
     "cn_class": "喹啉类", "review_moa": "清除肝期休眠体与配子体；代谢物干扰线粒体电子传递"},
    {"display": "Hydroxychloroquine", "query": "hydroxychloroquine", "status": "Approved", "phase": "—",
     "trade": "Plaquenil", "fda_year": "1955", "review_class": "4-Aminoquinoline",
     "cn_class": "喹啉类", "review_moa": "同氯喹，抑制hemozoin形成"},
    {"display": "Sulfadoxine", "query": "sulfadoxine", "status": "Approved", "phase": "—",
     "trade": "Fansidar (复方)", "fda_year": "1983", "review_class": "Sulfonamide",
     "cn_class": "抗叶酸类", "review_moa": "抑制DHPS，阻断叶酸从头合成上游"},
    {"display": "Pyrimethamine", "query": "pyrimethamine", "status": "Approved", "phase": "—",
     "trade": "Fansidar (复方)", "fda_year": "1983", "review_class": "Diaminopyrimidine",
     "cn_class": "抗叶酸类", "review_moa": "抑制DHFR，阻断四氢叶酸生成"},
    {"display": "Mefloquine", "query": "mefloquine", "status": "Approved", "phase": "—",
     "trade": "Lariam", "fda_year": "1989", "review_class": "Methanolquinoline",
     "cn_class": "喹啉类", "review_moa": "推测抑制hemozoin形成/干扰膜结构"},
    {"display": "Atovaquone", "query": "atovaquone", "status": "Approved", "phase": "—",
     "trade": "Malarone (复方)", "fda_year": "2000", "review_class": "Naphthoquinone",
     "cn_class": "萘醌类", "review_moa": "结合细胞色素bc1的Qo位点，崩解线粒体膜电位"},
    {"display": "Proguanil", "query": "proguanil", "status": "Approved", "phase": "—",
     "trade": "Malarone (复方)", "fda_year": "2000", "review_class": "Biguanide",
     "cn_class": "抗叶酸类", "review_moa": "前药→环氯胍抑制DHFR；并增效阿托伐醌去极化"},
    {"display": "Quinine", "query": "quinine", "status": "Approved", "phase": "—",
     "trade": "Qualaquine", "fda_year": "2005", "review_class": "Methanolquinoline (生物碱)",
     "cn_class": "喹啉类", "review_moa": "抑制hemozoin形成；可嵌插DNA"},
    {"display": "Artemether", "query": "artemether", "status": "Approved", "phase": "—",
     "trade": "Coartem (复方)", "fda_year": "2009", "review_class": "Artemisinin",
     "cn_class": "青蒿素类", "review_moa": "过氧桥经Fe²⁺激活生成自由基，烷基化虫体蛋白"},
    {"display": "Lumefantrine", "query": "lumefantrine", "status": "Approved", "phase": "—",
     "trade": "Coartem (复方)", "fda_year": "2009", "review_class": "Aryl amino alcohol",
     "cn_class": "芳基氨基醇类", "review_moa": "抑制hemozoin形成（ACT伴侣药）"},
    {"display": "Tafenoquine", "query": "tafenoquine", "status": "Approved", "phase": "IV",
     "trade": "Krintafel", "fda_year": "2018", "review_class": "8-Aminoquinoline",
     "cn_class": "喹啉类", "review_moa": "肝内CYP2D6激活的前药，靶点未明（亦列于Table 2 Phase IV）"},
    {"display": "Artesunate", "query": "artesunate", "status": "Approved", "phase": "—",
     "trade": "Artesun (IV)", "fda_year": "2020", "review_class": "Artemisinin",
     "cn_class": "青蒿素类", "review_moa": "水溶性前药→双氢青蒿素，过氧桥自由基机制"},

    # ---- Table 2: clinical candidates（review_class / phase / review_moa 严格录自原表）----
    {"display": "SJ733", "query": "SJ733", "status": "Candidate", "phase": "II",
     "trade": "", "fda_year": "", "review_class": "Dihydroisoquinolone",
     "cn_class": "其他·新型", "review_moa": "干扰恶性疟原虫PfATP4功能"},
    {"display": "AQ13", "query": "AQ-13", "status": "Candidate", "phase": "II",
     "trade": "", "fda_year": "", "review_class": "4-Aminoquinoline",
     "cn_class": "喹啉类", "review_moa": "机制尚未证实（与氯喹同类）"},
    {"display": "Cipargamin (KAE609)", "query": "cipargamin", "status": "Candidate", "phase": "II",
     "trade": "", "fda_year": "", "review_class": "Spiroindolone",
     "cn_class": "其他·新型", "review_moa": "抑制PfATP4并阻断蚊媒传播"},
    {"display": "Imatinib", "query": "imatinib", "status": "Candidate", "phase": "II",
     "trade": "", "fda_year": "", "review_class": "2-Phenylaminopyrimidine",
     "cn_class": "其他·新型", "review_moa": "抑制band 3蛋白的酪氨酸磷酸化"},
    {"display": "M5717", "query": "M5717", "status": "Candidate", "phase": "II",
     "trade": "", "fda_year": "", "review_class": "Quinoline diamine",
     "cn_class": "喹啉类", "review_moa": "抑制PfeEF2，阻断虫体蛋白质合成"},
    {"display": "Methylene blue", "query": "methylene blue", "status": "Candidate", "phase": "II",
     "trade": "", "fda_year": "", "review_class": "Phenothiazine",
     "cn_class": "其他·新型", "review_moa": "抑制谷胱甘肽依赖的血红素降解"},
    {"display": "Sevuparin", "query": "sevuparin", "status": "Candidate", "phase": "II",
     "trade": "", "fda_year": "", "review_class": "Acid polysaccharide",
     "cn_class": "其他·新型", "review_moa": "结合PfEMP1的DBL1α域，阻断玫瑰花结与细胞黏附"},
    {"display": "Rosiglitazone", "query": "rosiglitazone", "status": "Candidate", "phase": "II",
     "trade": "", "fda_year": "", "review_class": "Thiazolidinedione",
     "cn_class": "其他·新型", "review_moa": "促进巨噬细胞吞噬感染红细胞、降低促炎因子（辅助治疗）"},
    {"display": "DSM265", "query": "DSM265", "status": "Candidate", "phase": "II",
     "trade": "", "fda_year": "", "review_class": "Triazolopyrimidine",
     "cn_class": "其他·新型", "review_moa": "选择性抑制疟原虫DHODH"},
    {"display": "Ferroquine", "query": "ferroquine", "status": "Candidate", "phase": "II",
     "trade": "", "fda_year": "", "review_class": "Ferrocene",
     "cn_class": "其他·新型", "review_moa": "抑制hemozoin形成并产生活性氧(ROS)"},
    {"display": "Artefenomel (OZ439)", "query": "artefenomel", "status": "Candidate", "phase": "III",
     "trade": "", "fda_year": "", "review_class": "1,2,4-Trioxolane",
     "cn_class": "合成过氧化物类", "review_moa": "干扰虫体对血红蛋白的消化"},
    {"display": "Artemisone", "query": "artemisone", "status": "Candidate", "phase": "III",
     "trade": "", "fda_year": "", "review_class": "Artemisinin",
     "cn_class": "青蒿素类", "review_moa": "抑制无性期及V期配子体"},
    {"display": "Fosmidomycin", "query": "fosmidomycin", "status": "Candidate", "phase": "III",
     "trade": "", "fda_year": "", "review_class": "Phosphonic acid",
     "cn_class": "其他·新型", "review_moa": "抑制DXR（1-脱氧-D-木酮糖5-磷酸还原异构酶）"},
    {"display": "Arterolane", "query": "arterolane", "status": "Candidate", "phase": "III",
     "trade": "", "fda_year": "", "review_class": "1,2,4-Trioxolane",
     "cn_class": "合成过氧化物类", "review_moa": "抑制血红素解毒及PfSERCA(PfATP6)"},
]

# --------------------------------------------------------------------------- #
# 2. HTTP 工具：带重试 + 限速（PubChem 要求 ≤5 请求/秒）
# --------------------------------------------------------------------------- #
USER_AGENT = "antimalarial-enrichment/1.0 (research use; contact: you@example.com)"
REQUEST_DELAY = 0.25          # 秒，约 4 req/s，符合 PubChem 限速
MAX_RETRIES = 3


def http_get_json(url: str, timeout: int = 30) -> Optional[dict | list]:
    """GET 一个 URL 并解析 JSON。失败重试，404 直接返回 None。"""
    for attempt in range(1, MAX_RETRIES + 1):
        try:
            req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT,
                                                       "Accept": "application/json"})
            with urllib.request.urlopen(req, timeout=timeout) as resp:
                data = resp.read().decode("utf-8")
            time.sleep(REQUEST_DELAY)
            return json.loads(data)
        except urllib.error.HTTPError as e:
            if e.code == 404:
                return None                       # 该数据库没有这个化合物
            if e.code in (400, 503, 429) and attempt < MAX_RETRIES:
                time.sleep(REQUEST_DELAY * 4 * attempt)
                continue
            return None
        except (urllib.error.URLError, TimeoutError, json.JSONDecodeError):
            if attempt < MAX_RETRIES:
                time.sleep(REQUEST_DELAY * 4 * attempt)
                continue
            return None
    return None


# --------------------------------------------------------------------------- #
# 3. 数据结构
# --------------------------------------------------------------------------- #
@dataclass
class DrugRecord:
    display_name: str
    status: str                                    # Approved / Candidate
    query_name: str
    # ---- 综述原表字段（出处=综述本身，可按 DOI 引用）----
    phase: str = ""                                # 临床期（Table 2）
    trade_name: str = ""                           # 商品名（Table 1）
    fda_year: str = ""                             # FDA 批准年（Table 1）
    review_class: str = ""                         # 综述 Class 列（权威）
    cn_class: str = ""                             # 中文结构大类（便于人读）
    review_moa: str = ""                           # 综述所述机制（精简转述）
    # ---- 可溯源分类（API 抓取，带数据库出处编号）----
    atc_code: str = ""                             # WHO ATC level4/5 编码
    atc_class_who: str = ""                        # WHO 官方类名 (P01Bx)
    cf_superclass: str = ""                        # ClassyFire 超类 [CHEMONT:...]
    cf_class: str = ""                             # ClassyFire 类
    cf_subclass: str = ""                          # ClassyFire 亚类
    cf_parent: str = ""                            # ClassyFire 直接父类（最具体）
    # ---- 其余化学/数据库字段 ----
    pubchem_cid: Optional[int] = None
    iupac_name: Optional[str] = None
    chemical_formula: Optional[str] = None
    weight_average: Optional[str] = None          # g/mol
    monoisotopic_mass: Optional[str] = None
    exact_mass: Optional[str] = None
    smiles_isomeric: Optional[str] = None
    smiles_canonical: Optional[str] = None
    inchi: Optional[str] = None
    inchikey: Optional[str] = None
    drugbank_id: Optional[str] = None
    chembl_id: Optional[str] = None
    modality: Optional[str] = None                # ChEMBL molecule_type
    status_proxy: Optional[str] = None            # 由 max_phase/withdrawn 推得
    # ---- 靶标 + 结构化机理（ChEMBL mechanism / target 端点）----
    chembl_moa: str = ""                          # ChEMBL 策展的作用机制句
    action_type: str = ""                         # INHIBITOR / BLOCKER / ...
    target_name: str = ""                         # 靶标名（target pref_name）
    target_organism: str = ""                     # 靶标物种（多为 P. falciparum）
    target_chembl_id: str = ""                    # 靶标 ChEMBL ID（可引用）
    target_uniprot: str = ""                      # 靶标 UniProt 登录号（可引用）
    # ---- 其他属性（ChEMBL molecule_properties + 端点）----
    alogp: str = ""                               # 计算脂水分配系数
    psa: str = ""                                 # 极性表面积
    hbd: str = ""                                 # 氢键供体数
    hba: str = ""                                 # 氢键受体数
    ro5_violations: str = ""                      # 五规则违反数
    drug_warning: str = ""                        # 药物警告（毒性/黑框，drug_warning 端点）
    indications: str = ""                         # 适应症（drug_indication 端点）
    # ---- 耐药机制（暂搁置：占位字段，待人工/文献补充，绝不杜撰）----
    resistance_mechanism: str = ""                # 留空；来源标注见 resistance_source
    resistance_source: str = ""                   # 出处占位（如 PMID/DOI），需逐条核实
    notes: str = ""


# --------------------------------------------------------------------------- #
# 4. PubChem：name -> CID + 化学属性
#    兼容 2025 年 PUG REST 属性名变更（CanonicalSMILES/IsomericSMILES ->
#    ConnectivitySMILES/SMILES）。先试新名，失败回退旧名。
# --------------------------------------------------------------------------- #
PUBCHEM_BASE = "https://pubchem.ncbi.nlm.nih.gov/rest/pug/compound"

_PROP_SETS = [
    # (属性串, 是否为新版命名)
    ("MolecularFormula,MolecularWeight,IUPACName,InChI,InChIKey,"
     "ExactMass,MonoisotopicMass,SMILES,ConnectivitySMILES", True),
    ("MolecularFormula,MolecularWeight,IUPACName,InChI,InChIKey,"
     "ExactMass,MonoisotopicMass,IsomericSMILES,CanonicalSMILES", False),
]


def pubchem_lookup(rec: DrugRecord) -> None:
    """按名称查 PubChem，填充 CID 与化学属性。"""
    name_enc = urllib.parse.quote(rec.query_name)
    for prop_str, is_modern in _PROP_SETS:
        url = f"{PUBCHEM_BASE}/name/{name_enc}/property/{prop_str}/JSON"
        data = http_get_json(url)
        if not data or "PropertyTable" not in data:
            continue
        props = data["PropertyTable"]["Properties"][0]
        rec.pubchem_cid = props.get("CID")
        rec.chemical_formula = props.get("MolecularFormula")
        rec.weight_average = _fmt_num(props.get("MolecularWeight"))
        rec.iupac_name = props.get("IUPACName")
        rec.inchi = props.get("InChI")
        rec.inchikey = props.get("InChIKey")
        rec.exact_mass = _fmt_num(props.get("ExactMass"))
        rec.monoisotopic_mass = _fmt_num(props.get("MonoisotopicMass"))
        if is_modern:
            rec.smiles_isomeric = props.get("SMILES")
            rec.smiles_canonical = props.get("ConnectivitySMILES")
        else:
            rec.smiles_isomeric = props.get("IsomericSMILES")
            rec.smiles_canonical = props.get("CanonicalSMILES")
        return
    rec.notes += "PubChem: 未按名称命中; "


def _fmt_num(v) -> Optional[str]:
    if v is None:
        return None
    try:
        return f"{float(v):.4f}".rstrip("0").rstrip(".")
    except (TypeError, ValueError):
        return str(v)


# --------------------------------------------------------------------------- #
# 5. UniChem：InChIKey -> DrugBank ID / ChEMBL ID
#    src_id: 1 = ChEMBL, 2 = DrugBank（UniChem 数据源编号）
# --------------------------------------------------------------------------- #
UNICHEM_BASE = "https://www.ebi.ac.uk/unichem/rest/inchikey"
SRC_CHEMBL, SRC_DRUGBANK = "1", "2"


def unichem_map(rec: DrugRecord) -> None:
    if not rec.inchikey:
        return
    data = http_get_json(f"{UNICHEM_BASE}/{rec.inchikey}")
    if not isinstance(data, list):
        return
    for entry in data:
        src = str(entry.get("src_id"))
        cid = entry.get("src_compound_id")
        if src == SRC_DRUGBANK and not rec.drugbank_id:
            rec.drugbank_id = cid
        elif src == SRC_CHEMBL and not rec.chembl_id:
            rec.chembl_id = cid


# --------------------------------------------------------------------------- #
# 6. ChEMBL：ChEMBL ID -> Modality + 研发状态近似
# --------------------------------------------------------------------------- #
CHEMBL_BASE = "https://www.ebi.ac.uk/chembl/api/data/molecule"

_PHASE_LABEL = {
    4: "approved", 3: "investigational (Phase III)",
    2: "investigational (Phase II)", 1: "investigational (Phase I)",
    0: "preclinical / experimental",
}


def chembl_lookup(rec: DrugRecord) -> None:
    if not rec.chembl_id:
        # 退一步：用名称在 ChEMBL 搜索
        _chembl_by_name(rec)
        return
    data = http_get_json(f"{CHEMBL_BASE}/{rec.chembl_id}.json")
    if not data:
        return
    _apply_chembl(rec, data)


def _chembl_by_name(rec: DrugRecord) -> None:
    q = urllib.parse.quote(rec.query_name)
    url = f"{CHEMBL_BASE}/search.json?q={q}&limit=1"
    data = http_get_json(url)
    if not data or not data.get("molecules"):
        return
    mol = data["molecules"][0]
    rec.chembl_id = rec.chembl_id or mol.get("molecule_chembl_id")
    _apply_chembl(rec, mol)


def _apply_chembl(rec: DrugRecord, mol: dict) -> None:
    rec.modality = mol.get("molecule_type")        # Small molecule / Protein / ...
    max_phase = mol.get("max_phase")
    withdrawn = mol.get("withdrawn_flag")
    label = None
    if max_phase is not None:
        try:
            label = _PHASE_LABEL.get(int(float(max_phase)), f"phase {max_phase}")
        except (TypeError, ValueError):
            label = str(max_phase)
    if withdrawn:
        label = (label + "; withdrawn") if label else "withdrawn"
    rec.status_proxy = label
    # 化学属性兜底（PubChem 没命中时用 ChEMBL 补）
    props = mol.get("molecule_properties") or {}
    if not rec.chemical_formula:
        rec.chemical_formula = props.get("full_molformula")
    if not rec.weight_average:
        rec.weight_average = _fmt_num(props.get("full_mwt"))
    # ADMET / 理化属性（ChEMBL molecule_properties）
    rec.alogp = _fmt_num(props.get("alogp")) or ""
    rec.psa = _fmt_num(props.get("psa")) or ""
    rec.hbd = str(props.get("hbd")) if props.get("hbd") is not None else ""
    rec.hba = str(props.get("hba")) if props.get("hba") is not None else ""
    rec.ro5_violations = (str(props.get("num_ro5_violations"))
                          if props.get("num_ro5_violations") is not None else "")
    structs = mol.get("molecule_structures") or {}
    if not rec.smiles_canonical:
        rec.smiles_canonical = structs.get("canonical_smiles")
    if not rec.inchikey:
        rec.inchikey = structs.get("standard_inchi_key")
    # WHO ATC 编码（list，可能为空 => 在研候选无 ATC）
    atc_list = mol.get("atc_classifications") or []
    if atc_list:
        rec.atc_code = "; ".join(atc_list)
        _resolve_atc_class(rec, atc_list[0])       # 取首个解析官方类名
    else:
        rec.atc_code = "无"
        rec.atc_class_who = "无 (未上市/无 ATC)"


# --------------------------------------------------------------------------- #
# 6b. WHO ATC：level5 编码 -> 官方化学类名（level4_description）
#     数据源：ChEMBL atc_class 端点（转录自 WHO ATC/DDD Index，权威可溯源）
# --------------------------------------------------------------------------- #
ATC_CLASS_BASE = "https://www.ebi.ac.uk/chembl/api/data/atc_class"


def _resolve_atc_class(rec: DrugRecord, atc_code: str) -> None:
    """用完整 level5 ATC 码解析其 level4 化学子组的官方名称。"""
    data = http_get_json(f"{ATC_CLASS_BASE}/{atc_code}.json")
    if not data:
        # 退一步：自行取 level4 前缀（前5位）再查
        lvl4 = atc_code[:5]
        rec.atc_class_who = f"{lvl4} (名称解析失败)"
        return
    lvl4_code = data.get("level4") or atc_code[:5]
    lvl4_name = data.get("level4_description") or ""
    rec.atc_class_who = f"{lvl4_name} ({lvl4_code})".strip()


# --------------------------------------------------------------------------- #
# 6b2. ChEMBL mechanism / target：靶标 + 结构化机理 + 作用类型
#      mechanism 端点给 mechanism_of_action / action_type / target_chembl_id；
#      再用 target 端点取靶标名、物种、UniProt 登录号。均可按 ChEMBL ID 引用。
# --------------------------------------------------------------------------- #
CHEMBL_API = "https://www.ebi.ac.uk/chembl/api/data"


def chembl_mechanism_lookup(rec: DrugRecord) -> None:
    """抓取作用机制、作用类型与分子靶标（含 UniProt 号）。"""
    if not rec.chembl_id:
        return
    data = http_get_json(f"{CHEMBL_API}/mechanism.json?molecule_chembl_id={rec.chembl_id}")
    mechs = (data or {}).get("mechanisms") or []
    if not mechs:
        return
    m = mechs[0]                                   # 取首条（通常为主要靶标）
    rec.chembl_moa = m.get("mechanism_of_action") or ""
    rec.action_type = m.get("action_type") or ""
    tid = m.get("target_chembl_id")
    if not tid:
        return
    rec.target_chembl_id = tid
    tgt = http_get_json(f"{CHEMBL_API}/target/{tid}.json")
    if not tgt:
        return
    rec.target_name = tgt.get("pref_name") or ""
    rec.target_organism = tgt.get("organism") or ""
    comps = tgt.get("target_components") or []
    accs = [c.get("accession") for c in comps if c.get("accession")]
    rec.target_uniprot = "; ".join(accs)


def chembl_warning_lookup(rec: DrugRecord) -> None:
    """药物警告（毒性 / 黑框等），drug_warning 端点。"""
    if not rec.chembl_id:
        return
    data = http_get_json(f"{CHEMBL_API}/drug_warning.json?molecule_chembl_id={rec.chembl_id}")
    warns = (data or {}).get("drug_warnings") or []
    if not warns:
        return
    parts = []
    for w in warns[:3]:                            # 至多取前 3 条
        wtype = w.get("warning_type") or ""
        wclass = w.get("warning_class") or ""
        desc = w.get("warning_description") or ""
        seg = " / ".join(x for x in (wtype, wclass, desc) if x)
        if seg:
            parts.append(seg)
    rec.drug_warning = " | ".join(parts)


def chembl_indication_lookup(rec: DrugRecord) -> None:
    """适应症，drug_indication 端点（去重，取最高研发期）。"""
    if not rec.chembl_id:
        return
    data = http_get_json(f"{CHEMBL_API}/drug_indication.json?molecule_chembl_id={rec.chembl_id}")
    inds = (data or {}).get("drug_indications") or []
    if not inds:
        return
    seen = {}
    for it in inds:
        term = it.get("efo_term") or it.get("mesh_heading") or ""
        if not term:
            continue
        ph = _to_float(it.get("max_phase_for_ind"))   # 可能是字符串/None，统一转数字
        if term not in seen or ph > seen[term]:
            seen[term] = ph
    # 按研发期降序，最多列 6 个，标注最高期
    ordered = sorted(seen.items(), key=lambda kv: -kv[1])[:6]
    rec.indications = "; ".join(
        f"{t} (max phase {p:g})" if p > 0 else t for t, p in ordered)


def _to_float(v) -> float:
    """把任意值安全转为 float；无法转换或为 None 时返回 0.0。"""
    try:
        return float(v)
    except (TypeError, ValueError):
        return 0.0



CLASSYFIRE_BASE = "http://classyfire.wishartlab.com/entities"
CLASSYFIRE_TIMEOUT = 60        # ClassyFire 响应慢，单独给长超时


def classyfire_lookup(rec: DrugRecord) -> None:
    if not rec.inchikey:
        rec.cf_parent = "无 (缺 InChIKey)"
        return
    url = f"{CLASSYFIRE_BASE}/{rec.inchikey}.json"
    data = http_get_json(url, timeout=CLASSYFIRE_TIMEOUT)
    if not isinstance(data, dict) or not data.get("class"):
        rec.cf_parent = "无 (ClassyFire 未收录或超时)"
        rec.notes += "ClassyFire: 未命中; "
        return
    rec.cf_superclass = _cf_fmt(data.get("superclass"))
    rec.cf_class = _cf_fmt(data.get("class"))
    rec.cf_subclass = _cf_fmt(data.get("subclass"))
    rec.cf_parent = _cf_fmt(data.get("direct_parent"))


def _cf_fmt(node) -> str:
    """把 ClassyFire 节点 {'name','chemont_id'} 格式化为 '名称 [CHEMONT:xxxx]'。"""
    if not isinstance(node, dict) or not node.get("name"):
        return ""
    name = node["name"]
    cid = node.get("chemont_id", "")
    return f"{name} [{cid}]" if cid else name


# --------------------------------------------------------------------------- #
# 7. 主流程
# --------------------------------------------------------------------------- #
FIELDS = [
    "display_name", "status", "phase", "trade_name", "fda_year",
    # 综述权威分类 + 机制（出处=综述 DOI）
    "review_class", "cn_class", "review_moa",
    # 可溯源分类（API 抓取，带出处编号）
    "atc_class_who", "atc_code",
    "cf_parent", "cf_subclass", "cf_class", "cf_superclass",
    # 靶标 + 结构化机理（ChEMBL mechanism/target，可引用）
    "target_name", "target_organism", "target_uniprot", "target_chembl_id",
    "chembl_moa", "action_type",
    # 耐药机制（暂搁置：占位，待人工/文献补充）
    "resistance_mechanism", "resistance_source",
    # 其他属性
    "modality", "status_proxy", "drug_warning", "indications",
    "alogp", "psa", "hbd", "hba", "ro5_violations",
    # 化学结构
    "chemical_formula", "weight_average", "monoisotopic_mass", "exact_mass",
    "smiles_isomeric", "smiles_canonical", "inchikey", "inchi",
    "drugbank_id", "chembl_id", "pubchem_cid", "iupac_name", "notes",
]


def enrich_all() -> list[DrugRecord]:
    records: list[DrugRecord] = []
    total = len(DRUGS)
    for i, d in enumerate(DRUGS, 1):
        rec = DrugRecord(
            display_name=d["display"], status=d["status"], query_name=d["query"],
            phase=d.get("phase", ""), trade_name=d.get("trade", ""),
            fda_year=d.get("fda_year", ""), review_class=d.get("review_class", ""),
            cn_class=d.get("cn_class", ""), review_moa=d.get("review_moa", ""),
        )
        print(f"[{i:2}/{total}] {rec.display_name:<22} {rec.cn_class:<8}", end="", flush=True)
        pubchem_lookup(rec)         # 化学属性 + InChIKey
        unichem_map(rec)            # DrugBank ID / ChEMBL ID
        chembl_lookup(rec)          # Modality + 状态 + ATC + ADMET
        chembl_mechanism_lookup(rec)   # 靶标 + 结构化机理 + 作用类型
        chembl_warning_lookup(rec)     # 药物警告（毒性/黑框）
        chembl_indication_lookup(rec)  # 适应症
        classyfire_lookup(rec)      # 结构分类（覆盖在研候选）
        flags = []
        if rec.atc_class_who and not rec.atc_class_who.startswith("无"):
            flags.append("ATC:" + rec.atc_code.split(";")[0])
        if rec.cf_parent and not rec.cf_parent.startswith("无"):
            flags.append("CF:" + rec.cf_parent.split(" [")[0])
        if rec.drugbank_id:  flags.append(rec.drugbank_id)
        print("  " + (" | ".join(flags) if flags else "未命中分类"))
        records.append(rec)
    return records


def write_csv(records: list[DrugRecord], path: str) -> None:
    with open(path, "w", newline="", encoding="utf-8-sig") as f:
        w = csv.DictWriter(f, fieldnames=FIELDS, extrasaction="ignore")
        w.writeheader()
        for r in records:
            w.writerow(asdict(r))
    print(f"\n已写出 CSV: {path}")


def write_xlsx(records: list[DrugRecord], path: str) -> None:
    try:
        from openpyxl import Workbook
        from openpyxl.styles import Font, Alignment
    except ImportError:
        print("（未安装 openpyxl，跳过 .xlsx 导出；pip install openpyxl 可启用）")
        return
    wb = Workbook()
    ws = wb.active
    ws.title = "Antimalarial drugs"
    ws.append(FIELDS)
    for c in ws[1]:
        c.font = Font(bold=True)
        c.alignment = Alignment(horizontal="center")
    for r in records:
        d = asdict(r)
        ws.append([d.get(k) for k in FIELDS])
    for col in ws.columns:
        width = min(60, max(12, max((len(str(c.value)) if c.value else 0)
                                    for c in col) + 2))
        ws.column_dimensions[col[0].column_letter].width = width
    ws.freeze_panes = "A2"
    wb.save(path)
    print(f"已写出 Excel: {path}")


# --------------------------------------------------------------------------- #
# 8.（可选）DrugBank 官方学术许可 XML 解析器
#    —— 仅在你已合法下载 full database XML 后使用，用于取 DrugBank 原生字段。
#    下载需登录 DrugBank 并同意学术许可：https://go.drugbank.com/releases/latest
# --------------------------------------------------------------------------- #
def parse_drugbank_xml(xml_path: str, wanted_names: Optional[set[str]] = None) -> dict:
    """
    解析 DrugBank full database XML，返回 {drugbank_id: {字段...}}。
    取出 DrugBank 网页同款原生字段：
        name, type(=Modality), groups(=Groups), average_mass, monoisotopic_mass,
        以及 calculated-properties 里的 Molecular Formula / SMILES / InChI / InChIKey。
    用法:
        db = parse_drugbank_xml("full database.xml",
                                wanted_names={"chloroquine","artesunate"})
    依赖标准库 xml.etree；大文件（~1.4 GB）建议用 iterparse 流式解析（已采用）。
    """
    import xml.etree.ElementTree as ET

    NS = "{http://www.drugbank.ca}"
    wanted = {w.lower() for w in wanted_names} if wanted_names else None
    out: dict = {}

    context = ET.iterparse(xml_path, events=("end",))
    for event, elem in context:
        if elem.tag != f"{NS}drug":
            continue
        # 顶层 <drug> 才是药物条目（嵌套的 drug-interaction 里也有 drug 标签，靠 type 属性区分）
        if "type" not in elem.attrib:
            elem.clear()
            continue

        name_el = elem.find(f"{NS}name")
        name = name_el.text if name_el is not None else None
        if wanted and (name or "").lower() not in wanted:
            elem.clear()
            continue

        # 主 DrugBank ID（primary="true"）
        db_id = None
        for did in elem.findall(f"{NS}drugbank-id"):
            if did.attrib.get("primary") == "true":
                db_id = did.text
                break
        if db_id is None:
            elem.clear()
            continue

        groups = [g.text for g in elem.findall(f"{NS}groups/{NS}group")]
        avg_mass = _text(elem.find(f"{NS}average-mass"))
        mono_mass = _text(elem.find(f"{NS}monoisotopic-mass"))

        calc = {}
        for prop in elem.findall(f"{NS}calculated-properties/{NS}property"):
            k = _text(prop.find(f"{NS}kind"))
            v = _text(prop.find(f"{NS}value"))
            if k:
                calc[k] = v

        out[db_id] = {
            "name": name,
            "modality": elem.attrib.get("type"),            # small molecule / biotech
            "groups": "; ".join(g for g in groups if g),
            "average_mass": avg_mass,
            "monoisotopic_mass": mono_mass,
            "chemical_formula": calc.get("Molecular Formula"),
            "smiles": calc.get("SMILES"),
            "inchi": calc.get("InChI"),
            "inchikey": calc.get("InChIKey"),
            "weight_average_calc": calc.get("Molecular Weight"),
        }
        elem.clear()
    return out


def _text(el) -> Optional[str]:
    return el.text if el is not None else None


# --------------------------------------------------------------------------- #
def main() -> int:
    print("=" * 64)
    print("抗疟药物属性自动补全  (PubChem + UniChem + ChEMBL)")
    print("=" * 64)
    records = enrich_all()
    write_csv(records, "antimalarial_drugs_enriched.csv")
    write_xlsx(records, "antimalarial_drugs_enriched.xlsx")
    n_hit = sum(1 for r in records if r.pubchem_cid)
    n_db = sum(1 for r in records if r.drugbank_id)
    print(f"\n汇总：{len(records)} 个药物，PubChem 命中 {n_hit}，"
          f"映射到 DrugBank ID {n_db} 个。")
    print("提示：DrugBank 原生 Groups/Modality 字段请用 parse_drugbank_xml() "
          "在本地解析官方授权 XML。")
    return 0


if __name__ == "__main__":
    sys.exit(main())