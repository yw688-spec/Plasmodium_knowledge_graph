:- encoding(utf8).
% 抗疟药物知识库 —— 由 xlsx_to_prolog.py 自动生成
% 源文件: antimalarial_drugs_enriched_v6_25_EN.xlsx
% 生成时间: 2026-06-29 17:55:25
% 药物条目: 29
% 请勿手工编辑；改数据请改 xlsx 后重跑转换器。

:- discontiguous drug/1.
:- discontiguous drug_label/2.
:- discontiguous drug_status/2.
:- discontiguous drug_attr/3.
:- discontiguous drug_class/3.
:- discontiguous drug_moa/3.
:- discontiguous drug_action_type/2.
:- discontiguous drug_target/3.
:- discontiguous drug_target_xref/3.
:- discontiguous drug_target_organism/2.
:- discontiguous acts_on_stage/2.
:- discontiguous drug_stage_raw/2.
:- discontiguous drug_resistance/3.
:- discontiguous drug_warning/2.
:- discontiguous drug_indication/2.
:- discontiguous drug_admet/3.
:- discontiguous drug_chem/3.
:- discontiguous drug_xref/3.
:- discontiguous drug_note/2.

% ===== Chloroquine (chloroquine) =====
drug(chloroquine).
drug_label(chloroquine, 'Chloroquine').
drug_status(chloroquine, approved).
drug_attr(chloroquine, trade_name, 'Aralen').
drug_attr(chloroquine, approval_year, 1949).
drug_attr(chloroquine, modality, 'Small molecule').
drug_attr(chloroquine, dev_status, 'approved').
drug_attr(chloroquine, action_type, 'INHIBITOR').
drug_attr(chloroquine, iupac_name, '4-N-(7-chloroquinolin-4-yl)-1-N,1-N-diethylpentane-1,4-diamine').
drug_class(chloroquine, review, '4-Aminoquinoline').
drug_class(chloroquine, cn, 'Quinolines').
drug_class(chloroquine, atc, 'Aminoquinolines (P01BA)').
drug_moa(chloroquine, review, 'Binds heme and blocks hemozoin formation; accumulation of free heme kills the parasite').
drug_moa(chloroquine, chembl, 'Hemozoin formation inhibitor / Heme polymerase inhibitor').
drug_target(chloroquine, 'Ferriprotoporphyrin IX PfCRT (Plasmodium falciparum chloroquine resistance transporter)', chembl).
drug_target_organism(chloroquine, 'Plasmodium falciparum').
drug_target_xref(chloroquine, uniprot, 'Q9N623').
drug_target_xref(chloroquine, chembl, 'CHEMBL76').
drug_action_type(chloroquine, 'INHIBITOR').
drug_resistance(chloroquine, 'PfCRT gene mutations (K76T is the key mutation), increasing chloroquine efflux from the digestive vacuole; PfMDR1 (P-glycoprotein homolog) amplification/mutation', 'Fidock DA,et,al.Mutations in the P. falciparum digestive vacuole transmembrane protein PfCRT and evidence for their role in chloroquine resistance.  Mol Cell. 2000 Oct;6(4):861-71. doi: 10.1016/s1097-2765(05)00077-8.').
drug_warning(chloroquine, 'irreversible retinal damage/visual disturbances/nyctalopia/nerve type deafness,et,al.').
drug_indication(chloroquine, 'malaria (max phase 4)').
drug_indication(chloroquine, 'glioblastoma multiforme (max phase 3)').
drug_indication(chloroquine, 'Plasmodium vivax malaria (max phase 3)').
drug_indication(chloroquine, 'Plasmodium falciparum malaria (max phase 3)').
drug_indication(chloroquine, 'rheumatoid arthritis (max phase 3)').
drug_indication(chloroquine, 'pregnancy (max phase 3)').
drug_admet(chloroquine, alogp, 4.81).
drug_admet(chloroquine, psa, 28.16).
drug_admet(chloroquine, hbd, 1).
drug_admet(chloroquine, hba, 3).
drug_admet(chloroquine, ro5_violations, 0).
drug_chem(chloroquine, formula, 'C18H26ClN3').
drug_chem(chloroquine, weight_average, 319.9).
drug_chem(chloroquine, monoisotopic_mass, 319.1815).
drug_chem(chloroquine, exact_mass, 319.1815).
drug_chem(chloroquine, smiles_isomeric, 'CCN(CC)CCCC(C)NC1=C2C=CC(=CC2=NC=C1)Cl').
drug_chem(chloroquine, smiles_canonical, 'CCN(CC)CCCC(C)NC1=C2C=CC(=CC2=NC=C1)Cl').
drug_chem(chloroquine, inchi, 'InChI=1S/C18H26ClN3/c1-4-22(5-2)12-6-7-14(3)21-17-10-11-20-18-13-15(19)8-9-16(17)18/h8-11,13-14H,4-7,12H2,1-3H3,(H,20,21)').
drug_chem(chloroquine, inchikey, 'WHTVZRBIWZFKQO-UHFFFAOYSA-N').
drug_xref(chloroquine, drugbank, 'DB00608').
drug_xref(chloroquine, chembl, 'CHEMBL76').
drug_xref(chloroquine, pubchem, 2719).

% ===== Primaquine (primaquine) =====
drug(primaquine).
drug_label(primaquine, 'Primaquine').
drug_status(primaquine, approved).
drug_attr(primaquine, trade_name, 'Primaquine phosphate').
drug_attr(primaquine, approval_year, 1952).
drug_attr(primaquine, modality, 'Small molecule').
drug_attr(primaquine, dev_status, 'approved').
drug_attr(primaquine, action_type, 'OXIDATIVE STRESS INDUCER').
drug_attr(primaquine, iupac_name, '4-N-(6-methoxyquinolin-8-yl)pentane-1,4-diamine').
drug_class(primaquine, review, '8-Aminoquinoline').
drug_class(primaquine, cn, 'Quinolines').
drug_class(primaquine, atc, 'Aminoquinolines (P01BA)').
drug_moa(primaquine, review, 'Clears hepatic hypnozoites and gametocytes; metabolites disrupt mitochondrial electron transport').
drug_moa(primaquine, chembl, 'Antimalarial (Hypnozoitocidal / Gametocytocidal)').
drug_target(primaquine, 'Mitochondrial electron transport chain (Cytochrome bc1 complex, ubiquinol)', chembl).
drug_target_organism(primaquine, 'Plasmodium vivax/P.ovale/P.falciparum').
drug_target_xref(primaquine, uniprot, 'Not yet established').
drug_target_xref(primaquine, chembl, 'CHEMBL506').
drug_action_type(primaquine, 'OXIDATIVE STRESS INDUCER').
drug_resistance(primaquine, 'CYP2D6 metabolic polymorphism reduces efficacy (host factor); few reports of parasite-related resistance', '\\').
drug_warning(primaquine, 'Contraindicated in patients with G6PD deficiency  (causing severe hemolytic anemia); Methemoglobinemia Gastrointestinal discomfort;  Contraindicated during pregnancy').
drug_indication(primaquine, 'malaria (max phase 4)').
drug_indication(primaquine, 'Plasmodium falciparum malaria (max phase 3)').
drug_indication(primaquine, 'Plasmodium vivax malaria (max phase 3)').
drug_indication(primaquine, 'pneumocystosis (max phase 3)').
drug_indication(primaquine, 'COVID-19 (max phase 2)').
drug_indication(primaquine, 'obesity (max phase 1)').
drug_admet(primaquine, alogp, 2.78).
drug_admet(primaquine, psa, 60.17).
drug_admet(primaquine, hbd, 2).
drug_admet(primaquine, hba, 4).
drug_admet(primaquine, ro5_violations, 0).
drug_chem(primaquine, formula, 'C15H21N3O').
drug_chem(primaquine, weight_average, 259.35).
drug_chem(primaquine, monoisotopic_mass, 259.1685).
drug_chem(primaquine, exact_mass, 259.1685).
drug_chem(primaquine, smiles_isomeric, 'CC(CCCN)NC1=C2C(=CC(=C1)OC)C=CC=N2').
drug_chem(primaquine, smiles_canonical, 'CC(CCCN)NC1=C2C(=CC(=C1)OC)C=CC=N2').
drug_chem(primaquine, inchi, 'InChI=1S/C15H21N3O/c1-11(5-3-7-16)18-14-10-13(19-2)9-12-6-4-8-17-15(12)14/h4,6,8-11,18H,3,5,7,16H2,1-2H3').
drug_chem(primaquine, inchikey, 'INDBQLZJXZLFIT-UHFFFAOYSA-N').
drug_xref(primaquine, drugbank, 'DB01087').
drug_xref(primaquine, chembl, 'CHEMBL506').
drug_xref(primaquine, pubchem, 4908).

% ===== Hydroxychloroquine (hydroxychloroquine) =====
drug(hydroxychloroquine).
drug_label(hydroxychloroquine, 'Hydroxychloroquine').
drug_status(hydroxychloroquine, approved).
drug_attr(hydroxychloroquine, trade_name, 'Plaquenil').
drug_attr(hydroxychloroquine, approval_year, 1955).
drug_attr(hydroxychloroquine, modality, 'Small molecule').
drug_attr(hydroxychloroquine, dev_status, 'approved').
drug_attr(hydroxychloroquine, action_type, 'INHIBITOR/ANTAGONIST').
drug_attr(hydroxychloroquine, iupac_name, '2-[4-[(7-chloroquinolin-4-yl)amino]pentyl-ethylamino]ethanol').
drug_class(hydroxychloroquine, review, '4-Aminoquinoline').
drug_class(hydroxychloroquine, cn, 'Quinolines').
drug_class(hydroxychloroquine, atc, 'Aminoquinolines (P01BA)').
drug_moa(hydroxychloroquine, review, 'Same as chloroquine: inhibits hemozoin formation').
drug_moa(hydroxychloroquine, chembl, 'Hemozoin formation inhibitor').
drug_target(hydroxychloroquine, 'Heme (ferriprotoporphyrin IX) Hemozoin formation', chembl).
drug_target_organism(hydroxychloroquine, 'P. falciparum/P. malariae/P. vivax/P. ovale').
drug_target_xref(hydroxychloroquine, uniprot, 'The parasite-related mechanism is not yet established').
drug_target_xref(hydroxychloroquine, chembl, 'CHEMBL1535').
drug_action_type(hydroxychloroquine, 'INHIBITOR/ANTAGONIST').
drug_resistance(hydroxychloroquine, 'Same as chloroquine: PfCRT K76T mutation; PfMDR1 mutation', 'Slater AF.  Chloroquine: mechanism of drug action and resistance in Plasmodium falciparum.  Pharmacol Ther. 1993 Feb-Mar;57(2-3):203-35. doi: 10.1016/0163-7258(93)90056-j.').
drug_warning(hydroxychloroquine, 'Retinopathy (Regular eye examinations are required)  Cardiomyopathy QT extension  Hypoglycemia  Warning of Improper Use during COVID-19 (FDA EUA Withdrawal)').
drug_indication(hydroxychloroquine, 'malaria (max phase 4)').
drug_indication(hydroxychloroquine, 'pulmonary sarcoidosis (max phase 3)').
drug_indication(hydroxychloroquine, 'rheumatoid arthritis (max phase 3)').
drug_indication(hydroxychloroquine, 'Sjogren syndrome (max phase 3)').
drug_indication(hydroxychloroquine, 'chronic lymphocytic leukemia (max phase 2)').
drug_indication(hydroxychloroquine, 'hepatocellular carcinoma (max phase 2)').
drug_admet(hydroxychloroquine, alogp, 3.78).
drug_admet(hydroxychloroquine, psa, 48.39).
drug_admet(hydroxychloroquine, hbd, 2).
drug_admet(hydroxychloroquine, hba, 4).
drug_admet(hydroxychloroquine, ro5_violations, 0).
drug_chem(hydroxychloroquine, formula, 'C18H26ClN3O').
drug_chem(hydroxychloroquine, weight_average, 335.9).
drug_chem(hydroxychloroquine, monoisotopic_mass, 335.1764).
drug_chem(hydroxychloroquine, exact_mass, 335.1764).
drug_chem(hydroxychloroquine, smiles_isomeric, 'CCN(CCCC(C)NC1=C2C=CC(=CC2=NC=C1)Cl)CCO').
drug_chem(hydroxychloroquine, smiles_canonical, 'CCN(CCCC(C)NC1=C2C=CC(=CC2=NC=C1)Cl)CCO').
drug_chem(hydroxychloroquine, inchi, 'InChI=1S/C18H26ClN3O/c1-3-22(11-12-23)10-4-5-14(2)21-17-8-9-20-18-13-15(19)6-7-16(17)18/h6-9,13-14,23H,3-5,10-12H2,1-2H3,(H,20,21)').
drug_chem(hydroxychloroquine, inchikey, 'XXSMGPRMXLTPCZ-UHFFFAOYSA-N').
drug_xref(hydroxychloroquine, drugbank, 'DB01611').
drug_xref(hydroxychloroquine, chembl, 'CHEMBL1535').
drug_xref(hydroxychloroquine, pubchem, 3652).

% ===== Sulfadoxine (sulfadoxine) =====
drug(sulfadoxine).
drug_label(sulfadoxine, 'Sulfadoxine').
drug_status(sulfadoxine, approved).
drug_attr(sulfadoxine, trade_name, 'Fansidar (combination drug)').
drug_attr(sulfadoxine, approval_year, 1983).
drug_attr(sulfadoxine, modality, 'Small molecule').
drug_attr(sulfadoxine, dev_status, 'approved').
drug_attr(sulfadoxine, action_type, 'INHIBITOR').
drug_attr(sulfadoxine, iupac_name, '4-amino-N-(5,6-dimethoxypyrimidin-4-yl)benzenesulfonamide').
drug_class(sulfadoxine, review, 'Sulfonamide').
drug_class(sulfadoxine, cn, 'Antifolates').
drug_class(sulfadoxine, atc, 'Sulfonamides （QJ01EQ）').
drug_moa(sulfadoxine, review, 'Inhibits DHPS, blocking the upstream step of de novo folate synthesis').
drug_moa(sulfadoxine, chembl, 'Dihydropteroate synthetase inhibitor').
drug_target(sulfadoxine, 'Dihydropteroate synthetase', chembl).
drug_target_organism(sulfadoxine, 'Plasmodium falciparum').
drug_target_xref(sulfadoxine, uniprot, 'Q25704').
drug_target_xref(sulfadoxine, chembl, 'CHEMBL2013').
drug_action_type(sulfadoxine, 'INHIBITOR').
drug_resistance(sulfadoxine, 'PfDHPS point mutations: S436A/F, A437G, K540E, A581G, A613S/T, etc.', 'Triglia T, et,al.  Mutations in dihydropteroate synthase are responsible for sulfone and sulfonamide resistance in Plasmodium falciparum.  Proc Natl Acad Sci U S A. 1997 Dec 9;94(25):13944-9.  doi: 10.1073/pnas.94.25.13944.   Naidoo I, Roper C.  Mapping \'partially resistant\', \'fully resistant\', and \'super resistant\' malaria.  Trends Parasitol. 2013 Oct;29(10):505-15.  doi: 10.1016/j.pt.2013.08.002. Epub 2013 Sep 9.').
drug_warning(sulfadoxine, 'Stevens-Johnson syndrome Toxic epidermal necrolysis Severe adverse skin reactions; Hematological toxicity (agranulocytosis)').
drug_indication(sulfadoxine, 'malaria (max phase 3)').
drug_indication(sulfadoxine, 'pregnancy (max phase 3)').
drug_indication(sulfadoxine, 'anemia (phenotype) (max phase 3)').
drug_indication(sulfadoxine, 'Plasmodium falciparum malaria (max phase 3)').
drug_indication(sulfadoxine, 'Plasmodium vivax malaria (max phase 3)').
drug_indication(sulfadoxine, 'HIV infection (max phase 3)').
drug_admet(sulfadoxine, alogp, 0.88).
drug_admet(sulfadoxine, psa, 116.43).
drug_admet(sulfadoxine, hbd, 2).
drug_admet(sulfadoxine, hba, 7).
drug_admet(sulfadoxine, ro5_violations, 0).
drug_chem(sulfadoxine, formula, 'C12H14N4O4S').
drug_chem(sulfadoxine, weight_average, 310.33).
drug_chem(sulfadoxine, monoisotopic_mass, 310.0736).
drug_chem(sulfadoxine, exact_mass, 310.0736).
drug_chem(sulfadoxine, smiles_isomeric, 'COC1=C(N=CN=C1OC)NS(=O)(=O)C2=CC=C(C=C2)N').
drug_chem(sulfadoxine, smiles_canonical, 'COC1=C(N=CN=C1OC)NS(=O)(=O)C2=CC=C(C=C2)N').
drug_chem(sulfadoxine, inchi, 'InChI=1S/C12H14N4O4S/c1-19-10-11(14-7-15-12(10)20-2)16-21(17,18)9-5-3-8(13)4-6-9/h3-7H,13H2,1-2H3,(H,14,15,16)').
drug_chem(sulfadoxine, inchikey, 'PJSFRIWCGOHTNF-UHFFFAOYSA-N').
drug_xref(sulfadoxine, drugbank, 'DB01299').
drug_xref(sulfadoxine, chembl, 'CHEMBL1539').
drug_xref(sulfadoxine, pubchem, 17134).

% ===== Pyrimethamine (pyrimethamine) =====
drug(pyrimethamine).
drug_label(pyrimethamine, 'Pyrimethamine').
drug_status(pyrimethamine, approved).
drug_attr(pyrimethamine, trade_name, 'Fansidar (combination drug)').
drug_attr(pyrimethamine, approval_year, 1983).
drug_attr(pyrimethamine, modality, 'Small molecule').
drug_attr(pyrimethamine, dev_status, 'approved').
drug_attr(pyrimethamine, action_type, 'INHIBITOR').
drug_attr(pyrimethamine, iupac_name, '5-(4-chlorophenyl)-6-ethylpyrimidine-2,4-diamine').
drug_class(pyrimethamine, review, 'Diaminopyrimidine').
drug_class(pyrimethamine, cn, 'Antifolates').
drug_class(pyrimethamine, atc, 'Diaminopyrimidines (P01BD)').
drug_moa(pyrimethamine, review, 'Inhibits DHFR, blocking tetrahydrofolate production').
drug_moa(pyrimethamine, chembl, 'Dihydrofolate reductase inhibitor').
drug_target(pyrimethamine, 'Bifunctional dihydrofolate reductase-thymidylate synthase', chembl).
drug_target_organism(pyrimethamine, 'Plasmodium falciparum K1').
drug_target_xref(pyrimethamine, uniprot, 'P13922').
drug_target_xref(pyrimethamine, chembl, 'CHEMBL3565').
drug_action_type(pyrimethamine, 'INHIBITOR').
drug_resistance(pyrimethamine, 'PfDHFR point mutations: N51I, C59R, S108N (core mutation), I164L; accumulated mutations lead to high-level resistance', 'Sastu UR,et,al. Mutations of pvdhfr and pvdhps genes in vivax endemic-malaria areas in Kota Marudu and Kalabakan, Sabah. Malar J. 2016 Feb 5;15:63.  doi: 10.1186/s12936-016-1109-9.').
drug_warning(pyrimethamine, 'Hematological toxicity caused by folic acid deficiency (megaloblastic anemia, leukopenia, thrombocytopenia);  Teratogenicity (contraindicated in the early stage of pregnancy)  Folic acid supplementation is required').
drug_indication(pyrimethamine, 'malaria (max phase 4)').
drug_indication(pyrimethamine, 'toxoplasmosis (max phase 4)').
drug_indication(pyrimethamine, 'pregnancy (max phase 3)').
drug_indication(pyrimethamine, 'anemia (phenotype) (max phase 3)').
drug_indication(pyrimethamine, 'congenital toxoplasmosis (max phase 3)').
drug_indication(pyrimethamine, 'Plasmodium falciparum malaria (max phase 3)').
drug_admet(pyrimethamine, alogp, 2.52).
drug_admet(pyrimethamine, psa, 77.82).
drug_admet(pyrimethamine, hbd, 2).
drug_admet(pyrimethamine, hba, 4).
drug_admet(pyrimethamine, ro5_violations, 0).
drug_chem(pyrimethamine, formula, 'C12H13ClN4').
drug_chem(pyrimethamine, weight_average, 248.71).
drug_chem(pyrimethamine, monoisotopic_mass, 248.0829).
drug_chem(pyrimethamine, exact_mass, 248.0829).
drug_chem(pyrimethamine, smiles_isomeric, 'CCC1=C(C(=NC(=N1)N)N)C2=CC=C(C=C2)Cl').
drug_chem(pyrimethamine, smiles_canonical, 'CCC1=C(C(=NC(=N1)N)N)C2=CC=C(C=C2)Cl').
drug_chem(pyrimethamine, inchi, 'InChI=1S/C12H13ClN4/c1-2-9-10(11(14)17-12(15)16-9)7-3-5-8(13)6-4-7/h3-6H,2H2,1H3,(H4,14,15,16,17)').
drug_chem(pyrimethamine, inchikey, 'WKSAUQYGYAYLPV-UHFFFAOYSA-N').
drug_xref(pyrimethamine, drugbank, 'DB00205').
drug_xref(pyrimethamine, chembl, 'CHEMBL36').
drug_xref(pyrimethamine, pubchem, 4993).

% ===== Mefloquine (mefloquine) =====
drug(mefloquine).
drug_label(mefloquine, 'Mefloquine').
drug_status(mefloquine, approved).
drug_attr(mefloquine, trade_name, 'Lariam').
drug_attr(mefloquine, approval_year, 1989).
drug_attr(mefloquine, modality, 'Small molecule').
drug_attr(mefloquine, dev_status, 'approved').
drug_attr(mefloquine, action_type, 'INHIBITOR').
drug_attr(mefloquine, iupac_name, '[2,8-bis(trifluoromethyl)quinolin-4-yl]-piperidin-2-ylmethanol').
drug_class(mefloquine, review, 'Methanolquinoline').
drug_class(mefloquine, cn, 'Quinolines').
drug_class(mefloquine, atc, 'Methanolquinolines (P01BC)').
drug_moa(mefloquine, review, 'Presumed to inhibit hemozoin formation/disrupt membrane structure').
drug_moa(mefloquine, chembl, 'Hemozoin formation inhibitor').
drug_target(mefloquine, 'PfMDR1 (P-glycoprotein homolog 1) Hemozoin formation', chembl).
drug_target_organism(mefloquine, 'Plasmodium falciparum').
drug_target_xref(mefloquine, uniprot, 'P13568').
drug_target_xref(mefloquine, chembl, 'CHEMBL416956').
drug_action_type(mefloquine, 'INHIBITOR').
drug_resistance(mefloquine, 'PfMDR1 gene amplification (increased copy number) is the main mechanism; PfMDR1 N86Y, Y184F and other mutations; PfKelch13 mutations may have cross-effects', 'Sidhu AB,et,al.  pfmdr1 mutations contribute to quinine resistance and enhance mefloquine and artemisinin sensitivity in Plasmodium falciparum.  Mol Microbiol. 2005 Aug;57(4):913-26.  doi: 10.1111/j.1365-2958.2005.04729.x.').
drug_warning(mefloquine, 'FDA Black Box Warning: Severe mental and neurological side effects (depression, anxiety, psychosis, suicidal tendencies);  It may last for several months or be permanent;  Dizziness arrhythmology').
drug_indication(mefloquine, 'malaria (max phase 4)').
drug_indication(mefloquine, 'Plasmodium falciparum malaria (max phase 3)').
drug_indication(mefloquine, 'urinary schistosomiasis (max phase 3)').
drug_indication(mefloquine, 'viral pneumonia (max phase 2)').
drug_indication(mefloquine, 'respiratory failure (max phase 2)').
drug_indication(mefloquine, 'COVID-19 (max phase 2)').
drug_admet(mefloquine, alogp, 4.45).
drug_admet(mefloquine, psa, 45.15).
drug_admet(mefloquine, hbd, 2).
drug_admet(mefloquine, hba, 3).
drug_admet(mefloquine, ro5_violations, 0).
drug_chem(mefloquine, formula, 'C17H16F6N2O').
drug_chem(mefloquine, weight_average, 378.31).
drug_chem(mefloquine, monoisotopic_mass, 378.1167).
drug_chem(mefloquine, exact_mass, 378.1167).
drug_chem(mefloquine, smiles_isomeric, 'C1CCNC(C1)C(C2=CC(=NC3=C2C=CC=C3C(F)(F)F)C(F)(F)F)O').
drug_chem(mefloquine, smiles_canonical, 'C1CCNC(C1)C(C2=CC(=NC3=C2C=CC=C3C(F)(F)F)C(F)(F)F)O').
drug_chem(mefloquine, inchi, 'InChI=1S/C17H16F6N2O/c18-16(19,20)11-5-3-4-9-10(15(26)12-6-1-2-7-24-12)8-13(17(21,22)23)25-14(9)11/h3-5,8,12,15,24,26H,1-2,6-7H2').
drug_chem(mefloquine, inchikey, 'XEEQGYMUWCZPDN-UHFFFAOYSA-N').
drug_xref(mefloquine, drugbank, 'DB00358').
drug_xref(mefloquine, chembl, 'CHEMBL416956').
drug_xref(mefloquine, pubchem, 4046).

% ===== Atovaquone (atovaquone) =====
drug(atovaquone).
drug_label(atovaquone, 'Atovaquone').
drug_status(atovaquone, approved).
drug_attr(atovaquone, trade_name, 'Malarone (combination drug)').
drug_attr(atovaquone, approval_year, 2000).
drug_attr(atovaquone, modality, 'Small molecule').
drug_attr(atovaquone, dev_status, 'approved').
drug_attr(atovaquone, action_type, 'INHIBITOR').
drug_attr(atovaquone, iupac_name, '3-[4-(4-chlorophenyl)cyclohexyl]-4-hydroxynaphthalene-1,2-dione').
drug_class(atovaquone, review, 'Naphthoquinone').
drug_class(atovaquone, cn, 'Naphthoquinones').
drug_class(atovaquone, atc, 'Other agents against amoebiasis and other protozoal diseases (P01AX)').
drug_moa(atovaquone, review, 'Binds the Qo site of cytochrome bc1, collapsing the mitochondrial membrane potential').
drug_moa(atovaquone, chembl, 'Cytochrome b inhibitor').
drug_target(atovaquone, 'Cytochrome bc1 complex (Complex III) cytochrome b (PfCytb)', chembl).
drug_target_organism(atovaquone, 'Plasmodium falciparum').
drug_target_xref(atovaquone, uniprot, 'Q02768').
drug_target_xref(atovaquone, chembl, 'CHEMBL1450').
drug_action_type(atovaquone, 'INHIBITOR').
drug_resistance(atovaquone, 'PfCytb point mutations: Y268S/C/N (most common); M133I, L271V, etc.; a single mutation can confer high-level resistance', 'Korsinczky M,et,al.  Mutations in Plasmodium falciparum cytochrome b that are associated with atovaquone resistance are located at a putative drug-binding site.  Antimicrob Agents Chemother. 2000 Aug;44(8):2100-8.  doi: 10.1128/AAC.44.8.2100-2108.2000.').
drug_warning(atovaquone, 'Resistance is highly likely to occur when used alone (it must be combined with proguanil); Gastrointestinal reactions;  Rash;  Elevated liver enzymes').
drug_indication(atovaquone, 'pneumocystosis (max phase 4)').
drug_indication(atovaquone, 'malaria (max phase 4)').
drug_indication(atovaquone, 'amebiasis (max phase 4)').
drug_indication(atovaquone, 'Plasmodium falciparum malaria (max phase 3)').
drug_indication(atovaquone, 'cerebral toxoplasmosis (max phase 2)').
drug_indication(atovaquone, 'COVID-19 (max phase 2)').
drug_admet(atovaquone, alogp, 5.51).
drug_admet(atovaquone, psa, 54.37).
drug_admet(atovaquone, hbd, 1).
drug_admet(atovaquone, hba, 3).
drug_admet(atovaquone, ro5_violations, 1).
drug_chem(atovaquone, formula, 'C22H19ClO3').
drug_chem(atovaquone, weight_average, 366.8).
drug_chem(atovaquone, monoisotopic_mass, 366.1023).
drug_chem(atovaquone, exact_mass, 366.1023).
drug_chem(atovaquone, smiles_isomeric, 'C1CC(CCC1C2=CC=C(C=C2)Cl)C3=C(C4=CC=CC=C4C(=O)C3=O)O').
drug_chem(atovaquone, smiles_canonical, 'C1CC(CCC1C2=CC=C(C=C2)Cl)C3=C(C4=CC=CC=C4C(=O)C3=O)O').
drug_chem(atovaquone, inchi, 'InChI=1S/C22H19ClO3/c23-16-11-9-14(10-12-16)13-5-7-15(8-6-13)19-20(24)17-3-1-2-4-18(17)21(25)22(19)26/h1-4,9-13,15,24H,5-8H2').
drug_chem(atovaquone, inchikey, 'BSJMWHQBCZFXBR-UHFFFAOYSA-N').
drug_xref(atovaquone, chembl, 'CHEMBL1450').
drug_xref(atovaquone, pubchem, 74989).

% ===== Proguanil (proguanil) =====
drug(proguanil).
drug_label(proguanil, 'Proguanil').
drug_status(proguanil, approved).
drug_attr(proguanil, trade_name, 'Malarone (combination drug)').
drug_attr(proguanil, approval_year, 2000).
drug_attr(proguanil, modality, 'Small molecule').
drug_attr(proguanil, dev_status, 'approved').
drug_attr(proguanil, action_type, 'INHIBITOR').
drug_attr(proguanil, iupac_name, '(1E)-1-[amino-(4-chloroanilino)methylidene]-2-propan-2-ylguanidine').
drug_class(proguanil, review, 'Biguanide').
drug_class(proguanil, cn, 'Antifolates').
drug_class(proguanil, atc, 'Biguanides (P01BB)').
drug_moa(proguanil, review, 'Prodrug converted to cycloguanil, which inhibits DHFR; also potentiates atovaquone-induced depolarization').
drug_moa(proguanil, chembl, 'Dihydrofolate reductase inhibitor').
drug_target(proguanil, 'Dihydrofolate reductase (DHFR, PfDHFR)', chembl).
drug_target_organism(proguanil, 'Plasmodium falciparum').
drug_target_xref(proguanil, uniprot, 'P13922').
drug_target_xref(proguanil, chembl, 'CHEMBL1377').
drug_action_type(proguanil, 'INHIBITOR').
drug_resistance(proguanil, 'PfDHFR mutations (same as pyrimethamine): S108N, etc.; CYP2C19 poor metabolizers show reduced cycloguanil formation', 'Sirawaraporn W, et,al.  Antifolate-resistant mutants of Plasmodium falciparum dihydrofolate reductase.  Proc Natl Acad Sci U S A. 1997 Feb 18;94(4):1124-9.  doi: 10.1073/pnas.94.4.1124.  Herrlin K,et,al.  Slow chloroguanide metabolism in Tanzanians compared with white subjects and Asian subjects confirms a decreased CYP2C19 activity in relation to genotype.  Clin Pharmacol Ther. 2000 Aug;68(2):189-98.  doi: 10.1067/mcp.2000.108583.').
drug_warning(proguanil, 'Oral ulcer; Gastrointestinal discomfort;  Rare hematological adverse reactions;  The influence of CYP2C19 metabolic polymorphism').
drug_indication(proguanil, 'malaria (max phase 4)').
drug_indication(proguanil, 'Plasmodium falciparum malaria (max phase 3)').
drug_indication(proguanil, 'infection (max phase 2)').
drug_indication(proguanil, 'gastroesophageal reflux disease (max phase 1)').
drug_admet(proguanil, alogp, 2.21).
drug_admet(proguanil, psa, 83.79).
drug_admet(proguanil, hbd, 5).
drug_admet(proguanil, hba, 2).
drug_admet(proguanil, ro5_violations, 0).
drug_chem(proguanil, formula, 'C11H16ClN5').
drug_chem(proguanil, weight_average, 253.73).
drug_chem(proguanil, monoisotopic_mass, 253.1094).
drug_chem(proguanil, exact_mass, 253.1094).
drug_chem(proguanil, smiles_isomeric, 'CC(C)N=C(N)/N=C(\\N)/NC1=CC=C(C=C1)Cl').
drug_chem(proguanil, smiles_canonical, 'CC(C)N=C(N)N=C(N)NC1=CC=C(C=C1)Cl').
drug_chem(proguanil, inchi, 'InChI=1S/C11H16ClN5/c1-7(2)15-10(13)17-11(14)16-9-5-3-8(12)4-6-9/h3-7H,1-2H3,(H5,13,14,15,16,17)').
drug_chem(proguanil, inchikey, 'SSOLNOMRVKKSON-UHFFFAOYSA-N').
drug_xref(proguanil, drugbank, 'DB01131').
drug_xref(proguanil, chembl, 'CHEMBL1377').
drug_xref(proguanil, pubchem, 6178111).

% ===== Quinine (quinine) =====
drug(quinine).
drug_label(quinine, 'Quinine').
drug_status(quinine, approved).
drug_attr(quinine, trade_name, 'Qualaquine').
drug_attr(quinine, approval_year, 2005).
drug_attr(quinine, modality, 'Small molecule').
drug_attr(quinine, dev_status, 'approved').
drug_attr(quinine, action_type, 'INHIBITOR').
drug_attr(quinine, iupac_name, '(R)-[(2S,4S,5R)-5-ethenyl-1-azabicyclo[2.2.2]octan-2-yl]-(6-methoxyquinolin-4-yl)methanol').
drug_class(quinine, review, 'Methanolquinoline (alkaloid)').
drug_class(quinine, cn, 'Quinolines').
drug_class(quinine, atc, 'Quinine and derivatives (M09AA)').
drug_moa(quinine, review, 'Inhibits hemozoin formation; can intercalate DNA').
drug_moa(quinine, chembl, 'Hemozoin formation inhibitor').
drug_target(quinine, 'Heme (ferriprotoporphyrin IX) Hemozoin formation', chembl).
drug_target_organism(quinine, 'Plasmodium falciparum').
drug_target_xref(quinine, uniprot, 'Q9N623').
drug_target_xref(quinine, uniprot, 'P13568').
drug_target_xref(quinine, chembl, 'CHEMBL170').
drug_action_type(quinine, 'INHIBITOR').
drug_resistance(quinine, 'PfCRT mutations (partially but not fully overlapping with chloroquine) PfMDR1 N86Y mutation PfNHE (Na⁺/H⁺ exchanger, PfNHE-1) ms4760 microsatellite polymorphism', 'Ferdig MT,et,al. Dissecting the loci of low-level quinine resistance in malaria parasites. Mol Microbiol. 2004 May;52(4):985-97. doi: 10.1111/j.1365-2958.2004.04035.x. PMID: 15130119.').
drug_warning(quinine, 'cinchonism: tinnitus, headache, blurred vision, nausea; QT extension  Hypoglycemia (stimulating insulin secretion)  Thrombocytopenic purpura The FDA restricts over-the-counter use').
drug_indication(quinine, 'malaria (max phase 4)').
drug_indication(quinine, 'Plasmodium falciparum malaria (max phase 3)').
drug_indication(quinine, 'Chronic pain (max phase 2)').
drug_indication(quinine, 'Immunodeficiency (max phase 2)').
drug_indication(quinine, 'COVID-19 (max phase 2)').
drug_admet(quinine, alogp, 3.17).
drug_admet(quinine, psa, 45.59).
drug_admet(quinine, hbd, 1).
drug_admet(quinine, hba, 4).
drug_admet(quinine, ro5_violations, 0).
drug_chem(quinine, formula, 'C20H24N2O2').
drug_chem(quinine, weight_average, 324.4).
drug_chem(quinine, monoisotopic_mass, 324.1838).
drug_chem(quinine, exact_mass, 324.1838).
drug_chem(quinine, smiles_isomeric, 'COC1=CC2=C(C=CN=C2C=C1)[C@H]([C@@H]3C[C@@H]4CCN3C[C@@H]4C=C)O').
drug_chem(quinine, smiles_canonical, 'COC1=CC2=C(C=CN=C2C=C1)C(C3CC4CCN3CC4C=C)O').
drug_chem(quinine, inchi, 'InChI=1S/C20H24N2O2/c1-3-13-12-22-9-7-14(13)10-19(22)20(23)16-6-8-21-18-5-4-15(24-2)11-17(16)18/h3-6,8,11,13-14,19-20,23H,1,7,9-10,12H2,2H3/t13-,14-,19-,20+/m0/s1').
drug_chem(quinine, inchikey, 'LOUPRKONTZGTKE-WZBLMQSHSA-N').
drug_xref(quinine, drugbank, 'DB00468').
drug_xref(quinine, chembl, 'CHEMBL170').
drug_xref(quinine, pubchem, 3034034).

% ===== Artemether (artemether) =====
drug(artemether).
drug_label(artemether, 'Artemether').
drug_status(artemether, approved).
drug_attr(artemether, trade_name, 'Coartem (combination drug)').
drug_attr(artemether, approval_year, 2009).
drug_attr(artemether, modality, 'Small molecule').
drug_attr(artemether, dev_status, 'approved').
drug_attr(artemether, action_type, 'INHIBITOR').
drug_attr(artemether, iupac_name, '(1R,4S,5R,8S,9R,10S,12R,13R)-10-methoxy-1,5,9-trimethyl-11,14,15,16-tetraoxatetracyclo[10.3.1.04,13.08,13]hexadecane').
drug_class(artemether, review, 'Artemisinin').
drug_class(artemether, cn, 'Artemisinins').
drug_class(artemether, atc, 'Artemisinin and derivatives, plain (P01BE)').
drug_moa(artemether, review, 'The endoperoxide bridge is activated by Fe2+ to generate free radicals that alkylate parasite proteins').
drug_moa(artemether, chembl, 'Ferriprotoporphyrin IX inhibitor').
drug_target(artemether, 'Ferriprotoporphyrin IX', chembl).
drug_target_organism(artemether, 'Plasmodium falciparum').
drug_target_xref(artemether, uniprot, 'Q8IBA9').
drug_target_xref(artemether, uniprot, 'Q8I2H6').
drug_target_xref(artemether, chembl, 'CHEMBL566534').
drug_action_type(artemether, 'INHIBITOR').
drug_resistance(artemether, 'PfKelch13 (K13) propeller-domain mutations: C580Y (most common in Southeast Asia), R539T, Y493H, I543T, R561H, P574L, etc.; increase ring-stage survival', 'Ariey F,et,al. A molecular marker of artemisinin-resistant Plasmodium falciparum malaria. Nature. 2014 Jan 2;505(7481):50-5. doi: 10.1038/nature12876. Epub 2013 Dec 18.').
drug_warning(artemether, 'Neurotoxicity (high doses in animal models); Cardiotoxicity (prolonged QT); Embryonal toxicity (animal) It should not be used alone to prevent drug resistance').
drug_indication(artemether, 'malaria (max phase 4)').
drug_indication(artemether, 'Plasmodium falciparum malaria (max phase 3)').
drug_indication(artemether, 'Plasmodium vivax malaria (max phase 3)').
drug_indication(artemether, 'Fever (max phase 3)').
drug_indication(artemether, 'urinary schistosomiasis (max phase 2)').
drug_indication(artemether, 'neoplasm (max phase 1)').
drug_admet(artemether, alogp, 2.84).
drug_admet(artemether, psa, 46.15).
drug_admet(artemether, hbd, 0).
drug_admet(artemether, hba, 5).
drug_admet(artemether, ro5_violations, 0).
drug_chem(artemether, formula, 'C16H26O5').
drug_chem(artemether, weight_average, 298.37).
drug_chem(artemether, monoisotopic_mass, 298.178).
drug_chem(artemether, exact_mass, 298.178).
drug_chem(artemether, smiles_isomeric, 'C[C@@H]1CC[C@H]2[C@H]([C@H](O[C@H]3[C@@]24[C@H]1CC[C@](O3)(OO4)C)OC)C').
drug_chem(artemether, smiles_canonical, 'CC1CCC2C(C(OC3C24C1CCC(O3)(OO4)C)OC)C').
drug_chem(artemether, inchi, 'InChI=1S/C16H26O5/c1-9-5-6-12-10(2)13(17-4)18-14-16(12)11(9)7-8-15(3,19-14)20-21-16/h9-14H,5-8H2,1-4H3/t9-,10-,11+,12+,13+,14-,15-,16-/m1/s1').
drug_chem(artemether, inchikey, 'SXYIRMFQILZOAM-HVNFFKDJSA-N').
drug_xref(artemether, drugbank, 'DB06697').
drug_xref(artemether, chembl, 'CHEMBL566534').
drug_xref(artemether, pubchem, 68911).

% ===== Lumefantrine (lumefantrine) =====
drug(lumefantrine).
drug_label(lumefantrine, 'Lumefantrine').
drug_status(lumefantrine, approved).
drug_attr(lumefantrine, trade_name, 'Coartem (combination drug)').
drug_attr(lumefantrine, approval_year, 2009).
drug_attr(lumefantrine, modality, 'Small molecule').
drug_attr(lumefantrine, dev_status, 'approved').
drug_attr(lumefantrine, action_type, 'INHIBITOR').
drug_attr(lumefantrine, iupac_name, '2-(dibutylamino)-1-[(9Z)-2,7-dichloro-9-[(4-chlorophenyl)methylidene]fluoren-4-yl]ethanol').
drug_class(lumefantrine, review, 'Aryl amino alcohol').
drug_class(lumefantrine, cn, 'Arylaminoalcohols').
drug_class(lumefantrine, atc, 'None (not marketed/no ATC code)').
drug_moa(lumefantrine, review, 'Inhibits hemozoin formation (ACT partner drug)').
drug_moa(lumefantrine, chembl, 'Ferriprotoporphyrin IX inhibitor').
drug_target(lumefantrine, 'Ferriprotoporphyrin IX', chembl).
drug_target_organism(lumefantrine, 'Plasmodium falciparum').
drug_target_xref(lumefantrine, uniprot, 'P13568').
drug_target_xref(lumefantrine, chembl, 'CHEMBL38827').
drug_action_type(lumefantrine, 'INHIBITOR').
drug_resistance(lumefantrine, 'PfMDR1 gene amplification; the PfMDR1 N86 (wild-type) allele is associated with reduced lumefantrine sensitivity; PfCRT K76 (reversion to wild-type) may also have an effect', 'Sisowath C,et,al. In vivo selection of Plasmodium falciparum pfmdr1 86N coding alleles by artemether-lumefantrine (Coartem). J Infect Dis. 2005 Mar 15;191(6):1014-7. doi: 10.1086/427997. Epub 2005 Feb 8.').
drug_warning(lumefantrine, 'QT extension headache  dizzy should be taken with a high-fat diet to ensure absorption Risk of arrhythmia').
drug_indication(lumefantrine, 'malaria (max phase 4)').
drug_indication(lumefantrine, 'Plasmodium falciparum malaria (max phase 3)').
drug_indication(lumefantrine, 'Plasmodium vivax malaria (max phase 3)').
drug_indication(lumefantrine, 'Fever (max phase 3)').
drug_indication(lumefantrine, 'urinary schistosomiasis (max phase 2)').
drug_indication(lumefantrine, 'HIV infection (max phase 1)').
drug_admet(lumefantrine, alogp, 9.15).
drug_admet(lumefantrine, psa, 23.47).
drug_admet(lumefantrine, hbd, 1).
drug_admet(lumefantrine, hba, 2).
drug_admet(lumefantrine, ro5_violations, 2).
drug_chem(lumefantrine, formula, 'C30H32Cl3NO').
drug_chem(lumefantrine, weight_average, 528.9).
drug_chem(lumefantrine, monoisotopic_mass, 527.1549).
drug_chem(lumefantrine, exact_mass, 527.1549).
drug_chem(lumefantrine, smiles_isomeric, 'CCCCN(CCCC)CC(C1=CC(=CC\\2=C1C3=C(/C2=C/C4=CC=C(C=C4)Cl)C=C(C=C3)Cl)Cl)O').
drug_chem(lumefantrine, smiles_canonical, 'CCCCN(CCCC)CC(C1=CC(=CC2=C1C3=C(C2=CC4=CC=C(C=C4)Cl)C=C(C=C3)Cl)Cl)O').
drug_chem(lumefantrine, inchi, 'InChI=1S/C30H32Cl3NO/c1-3-5-13-34(14-6-4-2)19-29(35)28-18-23(33)17-27-25(15-20-7-9-21(31)10-8-20)26-16-22(32)11-12-24(26)30(27)28/h7-12,15-18,29,35H,3-6,13-14,19H2,1-2H3/b25-15-').
drug_chem(lumefantrine, inchikey, 'DYLGFOYVTXJFJP-MYYYXRDXSA-N').
drug_xref(lumefantrine, drugbank, 'DB06708').
drug_xref(lumefantrine, chembl, 'CHEMBL38827').
drug_xref(lumefantrine, pubchem, 6437380).

% ===== Tafenoquine (tafenoquine) =====
drug(tafenoquine).
drug_label(tafenoquine, 'Tafenoquine').
drug_status(tafenoquine, approved).
drug_attr(tafenoquine, phase, 'IV').
drug_attr(tafenoquine, trade_name, 'Krintafel').
drug_attr(tafenoquine, approval_year, 2018).
drug_attr(tafenoquine, modality, 'Small molecule').
drug_attr(tafenoquine, dev_status, 'approved').
drug_attr(tafenoquine, action_type, 'OXIDATIVE STRESS INDUCER MULTI-TARGET').
drug_attr(tafenoquine, iupac_name, '4-N-[2,6-dimethoxy-4-methyl-5-[3-(trifluoromethyl)phenoxy]quinolin-8-yl]pentane-1,4-diamine').
drug_class(tafenoquine, review, '8-Aminoquinoline').
drug_class(tafenoquine, cn, 'Quinolines').
drug_class(tafenoquine, atc, 'Aminoquinolines (P01BA)').
drug_moa(tafenoquine, review, 'A prodrug activated by hepatic CYP2D6; target not yet identified (also listed in Table 2, Phase IV)').
drug_moa(tafenoquine, chembl, 'Antimalarial (8-aminoquinoline); Multi-target mechanisms - oxidative stress, mitochondrial damage').
drug_target(tafenoquine, 'Inhibition hematin polymerization', chembl).
drug_target_organism(tafenoquine, 'Plasmodium vivax / P. falciparum').
drug_target_xref(tafenoquine, uniprot, 'Not yet established').
drug_target_xref(tafenoquine, chembl, 'CHEMBL298470').
drug_action_type(tafenoquine, 'OXIDATIVE STRESS INDUCER MULTI-TARGET').
drug_resistance(tafenoquine, 'No widely reported parasite resistance mechanism to date', '\\').
drug_warning(tafenoquine, 'Patients with G6PD deficiency are contraindicated (G6PD activity should be tested before use).  Methemoglobinemia Mental neurological symptoms (insomnia, abnormal dreams) Hemolytic anemia').
drug_indication(tafenoquine, 'malaria (max phase 4)').
drug_indication(tafenoquine, 'Plasmodium vivax malaria (max phase 3)').
drug_indication(tafenoquine, 'Plasmodium falciparum malaria (max phase 2)').
drug_indication(tafenoquine, 'COVID-19 (max phase 2)').
drug_indication(tafenoquine, 'babesiosis (max phase 2)').
drug_admet(tafenoquine, alogp, 5.91).
drug_admet(tafenoquine, psa, 78.63).
drug_admet(tafenoquine, hbd, 2).
drug_admet(tafenoquine, hba, 6).
drug_admet(tafenoquine, ro5_violations, 1).
drug_chem(tafenoquine, formula, 'C24H28F3N3O3').
drug_chem(tafenoquine, weight_average, 463.5).
drug_chem(tafenoquine, monoisotopic_mass, 463.2083).
drug_chem(tafenoquine, exact_mass, 463.2083).
drug_chem(tafenoquine, smiles_isomeric, 'CC1=CC(=NC2=C1C(=C(C=C2NC(C)CCCN)OC)OC3=CC=CC(=C3)C(F)(F)F)OC').
drug_chem(tafenoquine, smiles_canonical, 'CC1=CC(=NC2=C1C(=C(C=C2NC(C)CCCN)OC)OC3=CC=CC(=C3)C(F)(F)F)OC').
drug_chem(tafenoquine, inchi, 'InChI=1S/C24H28F3N3O3/c1-14-11-20(32-4)30-22-18(29-15(2)7-6-10-28)13-19(31-3)23(21(14)22)33-17-9-5-8-16(12-17)24(25,26)27/h5,8-9,11-13,15,29H,6-7,10,28H2,1-4H3').
drug_chem(tafenoquine, inchikey, 'LBHLFPGPEGDCJG-UHFFFAOYSA-N').
drug_xref(tafenoquine, drugbank, 'DB06608').
drug_xref(tafenoquine, chembl, 'CHEMBL298470').
drug_xref(tafenoquine, pubchem, 115358).

% ===== Artesunate (artesunate) =====
drug(artesunate).
drug_label(artesunate, 'Artesunate').
drug_status(artesunate, approved).
drug_attr(artesunate, trade_name, 'Artesun (IV)').
drug_attr(artesunate, approval_year, 2020).
drug_attr(artesunate, modality, 'Small molecule').
drug_attr(artesunate, dev_status, 'approved').
drug_attr(artesunate, action_type, 'Multi-target non-selective alkylation').
drug_attr(artesunate, iupac_name, '4-oxo-4-[[(1R,4S,5R,8S,9R,10S,12R,13R)-1,5,9-trimethyl-11,14,15,16-tetraoxatetracyclo[10.3.1.04,13.08,13]hexadecan-10-yl]oxy]butanoic acid').
drug_class(artesunate, review, 'Artemisinin').
drug_class(artesunate, cn, 'Artemisinins').
drug_class(artesunate, atc, 'Artemisinin and derivatives, plain (P01BE)').
drug_moa(artesunate, review, 'Water-soluble prodrug converted to dihydroartemisinin; endoperoxide free-radical mechanism').
drug_moa(artesunate, chembl, 'Endoperoxide antimalarial').
drug_target(artesunate, 'Artemisinin class: PFKEL-CH13 pathway,PfATP6 (SERCA),PfPI3K,Heme-dependent activation multi-target', chembl).
drug_target_organism(artesunate, 'Plasmodium falciparum').
drug_target_xref(artesunate, uniprot, 'Q8IBA9').
drug_target_xref(artesunate, uniprot, 'Q8I2H6').
drug_target_xref(artesunate, uniprot, 'Q8I4X3').
drug_target_xref(artesunate, chembl, 'CHEMBL361497').
drug_action_type(artesunate, 'Multi-target non-selective alkylation').
drug_resistance(artesunate, 'PfKelch13 mutations: C580Y, R539T, Y493H, I543T, R561H, etc. (same as artemether); distributed across East Africa and Southeast Asia', 'Ariey F,et,al. A molecular marker of artemisinin-resistant Plasmodium falciparum malaria. Nature. 2014 Jan 2;505(7481):50-5. doi: 10.1038/nature12876. Epub 2013 Dec 18.').
drug_warning(artesunate, 'Delayed hemolytic anemia (especially after the treatment of severe malaria) Neutropenia Hepatotoxicity Allergic reaction It should not be used alone').
drug_indication(artesunate, 'malaria (max phase 4)').
drug_indication(artesunate, 'Plasmodium falciparum malaria (max phase 3)').
drug_indication(artesunate, 'Plasmodium vivax malaria (max phase 3)').
drug_indication(artesunate, 'cytomegalovirus infection (max phase 3)').
drug_indication(artesunate, 'urinary schistosomiasis (max phase 3)').
drug_indication(artesunate, 'schistosomiasis (max phase 3)').
drug_admet(artesunate, alogp, 2.6).
drug_admet(artesunate, psa, 100.52).
drug_admet(artesunate, hbd, 1).
drug_admet(artesunate, hba, 7).
drug_admet(artesunate, ro5_violations, 0).
drug_chem(artesunate, formula, 'C19H28O8').
drug_chem(artesunate, weight_average, 384.4).
drug_chem(artesunate, monoisotopic_mass, 384.1784).
drug_chem(artesunate, exact_mass, 384.1784).
drug_chem(artesunate, smiles_isomeric, 'C[C@@H]1CC[C@H]2[C@H]([C@@H](O[C@H]3[C@@]24[C@H]1CC[C@](O3)(OO4)C)OC(=O)CCC(=O)O)C').
drug_chem(artesunate, smiles_canonical, 'CC1CCC2C(C(OC3C24C1CCC(O3)(OO4)C)OC(=O)CCC(=O)O)C').
drug_chem(artesunate, inchi, 'InChI=1S/C19H28O8/c1-10-4-5-13-11(2)16(23-15(22)7-6-14(20)21)24-17-19(13)12(10)8-9-18(3,25-17)26-27-19/h10-13,16-17H,4-9H2,1-3H3,(H,20,21)/t10-,11-,12+,13+,16-,17-,18-,19-/m1/s1').
drug_chem(artesunate, inchikey, 'FIHJKUPKCHIPAT-AHIGJZGOSA-N').
drug_xref(artesunate, drugbank, 'DB09274').
drug_xref(artesunate, chembl, 'CHEMBL361497').
drug_xref(artesunate, pubchem, 6917864).

% ===== SJ733 (sj733) =====
drug(sj733).
drug_label(sj733, 'SJ733').
drug_status(sj733, candidate).
drug_attr(sj733, phase, 'II').
drug_attr(sj733, modality, 'Small molecule').
drug_attr(sj733, dev_status, 'investigational (Phase II)').
drug_attr(sj733, iupac_name, '(3S,4S)-N-(3-cyano-4-fluorophenyl)-1-oxo-3-pyridin-3-yl-2-(2,2,2-trifluoroethyl)-3,4-dihydroisoquinoline-4-carboxamide').
drug_class(sj733, review, 'Dihydroisoquinolone').
drug_class(sj733, cn, 'Other/Novel').
drug_class(sj733, atc, 'None (not marketed/no ATC code)').
drug_moa(sj733, review, 'Disrupts P. falciparum PfATP4 function').
drug_target_xref(sj733, chembl, 'CHEMBL4207489').
drug_indication(sj733, 'malaria (max phase 1)').
drug_admet(sj733, alogp, 4.57).
drug_admet(sj733, psa, 86.09).
drug_admet(sj733, hbd, 1).
drug_admet(sj733, hba, 8).
drug_admet(sj733, ro5_violations, 0).
drug_chem(sj733, formula, 'C24H16F4N4O2').
drug_chem(sj733, weight_average, 468.4).
drug_chem(sj733, monoisotopic_mass, 468.1209).
drug_chem(sj733, exact_mass, 468.1209).
drug_chem(sj733, smiles_isomeric, 'C1=CC=C2C(=C1)[C@@H]([C@H](N(C2=O)CC(F)(F)F)C3=CN=CC=C3)C(=O)NC4=CC(=C(C=C4)F)C#N').
drug_chem(sj733, smiles_canonical, 'C1=CC=C2C(=C1)C(C(N(C2=O)CC(F)(F)F)C3=CN=CC=C3)C(=O)NC4=CC(=C(C=C4)F)C#N').
drug_chem(sj733, inchi, 'InChI=1S/C24H16F4N4O2/c25-19-8-7-16(10-15(19)11-29)31-22(33)20-17-5-1-2-6-18(17)23(34)32(13-24(26,27)28)21(20)14-4-3-9-30-12-14/h1-10,12,20-21H,13H2,(H,31,33)/t20-,21+/m0/s1').
drug_chem(sj733, inchikey, 'VKCPFWKTFZAOTO-LEWJYISDSA-N').
drug_xref(sj733, drugbank, 'DB12659').
drug_xref(sj733, chembl, 'CHEMBL4207489').
drug_xref(sj733, pubchem, 89508529).

% ===== AQ-13 dihydrochloride (aq_13_dihydrochloride) =====
drug(aq_13_dihydrochloride).
drug_label(aq_13_dihydrochloride, 'AQ-13 dihydrochloride').
drug_status(aq_13_dihydrochloride, candidate).
drug_attr(aq_13_dihydrochloride, phase, 'II').
drug_attr(aq_13_dihydrochloride, modality, 'Unknown').
drug_attr(aq_13_dihydrochloride, dev_status, 'investigational (Phase II)').
drug_attr(aq_13_dihydrochloride, iupac_name, 'N-(7-chloroquinolin-4-yl)-N\',N\'-diethylpropane-1,3-diamine;dihydrochloride').
drug_class(aq_13_dihydrochloride, review, '4-Aminoquinoline').
drug_class(aq_13_dihydrochloride, cn, 'Quinolines').
drug_class(aq_13_dihydrochloride, atc, 'None (not marketed/no ATC code)').
drug_moa(aq_13_dihydrochloride, review, 'Mechanism not yet confirmed (same class as chloroquine)').
drug_target_xref(aq_13_dihydrochloride, chembl, 'CHEMBL4297695').
drug_indication(aq_13_dihydrochloride, 'malaria (max phase 2)').
drug_chem(aq_13_dihydrochloride, formula, 'C16H24Cl3N3').
drug_chem(aq_13_dihydrochloride, weight_average, 364.7).
drug_chem(aq_13_dihydrochloride, monoisotopic_mass, 363.1036).
drug_chem(aq_13_dihydrochloride, exact_mass, 363.1036).
drug_chem(aq_13_dihydrochloride, smiles_isomeric, 'CCN(CC)CCCNC1=C2C=CC(=CC2=NC=C1)Cl.Cl.Cl').
drug_chem(aq_13_dihydrochloride, smiles_canonical, 'CCN(CC)CCCNC1=C2C=CC(=CC2=NC=C1)Cl.Cl.Cl').
drug_chem(aq_13_dihydrochloride, inchi, 'InChI=1S/C16H22ClN3.2ClH/c1-3-20(4-2)11-5-9-18-15-8-10-19-16-12-13(17)6-7-14(15)16;;/h6-8,10,12H,3-5,9,11H2,1-2H3,(H,18,19);2*1H').
drug_chem(aq_13_dihydrochloride, inchikey, 'ZNHBPWZRWNFJPN-UHFFFAOYSA-N').
drug_xref(aq_13_dihydrochloride, drugbank, 'DB17749').
drug_xref(aq_13_dihydrochloride, chembl, 'CHEMBL4297695').
drug_xref(aq_13_dihydrochloride, pubchem, 9820475).

% ===== Cipargamin (KAE609) (cipargamin) =====
drug(cipargamin).
drug_label(cipargamin, 'Cipargamin (KAE609)').
drug_status(cipargamin, candidate).
drug_attr(cipargamin, phase, 'II').
drug_attr(cipargamin, modality, 'Small molecule').
drug_attr(cipargamin, dev_status, 'investigational (Phase II)').
drug_attr(cipargamin, action_type, 'INHIBITOR').
drug_attr(cipargamin, iupac_name, '(3R,3\'S)-5,7\'-dichloro-6\'-fluoro-3\'-methylspiro[1H-indole-3,1\'-2,3,4,9-tetrahydropyrido[3,4-b]indole]-2-one').
drug_class(cipargamin, review, 'Spiroindolone').
drug_class(cipargamin, cn, 'Other/Novel').
drug_class(cipargamin, atc, 'None (not marketed/no ATC code)').
drug_moa(cipargamin, review, 'Inhibits PfATP4 and blocks mosquito transmission').
drug_moa(cipargamin, chembl, 'P-type ATPase inhibitor').
drug_target(cipargamin, 'P-type ATPase', chembl).
drug_target_organism(cipargamin, 'Plasmodium falciparum').
drug_target_xref(cipargamin, uniprot, 'Q27724').
drug_target_xref(cipargamin, chembl, 'CHEMBL1082723').
drug_action_type(cipargamin, 'INHIBITOR').
drug_resistance(cipargamin, 'PfATP4 in vitro selected mutations: G358S, T418N, P990R, T392I, and other transmembrane-domain mutations', 'Rottmann M, et,al. Spiroindolones, a potent compound class for the treatment of malaria. Science. 2010 Sep 3;329(5996):1175-80. doi: 10.1126/science.1193225.').
drug_warning(cipargamin, 'Phase II clinical; The safety assessment is still ongoing').
drug_indication(cipargamin, 'malaria (max phase 2)').
drug_indication(cipargamin, 'Plasmodium falciparum malaria (max phase 2)').
drug_admet(cipargamin, alogp, 4.34).
drug_admet(cipargamin, psa, 56.92).
drug_admet(cipargamin, hbd, 3).
drug_admet(cipargamin, hba, 3).
drug_admet(cipargamin, ro5_violations, 0).
drug_chem(cipargamin, formula, 'C19H14Cl2FN3O').
drug_chem(cipargamin, weight_average, 390.2).
drug_chem(cipargamin, monoisotopic_mass, 389.0498).
drug_chem(cipargamin, exact_mass, 389.0498).
drug_chem(cipargamin, smiles_isomeric, 'C[C@H]1CC2=C([C@]3(N1)C4=C(C=CC(=C4)Cl)NC3=O)NC5=CC(=C(C=C25)F)Cl').
drug_chem(cipargamin, smiles_canonical, 'CC1CC2=C(C3(N1)C4=C(C=CC(=C4)Cl)NC3=O)NC5=CC(=C(C=C25)F)Cl').
drug_chem(cipargamin, inchi, 'InChI=1S/C19H14Cl2FN3O/c1-8-4-11-10-6-14(22)13(21)7-16(10)23-17(11)19(25-8)12-5-9(20)2-3-15(12)24-18(19)26/h2-3,5-8,23,25H,4H2,1H3,(H,24,26)/t8-,19+/m0/s1').
drug_chem(cipargamin, inchikey, 'CKLPLPZSUQEDRT-WPCRTTGESA-N').
drug_xref(cipargamin, drugbank, 'DB12306').
drug_xref(cipargamin, chembl, 'CHEMBL1082723').
drug_xref(cipargamin, pubchem, 44469321).

% ===== Imatinib (imatinib) =====
drug(imatinib).
drug_label(imatinib, 'Imatinib').
drug_status(imatinib, candidate).
drug_attr(imatinib, phase, 'II').
drug_attr(imatinib, trade_name, 'Gleevec').
drug_attr(imatinib, approval_year, 2001).
drug_attr(imatinib, modality, 'Small molecule').
drug_attr(imatinib, dev_status, 'approved').
drug_attr(imatinib, action_type, 'INHIBITOR').
drug_attr(imatinib, iupac_name, '4-[(4-methylpiperazin-1-yl)methyl]-N-[4-methyl-3-[(4-pyridin-3-ylpyrimidin-2-yl)amino]phenyl]benzamide').
drug_class(imatinib, review, '2-Phenylaminopyrimidine').
drug_class(imatinib, cn, 'Other/Novel').
drug_class(imatinib, atc, 'BCR-ABL tyrosine kinase inhibitors (L01EA)').
drug_moa(imatinib, review, 'Inhibits tyrosine phosphorylation of band 3 protein').
drug_moa(imatinib, chembl, 'BCR-ABL tyrosine kinase inhibitor').
drug_target(imatinib, 'The host tyrosine kinase (in red blood cells) blocks the utilization of host signals by the malaria parasite', chembl).
drug_target_organism(imatinib, 'Homo sapiens').
drug_target_xref(imatinib, uniprot, 'Not yet established').
drug_target_xref(imatinib, chembl, 'CHEMBL941').
drug_action_type(imatinib, 'INHIBITOR').
drug_resistance(imatinib, 'Non-traditional targets, the resistance mechanism of Plasmodium remains unclear', 'Hammam K,et,al. Dual protein kinase and nucleoside kinase modulators for rationally designed polypharmacology. Nat Commun. 2017 Nov 10;8(1):1420. doi: 10.1038/s41467-017-01582-5.').
drug_warning(imatinib, 'Edema (periorbital and peripheral);  Bone marrow suppression Hepatotoxicity Heart failure Tumor lysis syndrome Gastrointestinal reactions Rash').
drug_indication(imatinib, 'acute lymphoblastic leukemia (max phase 3)').
drug_indication(imatinib, 'chronic myelogenous leukemia (max phase 3)').
drug_indication(imatinib, 'leukemia (max phase 3)').
drug_indication(imatinib, 'neoplasm (max phase 3)').
drug_indication(imatinib, 'sarcoma (max phase 3)').
drug_indication(imatinib, 'pulmonary arterial hypertension (max phase 3)').
drug_admet(imatinib, alogp, 4.59).
drug_admet(imatinib, psa, 86.28).
drug_admet(imatinib, hbd, 2).
drug_admet(imatinib, hba, 7).
drug_admet(imatinib, ro5_violations, 0).
drug_chem(imatinib, formula, 'C29H31N7O').
drug_chem(imatinib, weight_average, 493.6).
drug_chem(imatinib, monoisotopic_mass, 493.259).
drug_chem(imatinib, exact_mass, 493.259).
drug_chem(imatinib, smiles_isomeric, 'CC1=C(C=C(C=C1)NC(=O)C2=CC=C(C=C2)CN3CCN(CC3)C)NC4=NC=CC(=N4)C5=CN=CC=C5').
drug_chem(imatinib, smiles_canonical, 'CC1=C(C=C(C=C1)NC(=O)C2=CC=C(C=C2)CN3CCN(CC3)C)NC4=NC=CC(=N4)C5=CN=CC=C5').
drug_chem(imatinib, inchi, 'InChI=1S/C29H31N7O/c1-21-5-10-25(18-27(21)34-29-31-13-11-26(33-29)24-4-3-12-30-19-24)32-28(37)23-8-6-22(7-9-23)20-36-16-14-35(2)15-17-36/h3-13,18-19H,14-17,20H2,1-2H3,(H,32,37)(H,31,33,34)').
drug_chem(imatinib, inchikey, 'KTUFNOKKBVMGRW-UHFFFAOYSA-N').
drug_xref(imatinib, drugbank, 'DB00619').
drug_xref(imatinib, chembl, 'CHEMBL941').
drug_xref(imatinib, pubchem, 5291).

% ===== M5717(Cabamiquine) (m5717) =====
drug(m5717).
drug_label(m5717, 'M5717(Cabamiquine)').
drug_status(m5717, candidate).
drug_attr(m5717, phase, 'II').
drug_attr(m5717, modality, 'Small molecule').
drug_attr(m5717, dev_status, 'investigational (Phase II)').
drug_attr(m5717, action_type, 'INHIBITOR').
drug_attr(m5717, iupac_name, '6-fluoro-2-[4-(morpholin-4-ylmethyl)phenyl]-N-(2-pyrrolidin-1-ylethyl)quinoline-4-carboxamide').
drug_class(m5717, review, 'Quinoline diamine').
drug_class(m5717, cn, 'Quinolines').
drug_class(m5717, atc, 'None (not marketed/no ATC code)').
drug_moa(m5717, review, 'Inhibits PfeEF2, blocking parasite protein synthesis').
drug_moa(m5717, chembl, 'Translation elongation factor 2 (eEF2) inhibitor').
drug_target(m5717, 'PfeEF2 (Plasmodium falciparum elongation factor 2 / translation elongation factor 2)', chembl).
drug_target_organism(m5717, 'Plasmodium falciparum').
drug_target_xref(m5717, uniprot, 'Q8I2X5').
drug_target_xref(m5717, chembl, 'CHEMBL4091762').
drug_action_type(m5717, 'INHIBITOR').
drug_resistance(m5717, 'PfeEF2 mutations (in vitro selected): multiple site mutations, including some near the catalytic domain', 'Baragaña B,et,al. A novel multiple-stage antimalarial agent that inhibits protein synthesis. Nature. 2015 Jun 18;522(7556):315-20. doi: 10.1038/nature14451.').
drug_warning(m5717, 'Clinical phase I/II; Preclinical toxicology indicates liver and gastrointestinal toxicity that requires attention; The security data is limited').
drug_indication(m5717, 'malaria (max phase 2)').
drug_admet(m5717, alogp, 3.7).
drug_admet(m5717, psa, 57.7).
drug_admet(m5717, hbd, 1).
drug_admet(m5717, hba, 5).
drug_admet(m5717, ro5_violations, 0).
drug_chem(m5717, formula, 'C27H31FN4O2').
drug_chem(m5717, weight_average, 462.6).
drug_chem(m5717, monoisotopic_mass, 462.2431).
drug_chem(m5717, exact_mass, 462.2431).
drug_chem(m5717, smiles_isomeric, 'C1CCN(C1)CCNC(=O)C2=CC(=NC3=C2C=C(C=C3)F)C4=CC=C(C=C4)CN5CCOCC5').
drug_chem(m5717, smiles_canonical, 'C1CCN(C1)CCNC(=O)C2=CC(=NC3=C2C=C(C=C3)F)C4=CC=C(C=C4)CN5CCOCC5').
drug_chem(m5717, inchi, 'InChI=1S/C27H31FN4O2/c28-22-7-8-25-23(17-22)24(27(33)29-9-12-31-10-1-2-11-31)18-26(30-25)21-5-3-20(4-6-21)19-32-13-15-34-16-14-32/h3-8,17-18H,1-2,9-16,19H2,(H,29,33)').
drug_chem(m5717, inchikey, 'BENUHBSJOJMZEE-UHFFFAOYSA-N').
drug_xref(m5717, drugbank, 'DB21477').
drug_xref(m5717, chembl, 'CHEMBL4091762').
drug_xref(m5717, pubchem, 71748268).

% ===== Methylene blue (methylene_blue) =====
drug(methylene_blue).
drug_label(methylene_blue, 'Methylene blue').
drug_status(methylene_blue, candidate).
drug_attr(methylene_blue, phase, 'II').
drug_attr(methylene_blue, trade_name, 'Methylene blue').
drug_attr(methylene_blue, approval_year, 1955).
drug_attr(methylene_blue, modality, 'Small molecule').
drug_attr(methylene_blue, dev_status, 'approved').
drug_attr(methylene_blue, action_type, 'INHIBITOR').
drug_attr(methylene_blue, iupac_name, '[7-(dimethylamino)phenothiazin-3-ylidene]-dimethylazanium chloride').
drug_class(methylene_blue, review, 'Phenothiazine').
drug_class(methylene_blue, cn, 'Other/Novel').
drug_class(methylene_blue, atc, 'Tests for gastric secretion (V04CG)').
drug_moa(methylene_blue, review, 'Inhibits glutathione-dependent heme degradation').
drug_moa(methylene_blue, chembl, 'Soluble guanylate cyclase inhibitor').
drug_target(methylene_blue, 'Soluble guanylate cyclase', chembl).
drug_target_organism(methylene_blue, 'Homo sapiens').
drug_target_xref(methylene_blue, uniprot, 'Q02153').
drug_target_xref(methylene_blue, uniprot, 'O75343').
drug_target_xref(methylene_blue, uniprot, 'P33402').
drug_target_xref(methylene_blue, uniprot, 'Q02108').
drug_target_xref(methylene_blue, chembl, 'CHEMBL405110/CHEMBL550495').
drug_action_type(methylene_blue, 'INHIBITOR').
drug_resistance(methylene_blue, 'No widely reported parasite resistance mechanism to date', '\\').
drug_warning(methylene_blue, 'Serotonin syndrome (when used in combination with SSRIs) The risk of hemolysis in individuals with G6PD deficiency Urine/skin indigo staining Methemoglobinemia at high doses').
drug_indication(methylene_blue, 'colorectal neoplasm (max phase 4)').
drug_indication(methylene_blue, 'methemoglobinemia (max phase 4)').
drug_indication(methylene_blue, 'Colonoscopy (max phase 4)').
drug_indication(methylene_blue, 'Alzheimer disease (max phase 2)').
drug_admet(methylene_blue, alogp, 2.5).
drug_admet(methylene_blue, psa, 19.14).
drug_admet(methylene_blue, hbd, 0).
drug_admet(methylene_blue, hba, 3).
drug_admet(methylene_blue, ro5_violations, 0).
drug_chem(methylene_blue, formula, 'C16H18ClN3S').
drug_chem(methylene_blue, weight_average, 319.9).
drug_chem(methylene_blue, monoisotopic_mass, 319.091).
drug_chem(methylene_blue, exact_mass, 319.091).
drug_chem(methylene_blue, smiles_isomeric, 'CN(C)C1=CC2=C(C=C1)N=C3C=CC(=[N+](C)C)C=C3S2.[Cl-]').
drug_chem(methylene_blue, smiles_canonical, 'CN(C)C1=CC2=C(C=C1)N=C3C=CC(=[N+](C)C)C=C3S2.[Cl-]').
drug_chem(methylene_blue, inchi, 'InChI=1S/C16H18N3S.ClH/c1-18(2)11-5-7-13-15(9-11)20-16-10-12(19(3)4)6-8-14(16)17-13;/h5-10H,1-4H3;1H/q+1;/p-1').
drug_chem(methylene_blue, inchikey, 'CXKWCBBOMKCUKX-UHFFFAOYSA-M').
drug_xref(methylene_blue, drugbank, 'DB09241').
drug_xref(methylene_blue, chembl, 'CHEMBL405110').
drug_xref(methylene_blue, pubchem, 6099).

% ===== Sevuparin (sevuparin) =====
drug(sevuparin).
drug_label(sevuparin, 'Sevuparin').
drug_status(sevuparin, candidate).
drug_attr(sevuparin, phase, 'II').
drug_attr(sevuparin, modality, 'Oligosaccharide').
drug_attr(sevuparin, dev_status, 'investigational (Phase II)').
drug_class(sevuparin, review, 'Acid polysaccharide').
drug_class(sevuparin, cn, 'Other/Novel').
drug_class(sevuparin, atc, 'None (not marketed/no ATC code)').
drug_moa(sevuparin, review, 'Binds the DBL1α domain of PfEMP1, blocking rosetting and cell adhesion').
drug_indication(sevuparin, 'sickle cell anemia (max phase 2)').
drug_xref(sevuparin, chembl, 'CHEMBL4297825').

% ===== Rosiglitazone (rosiglitazone) =====
drug(rosiglitazone).
drug_label(rosiglitazone, 'Rosiglitazone').
drug_status(rosiglitazone, candidate).
drug_attr(rosiglitazone, phase, 'II').
drug_attr(rosiglitazone, trade_name, 'Avandia').
drug_attr(rosiglitazone, approval_year, 1999).
drug_attr(rosiglitazone, modality, 'Small molecule').
drug_attr(rosiglitazone, dev_status, 'approved; withdrawn').
drug_attr(rosiglitazone, action_type, 'AGONIST').
drug_attr(rosiglitazone, iupac_name, '5-[[4-[2-[methyl(pyridin-2-yl)amino]ethoxy]phenyl]methyl]-1,3-thiazolidine-2,4-dione').
drug_class(rosiglitazone, review, 'Thiazolidinedione').
drug_class(rosiglitazone, cn, 'Other/Novel').
drug_class(rosiglitazone, atc, 'Thiazolidinediones (A10BG)').
drug_moa(rosiglitazone, review, 'Promotes macrophage phagocytosis of infected erythrocytes and reduces pro-inflammatory factors (adjunct therapy)').
drug_moa(rosiglitazone, chembl, 'Peroxisome proliferator-activated receptor gamma agonist').
drug_target(rosiglitazone, 'Peroxisome proliferator-activated receptor gamma', chembl).
drug_target_organism(rosiglitazone, 'Homo sapiens').
drug_target_xref(rosiglitazone, uniprot, 'P37231').
drug_target_xref(rosiglitazone, chembl, 'CHEMBL235').
drug_action_type(rosiglitazone, 'AGONIST').
drug_warning(rosiglitazone, 'Withdrawn / cardiotoxicity / Increased cardiovascular risk outweighs its benefit; Cardiovascular risk; Elevated risk of cardiovascular events').
drug_warning(rosiglitazone, 'Withdrawn / cardiotoxicity / Elevated risk of cardiovascular events').
drug_indication(rosiglitazone, 'diabetes mellitus (max phase 4)').
drug_indication(rosiglitazone, 'prostate adenocarcinoma (max phase 3)').
drug_indication(rosiglitazone, 'diabetic neuropathy (max phase 3)').
drug_indication(rosiglitazone, 'Disorder of lipid metabolism (max phase 3)').
drug_indication(rosiglitazone, 'metabolic syndrome (max phase 3)').
drug_indication(rosiglitazone, 'Cognitive impairment (max phase 2)').
drug_admet(rosiglitazone, alogp, 2.49).
drug_admet(rosiglitazone, psa, 71.53).
drug_admet(rosiglitazone, hbd, 1).
drug_admet(rosiglitazone, hba, 6).
drug_admet(rosiglitazone, ro5_violations, 0).
drug_chem(rosiglitazone, formula, 'C18H19N3O3S').
drug_chem(rosiglitazone, weight_average, 357.4).
drug_chem(rosiglitazone, monoisotopic_mass, 357.1147).
drug_chem(rosiglitazone, exact_mass, 357.1147).
drug_chem(rosiglitazone, smiles_isomeric, 'CN(CCOC1=CC=C(C=C1)CC2C(=O)NC(=O)S2)C3=CC=CC=N3').
drug_chem(rosiglitazone, smiles_canonical, 'CN(CCOC1=CC=C(C=C1)CC2C(=O)NC(=O)S2)C3=CC=CC=N3').
drug_chem(rosiglitazone, inchi, 'InChI=1S/C18H19N3O3S/c1-21(16-4-2-3-9-19-16)10-11-24-14-7-5-13(6-8-14)12-15-17(22)20-18(23)25-15/h2-9,15H,10-12H2,1H3,(H,20,22,23)').
drug_chem(rosiglitazone, inchikey, 'YASAKCUCGLMORW-UHFFFAOYSA-N').
drug_xref(rosiglitazone, drugbank, 'DB00412').
drug_xref(rosiglitazone, chembl, 'CHEMBL121').
drug_xref(rosiglitazone, pubchem, 77999).

% ===== DSM265 (dsm265) =====
drug(dsm265).
drug_label(dsm265, 'DSM265').
drug_status(dsm265, candidate).
drug_attr(dsm265, phase, 'II').
drug_attr(dsm265, modality, 'Small molecule').
drug_attr(dsm265, dev_status, 'investigational (Phase II)').
drug_attr(dsm265, action_type, 'INHIBITOR').
drug_attr(dsm265, iupac_name, '2-(1,1-difluoroethyl)-5-methyl-N-[4-(pentafluoro-lambda6-sulfanyl)phenyl]-[1,2,4]triazolo[1,5-a]pyrimidin-7-amine').
drug_class(dsm265, review, 'Triazolopyrimidine').
drug_class(dsm265, cn, 'Other/Novel').
drug_class(dsm265, atc, 'None (not marketed/no ATC code)').
drug_moa(dsm265, review, 'Selectively inhibits parasite DHODH').
drug_moa(dsm265, chembl, 'Dihydroorotate dehydrogenase inhibitor').
drug_target(dsm265, 'Dihydroorotate dehydrogenase', chembl).
drug_target_organism(dsm265, 'Plasmodium falciparum').
drug_target_xref(dsm265, uniprot, 'Q54A96').
drug_target_xref(dsm265, chembl, 'CHEMBL3486').
drug_action_type(dsm265, 'INHIBITOR').
drug_indication(dsm265, 'Plasmodium falciparum malaria (max phase 2)').
drug_indication(dsm265, 'Plasmodium vivax malaria (max phase 2)').
drug_indication(dsm265, 'malaria (max phase 1)').
drug_admet(dsm265, alogp, 5.95).
drug_admet(dsm265, psa, 55.11).
drug_admet(dsm265, hbd, 1).
drug_admet(dsm265, hba, 5).
drug_admet(dsm265, ro5_violations, 1).
drug_chem(dsm265, formula, 'C14H12F7N5S').
drug_chem(dsm265, weight_average, 415.33).
drug_chem(dsm265, monoisotopic_mass, 415.0702).
drug_chem(dsm265, exact_mass, 415.0702).
drug_chem(dsm265, smiles_isomeric, 'CC1=NC2=NC(=NN2C(=C1)NC3=CC=C(C=C3)S(F)(F)(F)(F)F)C(C)(F)F').
drug_chem(dsm265, smiles_canonical, 'CC1=NC2=NC(=NN2C(=C1)NC3=CC=C(C=C3)S(F)(F)(F)(F)F)C(C)(F)F').
drug_chem(dsm265, inchi, 'InChI=1S/C14H12F7N5S/c1-8-7-11(26-13(22-8)24-12(25-26)14(2,15)16)23-9-3-5-10(6-4-9)27(17,18,19,20)21/h3-7,23H,1-2H3').
drug_chem(dsm265, inchikey, 'OIZSVTOIBNSVOS-UHFFFAOYSA-N').
drug_xref(dsm265, drugbank, 'DB12397').
drug_xref(dsm265, chembl, 'CHEMBL1956285').
drug_xref(dsm265, pubchem, 51347395).

% ===== Ferroquine (ferroquine) =====
drug(ferroquine).
drug_label(ferroquine, 'Ferroquine').
drug_status(ferroquine, candidate).
drug_attr(ferroquine, phase, 'II').
drug_attr(ferroquine, iupac_name, '7-chloro-N-[[2-[(dimethylamino)methyl]cyclopenta-2,4-dien-1-yl]methyl]quinolin-4-amine;cyclopenta-1,3-diene;iron(2+)').
drug_class(ferroquine, review, 'Ferrocene').
drug_class(ferroquine, cn, 'Other/Novel').
drug_moa(ferroquine, review, 'Inhibits hemozoin formation and generates reactive oxygen species (ROS)').
drug_chem(ferroquine, formula, 'C23H24ClFeN3').
drug_chem(ferroquine, weight_average, 433.8).
drug_chem(ferroquine, monoisotopic_mass, 433.1008).
drug_chem(ferroquine, exact_mass, 433.1008).
drug_chem(ferroquine, smiles_isomeric, 'CN(C)CC1=CC=C[C-]1CNC2=C3C=CC(=CC3=NC=C2)Cl.[CH-]1C=CC=C1.[Fe+2]').
drug_chem(ferroquine, smiles_canonical, 'CN(C)CC1=CC=C[C-]1CNC2=C3C=CC(=CC3=NC=C2)Cl.[CH-]1C=CC=C1.[Fe+2]').
drug_chem(ferroquine, inchi, 'InChI=1S/C18H19ClN3.C5H5.Fe/c1-22(2)12-14-5-3-4-13(14)11-21-17-8-9-20-18-10-15(19)6-7-16(17)18;1-2-4-5-3-1;/h3-10H,11-12H2,1-2H3,(H,20,21);1-5H;/q2*-1;+2').
drug_chem(ferroquine, inchikey, 'DDENDDKMBDTHAX-UHFFFAOYSA-N').
drug_xref(ferroquine, pubchem, 140118553).

% ===== Artefenomel (OZ439) (artefenomel) =====
drug(artefenomel).
drug_label(artefenomel, 'Artefenomel (OZ439)').
drug_status(artefenomel, candidate).
drug_attr(artefenomel, phase, 'III').
drug_attr(artefenomel, modality, 'Small molecule').
drug_class(artefenomel, review, '1,2,4-Trioxolane').
drug_class(artefenomel, cn, 'Synthetic peroxides').
drug_class(artefenomel, atc, 'None (not marketed/no ATC code)').
drug_moa(artefenomel, review, 'Disrupts parasite digestion of hemoglobin').
drug_admet(artefenomel, alogp, 4.88).
drug_admet(artefenomel, psa, 49.39).
drug_admet(artefenomel, hbd, 0).
drug_admet(artefenomel, hba, 6).
drug_admet(artefenomel, ro5_violations, 0).
drug_chem(artefenomel, formula, 'C28H39NO5').
drug_chem(artefenomel, weight_average, 469.6).
drug_chem(artefenomel, monoisotopic_mass, 469.2828).
drug_chem(artefenomel, exact_mass, 469.2828).
drug_chem(artefenomel, smiles_isomeric, 'C1CC2(CCC1C3=CC=C(C=C3)OCCN4CCOCC4)OC5(C6CC7CC(C6)CC5C7)OO2').
drug_chem(artefenomel, smiles_canonical, 'C1CC2(CCC1C3=CC=C(C=C3)OCCN4CCOCC4)OC5(C6CC7CC(C6)CC5C7)OO2').
drug_chem(artefenomel, inchi, 'InChI=1S/C28H39NO5/c1-3-26(31-14-11-29-9-12-30-13-10-29)4-2-22(1)23-5-7-27(8-6-23)32-28(34-33-27)24-16-20-15-21(18-24)19-25(28)17-20/h1-4,20-21,23-25H,5-19H2').
drug_chem(artefenomel, inchikey, 'XLCNVWUKICLURR-UHFFFAOYSA-N').
drug_xref(artefenomel, chembl, 'CHEMBL2322983').
drug_xref(artefenomel, pubchem, 24999143).

% ===== Artemisone (artemisone) =====
drug(artemisone).
drug_label(artemisone, 'Artemisone').
drug_status(artemisone, candidate).
drug_attr(artemisone, phase, 'III').
drug_attr(artemisone, modality, 'Small molecule').
drug_attr(artemisone, dev_status, 'phase -1.0').
drug_attr(artemisone, iupac_name, '4-[(1R,4S,5R,8S,9R,10R,12R,13R)-1,5,9-trimethyl-11,14,15,16-tetraoxatetracyclo[10.3.1.04,13.08,13]hexadecan-10-yl]-1,4-thiazinane 1,1-dioxide').
drug_class(artemisone, review, 'Artemisinin').
drug_class(artemisone, cn, 'Artemisinins').
drug_class(artemisone, atc, 'None (not marketed/no ATC code)').
drug_moa(artemisone, review, 'Inhibits asexual stages and stage-V gametocytes').
drug_admet(artemisone, alogp, 1.92).
drug_admet(artemisone, psa, 74.3).
drug_admet(artemisone, hbd, 0).
drug_admet(artemisone, hba, 7).
drug_admet(artemisone, ro5_violations, 0).
drug_chem(artemisone, formula, 'C19H31NO6S').
drug_chem(artemisone, weight_average, 401.5).
drug_chem(artemisone, monoisotopic_mass, 401.1872).
drug_chem(artemisone, exact_mass, 401.1872).
drug_chem(artemisone, smiles_isomeric, 'C[C@@H]1CC[C@H]2[C@H]([C@@H](O[C@H]3[C@@]24[C@H]1CC[C@](O3)(OO4)C)N5CCS(=O)(=O)CC5)C').
drug_chem(artemisone, smiles_canonical, 'CC1CCC2C(C(OC3C24C1CCC(O3)(OO4)C)N5CCS(=O)(=O)CC5)C').
drug_chem(artemisone, inchi, 'InChI=1S/C19H31NO6S/c1-12-4-5-15-13(2)16(20-8-10-27(21,22)11-9-20)23-17-19(15)14(12)6-7-18(3,24-17)25-26-19/h12-17H,4-11H2,1-3H3/t12-,13-,14+,15+,16-,17-,18-,19-/m1/s1').
drug_chem(artemisone, inchikey, 'FDMUNKXWYMSZIR-NQWKWHCYSA-N').
drug_xref(artemisone, drugbank, 'DB16097').
drug_xref(artemisone, chembl, 'CHEMBL516268').
drug_xref(artemisone, pubchem, 11531457).

% ===== Fosmidomycin (fosmidomycin) =====
drug(fosmidomycin).
drug_label(fosmidomycin, 'Fosmidomycin').
drug_status(fosmidomycin, candidate).
drug_attr(fosmidomycin, phase, 'III').
drug_attr(fosmidomycin, modality, 'Small molecule').
drug_attr(fosmidomycin, dev_status, 'investigational (Phase III)').
drug_attr(fosmidomycin, action_type, 'INHIBITOR').
drug_attr(fosmidomycin, iupac_name, '3-[formyl(hydroxy)amino]propylphosphonic acid').
drug_class(fosmidomycin, review, 'Phosphonic acid').
drug_class(fosmidomycin, cn, 'Other/Novel').
drug_class(fosmidomycin, atc, 'None (not marketed/no ATC code)').
drug_moa(fosmidomycin, review, 'Inhibits DXR (1-deoxy-D-xylulose 5-phosphate reductoisomerase)').
drug_moa(fosmidomycin, chembl, '1-deoxy-D-xylulose 5-phosphate reductoisomerase, apicoplastic inhibitor').
drug_target(fosmidomycin, '1-deoxy-D-xylulose 5-phosphate reductoisomerase, apicoplastic', chembl).
drug_target_organism(fosmidomycin, 'Plasmodium falciparum (isolate 3D7)').
drug_target_xref(fosmidomycin, uniprot, 'Q8IKG4').
drug_target_xref(fosmidomycin, chembl, 'CHEMBL4295619').
drug_action_type(fosmidomycin, 'INHIBITOR').
drug_indication(fosmidomycin, 'malaria (max phase 3)').
drug_indication(fosmidomycin, 'Plasmodium falciparum malaria (max phase 2)').
drug_admet(fosmidomycin, alogp, -0.6).
drug_admet(fosmidomycin, psa, 98.07).
drug_admet(fosmidomycin, hbd, 3).
drug_admet(fosmidomycin, hba, 3).
drug_admet(fosmidomycin, ro5_violations, 0).
drug_chem(fosmidomycin, formula, 'C4H10NO5P').
drug_chem(fosmidomycin, weight_average, 183.1).
drug_chem(fosmidomycin, monoisotopic_mass, 183.0297).
drug_chem(fosmidomycin, exact_mass, 183.0297).
drug_chem(fosmidomycin, smiles_isomeric, 'C(CN(C=O)O)CP(=O)(O)O').
drug_chem(fosmidomycin, smiles_canonical, 'C(CN(C=O)O)CP(=O)(O)O').
drug_chem(fosmidomycin, inchi, 'InChI=1S/C4H10NO5P/c6-4-5(7)2-1-3-11(8,9)10/h4,7H,1-3H2,(H2,8,9,10)').
drug_chem(fosmidomycin, inchikey, 'GJXWDTUCERCKIX-UHFFFAOYSA-N').
drug_xref(fosmidomycin, drugbank, 'DB02948').
drug_xref(fosmidomycin, chembl, 'CHEMBL203125').
drug_xref(fosmidomycin, pubchem, 572).

% ===== Arterolane (arterolane) =====
drug(arterolane).
drug_label(arterolane, 'Arterolane').
drug_status(arterolane, candidate).
drug_attr(arterolane, phase, 'III').
drug_attr(arterolane, modality, 'Small molecule').
drug_class(arterolane, review, '1,2,4-Trioxolane').
drug_class(arterolane, cn, 'Synthetic peroxides').
drug_class(arterolane, atc, 'None (not marketed/no ATC code)').
drug_moa(arterolane, review, 'Inhibits heme detoxification and PfSERCA (PfATP6)').
drug_admet(arterolane, alogp, 3.25).
drug_admet(arterolane, psa, 82.81).
drug_admet(arterolane, hbd, 2).
drug_admet(arterolane, hba, 5).
drug_admet(arterolane, ro5_violations, 0).
drug_chem(arterolane, formula, 'C22H36N2O4').
drug_chem(arterolane, weight_average, 392.5).
drug_chem(arterolane, monoisotopic_mass, 392.2675).
drug_chem(arterolane, exact_mass, 392.2675).
drug_chem(arterolane, smiles_isomeric, 'CC(C)(CNC(=O)CC1CCC2(CC1)OC3(C4CC5CC(C4)CC3C5)OO2)N').
drug_chem(arterolane, smiles_canonical, 'CC(C)(CNC(=O)CC1CCC2(CC1)OC3(C4CC5CC(C4)CC3C5)OO2)N').
drug_chem(arterolane, inchi, 'InChI=1S/C22H36N2O4/c1-20(2,23)13-24-19(25)12-14-3-5-21(6-4-14)26-22(28-27-21)17-8-15-7-16(10-17)11-18(22)9-15/h14-18H,3-13,23H2,1-2H3,(H,24,25)').
drug_chem(arterolane, inchikey, 'VXYZBLXGCYNIHP-UHFFFAOYSA-N').
drug_xref(arterolane, chembl, 'CHEMBL578577').
drug_xref(arterolane, pubchem, 10475633).

% ===== Artemisinin (artemisinin) =====
drug(artemisinin).
drug_label(artemisinin, 'Artemisinin').
drug_status(artemisinin, approved).
drug_attr(artemisinin, modality, 'Small molecule').
drug_attr(artemisinin, dev_status, 'approved').
drug_attr(artemisinin, action_type, 'INHIBITOR').
drug_class(artemisinin, review, 'Artemisinin').
drug_class(artemisinin, cn, 'Artemisinins').
drug_class(artemisinin, atc, 'Artemisinin and derivatives, plain (P01BE)').
drug_moa(artemisinin, review, 'Endoperoxide bridge is activated by heme/Fe2+ to generate carbon-centred free radicals that alkylate parasite proteins and lipids').
drug_moa(artemisinin, chembl, 'Ferriprotoporphyrin IX inhibitor').
drug_target(artemisinin, 'Ferriprotoporphyrin IX (heme-activated multi-target alkylation)', chembl).
drug_target_organism(artemisinin, 'Plasmodium falciparum').
drug_action_type(artemisinin, 'INHIBITOR').
drug_resistance(artemisinin, 'PfKelch13 (K13) propeller-domain mutations (e.g., C580Y, R539T, Y493H, I543T, R561H) increase ring-stage survival', 'Ariey F, et al. A molecular marker of artemisinin-resistant Plasmodium falciparum malaria. Nature. 2014;505(7481):50-55. doi:10.1038/nature12876.').
drug_indication(artemisinin, 'malaria (max phase 4)').
drug_indication(artemisinin, 'Plasmodium falciparum malaria (max phase 4)').
drug_chem(artemisinin, formula, 'C15H22O5').
drug_chem(artemisinin, weight_average, 282.33).
drug_chem(artemisinin, monoisotopic_mass, 282.1467).
drug_chem(artemisinin, exact_mass, 282.1467).
drug_xref(artemisinin, pubchem, 68827).

% ===== Amodiaquine (amodiaquine) =====
drug(amodiaquine).
drug_label(amodiaquine, 'Amodiaquine').
drug_status(amodiaquine, approved).
drug_attr(amodiaquine, modality, 'Small molecule').
drug_attr(amodiaquine, dev_status, 'approved').
drug_attr(amodiaquine, action_type, 'INHIBITOR').
drug_attr(amodiaquine, iupac_name, '4-[(7-chloroquinolin-4-yl)amino]-2-[(diethylamino)methyl]phenol').
drug_class(amodiaquine, review, '4-Aminoquinoline').
drug_class(amodiaquine, cn, 'Quinolines').
drug_class(amodiaquine, atc, 'Aminoquinolines (P01BA)').
drug_moa(amodiaquine, review, 'Inhibits hemozoin (beta-haematin) formation in the digestive vacuole like chloroquine; active metabolite desethylamodiaquine').
drug_moa(amodiaquine, chembl, 'Hemozoin formation inhibitor').
drug_target(amodiaquine, 'Heme (ferriprotoporphyrin IX) / hemozoin formation', chembl).
drug_target_organism(amodiaquine, 'Plasmodium falciparum').
drug_action_type(amodiaquine, 'INHIBITOR').
drug_resistance(amodiaquine, 'PfCRT and PfMDR1 mutations (notably PfMDR1 N86Y and PfCRT haplotypes) reduce amodiaquine/desethylamodiaquine susceptibility', 'Sa JM, et al. Geographic patterns of P. falciparum drug resistance distinguished by differential responses to amodiaquine and chloroquine. PNAS. 2009;106(45):18883-18889. doi:10.1073/pnas.0911317106.').
drug_indication(amodiaquine, 'malaria (max phase 4)').
drug_indication(amodiaquine, 'Plasmodium falciparum malaria (max phase 4)').
drug_chem(amodiaquine, formula, 'C20H22ClN3O').
drug_chem(amodiaquine, weight_average, 355.86).
drug_chem(amodiaquine, monoisotopic_mass, 355.1451).
drug_chem(amodiaquine, exact_mass, 355.1451).
drug_xref(amodiaquine, drugbank, 'DB00613').
drug_xref(amodiaquine, pubchem, 2165).
