:- encoding(utf8).
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
:- discontiguous
    drug_cn_label/2,        
    drug_core_structure/4,  
    malaria_line_usage/5,   
    drug_synergy/4,         
    full_moa_detail/4,      
    drug_stage_effect/3,    
    drug_combination_type/2,
    drug_resistance_level/3,
    cross_resistance/4,     
    drug_route/2,           
    drug_special_pop/3,     
    drug_pk/3,              
    guideline_ref/2.   
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
drug_cn_label(chloroquine, 'Chloroquine').
drug_core_structure(chloroquine, '4-Aminoquinoline', '4-Aminoquinoline core scaffold', 'WHO World Malaria Report 2023; Angew Chem Int Ed, 2019, 58(42): 14672-14686').
% Plasmodium falciparum
malaria_line_usage(chloroquine, 'Plasmodium falciparum', third_line, 'Widespread global resistance to chloroquine; only third-line salvage therapy in remote regions without resistance, not recommended for routine use', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
% Plasmodium vivax
malaria_line_usage(chloroquine, 'Plasmodium vivax', second_line, 'Second-line erythrocytic-stage drug in resistance-endemic regions; first-line option in non-resistant endemic areas, must be combined with primaquine to eradicate hypnozoites', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
% Plasmodium ovale
malaria_line_usage(chloroquine, 'Plasmodium ovale', second_line, 'Erythrocytic-stage killing agent for Plasmodium ovale; monotherapy cannot achieve radical cure, combination with primaquine is required to eliminate liver hypnozoites and prevent relapse', 'Clin Microbiol Rev, 2013, 26(1): 60-79').
% Plasmodium malariae
malaria_line_usage(chloroquine, 'Plasmodium malariae', first_line, 'No prevalent global resistance; WHO-recommended first-line erythrocytic-stage drug, no hypnozoite-clearing adjuvant required', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
%Synergistic drug matching pairs
% Chloroquine + Primaquine radical cure regimen
drug_synergy(chloroquine, primaquine, 'Chloroquine rapidly clears intraerythrocytic parasites in blood; primaquine specifically eliminates hepatic hypnozoites. Combined administration achieves radical cure of P. vivax and P. ovale and blocks long-term relapse', 'N Engl J Med, 2019, 380(11): 1027-1038').
% Chloroquine + Artesunate rescue combination (non-standard ACT)
drug_synergy(chloroquine, artesunate, 'Artesunate rapidly reduces parasite load in severe patients, while chloroquine eliminates residual trophozoites; short-term combination only applicable in remote regions with extremely low resistance, not a standard ACT regimen', 'Antimicrob Agents Chemother, 2017, 61(10): e00876-17').
%Complete molecular mechanism details (separated from brief drug_moa summary, no content duplication)
% Mechanism extracted from review articles
full_moa_detail(chloroquine, review, 'Chloroquine is a weak alkaline lipophilic small molecule. It passively diffuses into the parasite digestive vacuole and gets protonated and accumulated due to the acidic vacuolar environment. The molecule binds ferriprotoporphyrin IX (free heme) with high affinity, competitively inhibiting hemozoin polymerase-mediated hemozoin formation. Unpolymerized free heme continuously accumulates, disrupting parasite lysosomal and mitochondrial membrane structures, inducing severe oxidative stress and resulting in parasite lysis and death. It also weakly inhibits PfCRT transporter function to reduce drug efflux and parasite escape', 'Fidock DA et al. Mol Cell, 2000, 6(4): 861-871').
% Target annotation from ChEMBL database
full_moa_detail(chloroquine, chembl, 'Ferriprotoporphyrin IX binder, hemozoin polymerase inhibitor, vacuole acidification disruptor, weak PfCRT antagonist', 'ChEMBL Antimalarial Target Curation, 2025 Release').
%Parasite developmental stage killing/inhibitory activity (unified English enumeration tags)
drug_stage_effect(chloroquine, ring_stage, weak_bactericidal).
drug_stage_effect(chloroquine, trophozoite, strong_bactericidal).
drug_stage_effect(chloroquine, schizont, strong_bactericidal).
drug_stage_effect(chloroquine, hypnozoite, no_effect).
drug_stage_effect(chloroquine, gametocyte, weak_inhibit).
%Classification of pharmaceutical compound preparations
drug_combination_type(chloroquine, none).
% Parasite resistance grading for distinct Plasmodium species
drug_resistance_level(chloroquine, 'Plasmodium falciparum', high_resistance).
drug_resistance_level(chloroquine, 'Plasmodium vivax', medium_resistance).
drug_resistance_level(chloroquine, 'Plasmodium ovale', medium_resistance).
drug_resistance_level(chloroquine, 'Plasmodium malariae', sensitive).
% Cross-resistance relations among aminoquinoline analogues
cross_resistance(chloroquine, hydroxychloroquine, full_cross, 'Slater AF. Pharmacol Ther, 1993, 57(2-3): 203-235').
cross_resistance(chloroquine, amodiaquine, partial_cross, 'Sa JM et al. PNAS, 2009, 106(45): 18883-18889').
%Approved clinical administration routes (all English atom identifiers)
drug_route(chloroquine, oral).
drug_route(chloroquine, intravenous).
%Medication specifications for special patient populations
drug_special_pop(chloroquine, g6pd_deficiency, safe_with_monitor).
drug_special_pop(chloroquine, pregnancy, category_c).
drug_special_pop(chloroquine, child, weight_adjust).
% Supplementary core pharmacokinetic parameters
drug_pk(chloroquine, half_life, '10-60 days').
drug_pk(chloroquine, plasma_protein_binding, '50-65%').
drug_pk(chloroquine, excretion_pathway, renal).
%Mapping links to clinical diagnosis and treatment guidelines
guideline_ref(chloroquine, 'WHO Guidelines for the treatment of malaria, 4th edition, 2021').
guideline_ref(chloroquine,  'CDC Malaria Treatment Guidelines, 2024').

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
drug_cn_label(primaquine, 'Primaquine').
drug_core_structure(primaquine, '8-Aminoquinoline', '8-aminoquinoline core scaffold', 'WHO World Malaria Report 2023').
malaria_line_usage(primaquine, 'Plasmodium vivax', first_line, 'Essential first-line combination agent for radical cure of vivax malaria; the only clinical drug capable of eliminating hepatic hypnozoites', 'N Engl J Med, 2019, 380(11): 1027-1038').
malaria_line_usage(primaquine, 'Plasmodium falciparum', second_line, 'Lacks potent activity against intraerythrocytic parasites; only used as a second-line gametocytocidal agent to block malaria transmission', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
malaria_line_usage(primaquine, 'Plasmodium ovale', first_line, 'Core combination drug for radical cure of ovale malaria, eradicating hepatic hypnozoites to prevent relapse', 'Clin Microbiol Rev, 2013, 26(1): 60-79').
malaria_line_usage(primaquine, 'Plasmodium malariae', none, 'P. malariae does not produce hepatic hypnozoites; routine co-administration of primaquine is unnecessary', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
drug_synergy(primaquine, chloroquine, 'Chloroquine eliminates intraerythrocytic parasites while primaquine eradicates hepatic hypnozoites; this is the standard combined regimen for radical cure of vivax malaria', 'Lancet Infect Dis, 2020, 20(12): e363-e374').
full_moa_detail(primaquine, review, 'Primaquine undergoes oxidative metabolism mediated by hepatic CYP2D6 to form active quinone imine metabolites. These metabolites selectively enter hepatic hypnozoites of malaria parasites, target the mitochondrial cytochrome bc1 complex, block the electron transport chain and deplete ATP stores. Meanwhile, they induce massive reactive oxygen species production and disrupt gametocyte membrane integrity, conferring dual activity against hypnozoites and transmission-blocking effects. Defects in the host CYP2D6 gene drastically reduce drug bioactivation efficiency and lead to radical cure failure', 'Baird JK et al. Nature, 2014, 515(7526): 238-242').
drug_stage_effect(primaquine, ring_stage, weak_inhibit).
drug_stage_effect(primaquine, trophozoite, mild_plasmodicidal).
drug_stage_effect(primaquine, schizont, mild_plasmodicidal).
drug_stage_effect(primaquine, hypnozoite, strong_plasmodicidal).
drug_stage_effect(primaquine, gametocyte, strong_plasmodicidal).
drug_combination_type(primaquine, none).
drug_resistance_level(primaquine, 'Plasmodium vivax', medium_resistance).
drug_resistance_level(primaquine, 'Plasmodium falciparum', sensitive).
drug_resistance_level(primaquine, 'Plasmodium ovale', sensitive).
drug_resistance_level(primaquine, 'Plasmodium malariae', sensitive).
cross_resistance(primaquine, tafenoquine, full_cross, 'Ralph A et al. J Infect Dis, 2016, 213(10): 1610-1618').
drug_route(primaquine, oral).
drug_special_pop(primaquine, g6pd_deficiency, contraindicated).
drug_special_pop(primaquine, pregnancy, category_x).
drug_special_pop(primaquine, child, weight_adjust_monitor).
drug_pk(primaquine, half_life, '6-8 hours').
drug_pk(primaquine, plasma_protein_binding, '75%').
drug_pk(primaquine, excretion_pathway, renal_hepatic_mixed).
guideline_ref(primaquine, 'WHO Guidelines for the treatment of malaria, 4th edition, 2021').
guideline_ref(primaquine, 'Chinese Guidelines for Malaria Diagnosis and Treatment (2024 Edition)').
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
drug_core_structure(hydroxychloroquine, '4-Aminoquinoline', 'WHO World Malaria Report 2023; Pharmacol Ther, 1993, 57(2-3): 203-235').
malaria_line_usage(hydroxychloroquine, 'Plasmodium falciparum', third_line, 'Full cross-resistance with chloroquine; only used as third-line agent in areas without confirmed resistance', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
malaria_line_usage(hydroxychloroquine, 'Plasmodium vivax', second_line, 'Second-line blood schizonticide for vivax malaria in chloroquine-resistant regions; safer ocular profile than chloroquine', 'Clin Infect Dis, 2020, 71(Suppl 3): S224-S231').
malaria_line_usage(hydroxychloroquine, 'Plasmodium ovale', second_line, 'Active against erythrocytic stages of P. ovale; must be combined with primaquine for radical cure', 'Clin Microbiol Rev, 2013, 26(1): 60-79').
malaria_line_usage(hydroxychloroquine, 'Plasmodium malariae', first_line, 'First-line agent for P. malariae infection with extremely low resistance risk', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
drug_synergy(hydroxychloroquine, primaquine, 'Hydroxychloroquine eliminates erythrocytic parasites; primaquine eradicates hepatic hypnozoites; combined for radical cure of relapsing malaria', 'Lancet Infect Dis, 2020, 20(12): e363-e374').
drug_synergy(hydroxychloroquine, azithromycin, 'Dual blood-stage activity for intermittent preventive treatment in pregnancy; reduced teratogenic risk', 'N Engl J Med, 2018, 379(10): 917-927').
full_moa_detail(hydroxychloroquine, review, 'As a weak-base 4-aminoquinoline analog, hydroxychloroquine accumulates in the acidic digestive vacuole of Plasmodium via proton trapping. It binds to ferriprotoporphyrin IX and competitively inhibits hemozoin polymerization, leading to accumulation of toxic free heme, which disrupts parasite membrane integrity and induces oxidative stress. The hydroxyethyl side chain reduces retinal tissue accumulation compared to chloroquine, resulting in lower ocular toxicity, while sharing identical cross-resistance profiles.', 'Slater AF. Pharmacol Ther, 1993, 57(2-3): 203-235').
full_moa_detail(hydroxychloroquine, chembl, 'Hemozoin formation inhibitor; ferriprotoporphyrin IX binder; vacuolar pH modulator', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(hydroxychloroquine, ring_stage, weak_bactericidal).
drug_stage_effect(hydroxychloroquine, trophozoite, strong_bactericidal).
drug_stage_effect(hydroxychloroquine, schizont, strong_bactericidal).
drug_stage_effect(hydroxychloroquine, hypnozoite, no_effect).
drug_stage_effect(hydroxychloroquine, gametocyte, weak_inhibit).
drug_combination_type(hydroxychloroquine, none).
drug_resistance_level(hydroxychloroquine, 'Plasmodium falciparum', high_resistance).
drug_resistance_level(hydroxychloroquine, 'Plasmodium vivax', medium_resistance).
drug_resistance_level(hydroxychloroquine, 'Plasmodium ovale', medium_resistance).
drug_resistance_level(hydroxychloroquine, 'Plasmodium malariae', sensitive).
cross_resistance(hydroxychloroquine, chloroquine, full_cross, 'Slater AF. Pharmacol Ther, 1993, 57(2-3): 203-235').
cross_resistance(hydroxychloroquine, amodiaquine, partial_cross, 'Sa JM et al. PNAS, 2009, 106(45): 18883-18889').
drug_route(hydroxychloroquine, oral).
drug_special_pop(hydroxychloroquine, g6pd_deficiency, safe_with_monitor).
drug_special_pop(hydroxychloroquine, pregnancy, category_c).
drug_special_pop(hydroxychloroquine, pediatric, weight_based_dose).
drug_pk(hydroxychloroquine, half_life, '30-50 days').
drug_pk(hydroxychloroquine, plasma_protein_binding, '45%').
drug_pk(hydroxychloroquine, excretion_pathway, renal).
guideline_ref(hydroxychloroquine, 'WHO Guidelines for the treatment of malaria, 4th edition, 2021').
guideline_ref(hydroxychloroquine, 'CDC Malaria Treatment Guidelines, 2024').
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
drug_core_structure(sulfadoxine, 'Sulfonamide', 'WHO World Malaria Report 2023; Proc Natl Acad Sci U S A, 1997, 94(25): 13944-13949').
malaria_line_usage(sulfadoxine, 'Plasmodium falciparum', second_line, 'Used in combination with pyrimethamine as second-line intermittent preventive therapy; not recommended as monotherapy due to high resistance', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
malaria_line_usage(sulfadoxine, 'Plasmodium vivax', third_line, 'Limited activity against P. vivax; only used in combination regimens for multidrug-resistant cases', 'Malar J, 2016, 15: 63').
malaria_line_usage(sulfadoxine, 'Plasmodium ovale', third_line, 'No first-line indication; adjunctive use only in resistant cases', 'Clin Microbiol Rev, 2013, 26(1): 60-79').
malaria\_line\_usage(sulfadoxine, 'Plasmodium malariae', second\_line, 'Active against P. malariae; used as part of combination therapy', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
drug_synergy(sulfadoxine, pyrimethamine, 'Sequential blockade of de novo folate synthesis: sulfadoxine inhibits upstream DHPS, pyrimethamine inhibits downstream DHFR; synergistic effect, formulated as fixed-dose combination Fansidar', 'Trends Parasitol, 2013, 29(10): 505-515').
drug_synergy(sulfadoxine, amodiaquine, 'Combination for seasonal malaria chemoprevention in children; complementary resistance profiles', 'Lancet, 2016, 388(10058): 2179-2188').
full_moa_detail(sulfadoxine, review, 'Sulfadoxine is a structural analog of p-aminobenzoic acid (PABA) that competitively inhibits dihydropteroate synthase (DHPS), a rate-limiting enzyme in Plasmodium de novo folate biosynthesis. By blocking conversion of PABA to dihydropteroic acid, it disrupts pyrimidine nucleotide synthesis and parasite DNA replication. Human cells rely on dietary folate uptake rather than de novo synthesis, conferring selective parasite toxicity.', 'Triglia T et al. Proc Natl Acad Sci U S A, 1997, 94(25): 13944-13949').
full_moa_detail(sulfadoxine, chembl, 'Dihydropteroate synthase inhibitor; antifolate antimalarial; folate biosynthesis antagonist', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(sulfadoxine, ring_stage, weak_bactericidal).
drug_stage_effect(sulfadoxine, trophozoite, moderate_bactericidal).
drug_stage_effect(sulfadoxine, schizont, moderate_bactericidal).
drug_stage_effect(sulfadoxine, hypnozoite, no_effect).
drug_stage_effect(sulfadoxine, gametocyte, moderate_inhibit).
drug_combination_type(sulfadoxine, 'Fansidar').
drug_resistance_level(sulfadoxine, 'Plasmodium falciparum', high_resistance).
drug_resistance_level(sulfadoxine, 'Plasmodium vivax', medium_resistance).
drug_resistance_level(sulfadoxine, 'Plasmodium ovale', medium_resistance).
drug_resistance_level(sulfadoxine, 'Plasmodium malariae', sensitive).
cross_resistance(sulfadoxine, dapsone, full_cross, 'Trends Parasitol, 2013, 29(10): 505-515').
cross_resistance(sulfadoxine, sulfadiazine, full_cross, 'Antimicrob Agents Chemother, 2005, 49(8): 3334-3340').
drug_route(sulfadoxine, oral).
drug_special_pop(sulfadoxine, g6pd_deficiency, contraindicated).
drug_special_pop(sulfadoxine, pregnancy, category_c).
drug_special_pop(sulfadoxine, pediatric, weight_based_dose).
drug_pk(sulfadoxine, half_life, '100-200 hours').
drug_pk(sulfadoxine, plasma_protein_binding, '90%').
drug_pk(sulfadoxine, excretion_pathway, renal).
guideline_ref(sulfadoxine, 'WHO Guidelines for the treatment of malaria, 4th edition, 2021').
guideline_ref(sulfadoxine, 'WHO Seasonal Malaria Chemoprevention Guidelines, 2022').
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
drug_core_structure(pyrimethamine, 'Diaminopyrimidine', 'WHO World Malaria Report 2023; Proc Natl Acad Sci U S A, 1997, 94(4): 1124-1129').
malaria_line_usage(pyrimethamine, 'Plasmodium falciparum', second_line, 'Core component of Fansidar for intermittent preventive treatment; monotherapy not recommended due to rapid resistance', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
malaria_line_usage(pyrimethamine, 'Plasmodium vivax', second_line, 'Combined with sulfadoxine for second-line vivax malaria treatment', 'Malar J, 2016, 15: 63').
malaria_line_usage(pyrimethamine, 'Plasmodium ovale', third_line, 'Limited activity; only used in combination regimens', 'Clin Microbiol Rev, 2013, 26(1): 60-79').
malaria_line_usage(pyrimethamine, 'Plasmodium malariae', second_line, 'Active against erythrocytic stages; used in combination therapy', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
drug_synergy(pyrimethamine, sulfadoxine, 'Synergistic sequential blockade of folate pathway; combined as Fansidar to reduce resistance emergence', 'Trends Parasitol, 2013, 29(10): 505-515').
drug_synergy(pyrimethamine, sulfadiazine, 'First-line combination for toxoplasmosis; also shows activity against severe malaria', 'Clin Infect Dis, 2021, 73(12): e4281-e4290').
full_moa_detail(pyrimethamine, review, 'Pyrimethamine selectively binds to the dihydrofolate reductase (DHFR) domain of Plasmodium bifunctional DHFR-thymidylate synthase, blocking reduction of dihydrofolate to tetrahydrofolate — an essential cofactor for thymidine and purine synthesis. Its higher affinity for parasite DHFR than human DHFR enables selective antiprotozoal activity. Stepwise point mutations in PfDHFR progressively reduce drug binding affinity.', 'Sirawaraporn W et al. Proc Natl Acad Sci U S A, 1997, 94(4): 1124-1129').
full_moa_detail(pyrimethamine, chembl, 'Dihydrofolate reductase inhibitor; antifolate; thymidylate synthesis disruptor', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(pyrimethamine, ring_stage, weak_bactericidal).
drug_stage_effect(pyrimethamine, trophozoite, moderate_bactericidal).
drug_stage_effect(pyrimethamine, schizont, strong_bactericidal).
drug_stage_effect(pyrimethamine, hypnozoite, no_effect).
drug_stage_effect(pyrimethamine, gametocyte, weak_inhibit).
drug_combination_type(pyrimethamine, 'Fansidar').
drug_resistance_level(pyrimethamine, 'Plasmodium falciparum', high_resistance).
drug_resistance_level(pyrimethamine, 'Plasmodium vivax', medium_resistance).
drug_resistance_level(pyrimethamine, 'Plasmodium ovale', medium_resistance).
drug_resistance_level(pyrimethamine, 'Plasmodium malariae', sensitive).
cross_resistance(pyrimethamine, cycloguanil, partial_cross, 'Proc Natl Acad Sci U S A, 1997, 94(4): 1124-1129').
cross_resistance(pyrimethamine, trimethoprim, full_cross, 'Antimicrob Agents Chemother, 2001, 45(10): 2793-2799').
drug_route(pyrimethamine, oral).
drug_special_pop(pyrimethamine, g6pd_deficiency, safe_with_monitor).
drug_special_pop(pyrimethamine, pregnancy, category_x).
drug_special_pop(pyrimethamine, pediatric, weight_based_dose).
drug_pk(pyrimethamine, half_life, '80-100 hours').
drug_pk(pyrimethamine, plasma_protein_binding, '87%').
drug_pk(pyrimethamine, excretion_pathway, hepatic).
guideline_ref(pyrimethamine, 'WHO Guidelines for the treatment of malaria, 4th edition, 2021').
guideline_ref(pyrimethamine, 'CDC Toxoplasmosis Treatment Guidelines, 2023').
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
drug_core_structure(mefloquine, 'Methanolquinoline', 'WHO World Malaria Report 2023; Mol Microbiol, 2005, 57(4): 913-926').
malaria_line_usage(mefloquine, 'Plasmodium falciparum', second_line, 'Second-line treatment for uncomplicated falciparum malaria in ACT-limited settings; also used for chemoprophylaxis', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
malaria_line_usage(mefloquine, 'Plasmodium vivax', second_line, 'Second-line blood schizonticide; requires combination with primaquine for radical cure', 'Clin Infect Dis, 2020, 71(Suppl 3): S224-S231').
malaria_line_usage(mefloquine, 'Plasmodium ovale', second_line, 'Active against erythrocytic stages; primaquine co-administration required for cure', 'Clin Microbiol Rev, 2013, 26(1): 60-79').
malaria_line_usage(mefloquine, 'Plasmodium malariae', first_line, 'Highly active against P. malariae with low resistance prevalence', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
drug_synergy(mefloquine, artesunate, 'Artesunate rapidly reduces parasite biomass; mefloquine provides long-acting residual clearance; combination used in areas with ACT partner drug resistance', 'Lancet Infect Dis, 2017, 17(8): e268-e278').
drug_synergy(mefloquine, primaquine, 'Mefloquine clears blood-stage parasites; primaquine eliminates hypnozoites for radical cure of vivax malaria', 'N Engl J Med, 2019, 380(11): 1027-1038').
full_moa_detail(mefloquine, review, 'Mefloquine is a lipophilic methanolquinoline that concentrates in the Plasmodium digestive vacuole. It binds to heme and inhibits hemozoin crystallization, causing toxic free heme accumulation. It also interacts with PfMDR1 transporter, modulating drug efflux and vacuolar drug concentration. Its long half-life supports single-dose regimens but increases resistance selection pressure.', 'Sidhu AB et al. Mol Microbiol, 2005, 57(4): 913-926').
full_moa_detail(mefloquine, chembl, 'Hemozoin formation inhibitor; PfMDR1 modulator; blood schizonticide', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(mefloquine, ring_stage, moderate_bactericidal).
drug_stage_effect(mefloquine, trophozoite, strong_bactericidal).
drug_stage_effect(mefloquine, schizont, strong_bactericidal).
drug_stage_effect(mefloquine, hypnozoite, no_effect).
drug_stage_effect(mefloquine, gametocyte, weak_inhibit).
drug_combination_type(mefloquine, none).
drug_resistance_level(mefloquine, 'Plasmodium falciparum', medium_resistance).
drug_resistance_level(mefloquine, 'Plasmodium vivax', sensitive).
drug_resistance_level(mefloquine, 'Plasmodium ovale', sensitive).
drug_resistance_level(mefloquine, 'Plasmodium malariae', sensitive).
cross_resistance(mefloquine, quinine, partial_cross, 'Mol Microbiol, 2005, 57(4): 913-926').
cross_resistance(mefloquine, halofantrine, full_cross, 'Antimicrob Agents Chemother, 2000, 44(7): 1841-1846').
drug_route(mefloquine, oral).
drug_special_pop(mefloquine, g6pd_deficiency, safe).
drug_special_pop(mefloquine, pregnancy, category_b).
drug_special_pop(mefloquine, pediatric, weight_based_dose).
drug_pk(mefloquine, half_life, '14-21 days').
drug_pk(mefloquine, plasma_protein_binding, '98%').
drug_pk(mefloquine, excretion_pathway, hepatic).
guideline_ref(mefloquine, 'WHO Guidelines for the treatment of malaria, 4th edition, 2021').
guideline_ref(mefloquine, 'CDC Malaria Prophylaxis Guidelines, 2024').
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
drug_core_structure(atovaquone, 'Naphthoquinone', 'WHO World Malaria Report 2023; Antimicrob Agents Chemother, 2000, 44(8): 2100-2108').
malaria_line_usage(atovaquone, 'Plasmodium falciparum', first_line, 'First-line component of Malarone for uncomplicated falciparum malaria and chemoprophylaxis; never used as monotherapy', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
malaria_line_usage(atovaquone, 'Plasmodium vivax', second_line, 'Used with proguanil for second-line vivax malaria treatment; primaquine added for radical cure', 'Clin Infect Dis, 2020, 71(Suppl 3): S224-S231').
malaria_line_usage(atovaquone, 'Plasmodium ovale', second_line, 'Active against erythrocytic stages; combined with primaquine for radical cure', 'Clin Microbiol Rev, 2013, 26(1): 60-79').
malaria_line_usage(atovaquone, 'Plasmodium malariae', first_line, 'Highly active against P. malariae; preferred for chloroquine-intolerant patients', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
drug_synergy(atovaquone, proguanil, 'Atovaquone collapses mitochondrial membrane potential; proguanil potentiates depolarization and inhibits DHFR; synergistic effect formulated as Malarone, reducing resistance risk', 'Antimicrob Agents Chemother, 2000, 44(8): 2100-2108').
drug_synergy(atovaquone, azithromycin, 'Alternative combination for malaria prophylaxis in patients intolerant to standard regimens', 'J Travel Med, 2022, 29(7): taac078').
full_moa_detail(atovaquone, review, 'Atovaquone is a lipophilic hydroxynaphthoquinone that selectively binds to the Qo oxidation pocket of the Plasmodium cytochrome bc1 complex (Complex III) in the mitochondrial electron transport chain. This binding blocks electron transfer to cytochrome c, collapses mitochondrial membrane potential, and inhibits pyrimidine biosynthesis via dihydroorotate dehydrogenase coupling. Single point mutations in PfCYTB can abolish binding and cause high-level resistance.', 'Korsinczky M et al. Antimicrob Agents Chemother, 2000, 44(8): 2100-2108').
full_moa_detail(atovaquone, chembl, 'Cytochrome bc1 inhibitor; mitochondrial electron transport disruptor; dihydroorotate dehydrogenase suppressor', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(atovaquone, ring_stage, moderate_bactericidal).
drug_stage_effect(atovaquone, trophozoite, strong_bactericidal).
drug_stage_effect(atovaquone, schizont, strong_bactericidal).
drug_stage_effect(atovaquone, hypnozoite, no_effect).
drug_stage_effect(atovaquone, gametocyte, moderate_inhibit).
drug_combination_type(atovaquone, 'Malarone').
drug_resistance_level(atovaquone, 'Plasmodium falciparum', medium_resistance).
drug_resistance_level(atovaquone, 'Plasmodium vivax', sensitive).
drug_resistance_level(atovaquone, 'Plasmodium ovale', sensitive).
drug_resistance_level(atovaquone, 'Plasmodium malariae', sensitive).
cross_resistance(atovaquone, buparvaquone, partial_cross, 'Antimicrob Agents Chemother, 2000, 44(8): 2100-2108').
cross_resistance(atovaquone, decoquinate, full_cross, 'Parasitology, 2010, 137(5): 799-807').
drug_route(atovaquone, oral).
drug_special_pop(atovaquone, g6pd_deficiency, safe).
drug_special_pop(atovaquone, pregnancy, category_c).
drug_special_pop(atovaquone, pediatric, weight_based_dose).
drug_pk(atovaquone, half_life, '2-3 days').
drug_pk(atovaquone, plasma_protein_binding, '99.9%').
drug_pk(atovaquone, excretion_pathway, biliary).
guideline_ref(atovaquone, 'WHO Guidelines for the treatment of malaria, 4th edition, 2021').
guideline_ref(atovaquone, 'CDC Malaria Prophylaxis Guidelines, 2024').
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
drug_core_structure(proguanil, 'Biguanide', 'WHO World Malaria Report 2023; Proc Natl Acad Sci U S A, 1997, 94(4): 1124-1129').
malaria_line_usage(proguanil, 'Plasmodium falciparum', first_line, 'First-line component of Malarone combination therapy; also used for standalone chemoprophylaxis in some regions', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
malaria_line_usage(proguanil, 'Plasmodium vivax', second_line, 'Combined with atovaquone for second-line vivax malaria treatment', 'Clin Infect Dis, 2020, 71(Suppl 3): S224-S231').
malaria_line_usage(proguanil, 'Plasmodium ovale', second_line, 'Active against erythrocytic stages; adjunctive role in combination regimens', 'Clin Microbiol Rev, 2013, 26(1): 60-79').
malaria_line_usage(proguanil, 'Plasmodium malariae', first_line, 'Effective against P. malariae; used in combination regimens', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
drug_synergy(proguanil, atovaquone, 'Proguanil enhances atovaquone-induced mitochondrial depolarization independent of DHFR inhibition; synergistic activity in Malarone formulation', 'Antimicrob Agents Chemother, 2000, 44(8): 2100-2108').
drug_synergy(proguanil, chloroquine, 'Historical combination for malaria prophylaxis; reduced efficacy due to widespread resistance', 'Malar J, 2018, 17(1): 320').
full_moa_detail(proguanil, review, 'Proguanil is a prodrug metabolized by hepatic CYP2C19 to its active form cycloguanil, a dihydrofolate reductase inhibitor that blocks Plasmodium tetrahydrofolate synthesis and DNA replication. It also exerts direct, DHFR-independent synergistic effects with atovaquone by lowering the threshold for mitochondrial membrane depolarization. Host CYP2C19 poor metabolizers have reduced drug activation and treatment failure risk.', 'Herrlin K et al. Clin Pharmacol Ther, 2000, 68(2): 189-198').
full_moa_detail(proguanil, chembl, 'Dihydrofolate reductase inhibitor (prodrug); mitochondrial sensitizer; antifolate biguanide', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(proguanil, ring_stage, weak_bactericidal).
drug_stage_effect(proguanil, trophozoite, moderate_bactericidal).
drug_stage_effect(proguanil, schizont, moderate_bactericidal).
drug_stage_effect(proguanil, hypnozoite, no_effect).
drug_stage_effect(proguanil, gametocyte, weak_inhibit).
drug_combination_type(proguanil, 'Malarone').
drug_resistance_level(proguanil, 'Plasmodium falciparum', medium_resistance).
drug_resistance_level(proguanil, 'Plasmodium vivax', medium_resistance).
drug_resistance_level(proguanil, 'Plasmodium ovale', sensitive).
drug_resistance_level(proguanil, 'Plasmodium malariae', sensitive).
cross_resistance(proguanil, pyrimethamine, partial_cross, 'Proc Natl Acad Sci U S A, 1997, 94(4): 1124-1129').
cross_resistance(proguanil, chlorproguanil, full_cross, 'J Antimicrob Chemother, 2003, 52(2): 211-217').
drug_route(proguanil, oral).
drug_special_pop(proguanil, g6pd_deficiency, safe).
drug_special_pop(proguanil, pregnancy, category_c).
drug_special_pop(proguanil, pediatric, weight_based_dose).
drug_pk(proguanil, half_life, '12-21 hours').
drug_pk(proguanil, plasma_protein_binding, '75%').
drug_pk(proguanil, excretion_pathway, renal).
guideline_ref(proguanil, 'WHO Guidelines for the treatment of malaria, 4th edition, 2021').
guideline_ref(proguanil, 'CDC Malaria Prophylaxis Guidelines, 2024').
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
drug_core_structure(quinine, 'Methanolquinoline alkaloid', 'WHO World Malaria Report 2023; Mol Microbiol, 2004, 52(4): 985-997').
malaria_line_usage(quinine, 'Plasmodium falciparum', second_line, 'Second-line parenteral treatment for severe falciparum malaria; also used for uncomplicated multidrug-resistant malaria', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
malaria_line_usage(quinine, 'Plasmodium vivax', second_line, 'Second-line treatment for severe vivax malaria; combined with primaquine for radical cure', 'Clin Infect Dis, 2020, 71(Suppl 3): S224-S231').
malaria_line_usage(quinine, 'Plasmodium ovale', second_line, 'Active against erythrocytic stages; primaquine required for radical cure', 'Clin Microbiol Rev, 2013, 26(1): 60-79').
malaria_line_usage(quinine, 'Plasmodium malariae', first_line, 'Highly active against P. malariae; used for severe cases', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
drug_synergy(quinine, doxycycline, 'Quinine provides rapid parasiticidal effect; doxycycline extends clearance and reduces resistance selection; standard 7-day regimen for multidrug-resistant malaria', 'Lancet Infect Dis, 2016, 16(11): e255-e266').
drug_synergy(quinine, clindamycin, 'Alternative combination for pregnant women and children where doxycycline is contraindicated', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
full_moa_detail(quinine, review, 'Quinine is a natural cinchona alkaloid that acts primarily as a blood schizonticide. It intercalates into heme and inhibits hemozoin crystallization in the digestive vacuole, causing toxic free heme accumulation and parasite membrane damage. It also weakly intercalates into parasite DNA, inhibiting nucleic acid synthesis. Multiple transporters including PfCRT, PfMDR1 and PfNHE contribute to low-level resistance via altered vacuolar pH and drug efflux.', 'Ferdig MT et al. Mol Microbiol, 2004, 52(4): 985-997').
full_moa_detail(quinine, chembl, 'Hemozoin formation inhibitor; DNA intercalator; natural alkaloid antimalarial', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(quinine, ring_stage, moderate_bactericidal).
drug_stage_effect(quinine, trophozoite, strong_bactericidal).
drug_stage_effect(quinine, schizont, strong_bactericidal).
drug_stage_effect(quinine, hypnozoite, no_effect).
drug_stage_effect(quinine, gametocyte, weak_inhibit).
drug_combination_type(quinine, none).
drug_resistance_level(quinine, 'Plasmodium falciparum', medium_resistance).
drug_resistance_level(quinine, 'Plasmodium vivax', sensitive).
drug_resistance_level(quinine, 'Plasmodium ovale', sensitive).
drug_resistance_level(quinine, 'Plasmodium malariae', sensitive).
cross_resistance(quinine, chloroquine, partial_cross, 'Mol Microbiol, 2004, 52(4): 985-997').
cross_resistance(quinine, mefloquine, partial_cross, 'Antimicrob Agents Chemother, 2005, 49(8): 3201-3207').
drug_route(quinine, oral).
drug_route(quinine, intravenous).
drug_route(quinine, intramuscular).
drug_special_pop(quinine, g6pd_deficiency, safe_with_monitor).
drug_special_pop(quinine, pregnancy, category_c).
drug_special_pop(quinine, pediatric, weight_based_dose).
drug_pk(quinine, half_life, '8-14 hours').
drug_pk(quinine, plasma_protein_binding, '70-90%').
drug_pk(quinine, excretion_pathway, hepatic).
guideline_ref(quinine, 'WHO Guidelines for the treatment of malaria, 4th edition, 2021').
guideline_ref(quinine, 'WHO Severe Malaria Treatment Guidelines, 2023').
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
drug_core_structure(artemether, '1,2,4-Trioxane endoperoxide', 'WHO World Malaria Report 2023; Nature, 2014, 505(7481): 50-55').
malaria_line_usage(artemether, 'Plasmodium falciparum', first_line, 'First-line ACT component (Coartem) for uncomplicated falciparum malaria; also used for severe malaria', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
malaria_line_usage(artemether, 'Plasmodium vivax', first_line, 'First-line blood schizonticide for vivax malaria; combined with primaquine for radical cure', 'N Engl J Med, 2019, 380(11): 1027-1038').
malaria_line_usage(artemether, 'Plasmodium ovale', first_line, 'Rapidly clears erythrocytic stages; primaquine co-administration required for radical cure', 'Clin Microbiol Rev, 2013, 26(1): 60-79').
malaria_line_usage(artemether, 'Plasmodium malariae', first_line, 'Highly active; rapidly reduces parasite biomass in acute infection', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
drug_synergy(artemether, lumefantrine, 'Artemether provides fast-acting parasite reduction; lumefantrine provides long-acting residual clearance; fixed-dose combination Coartem is WHO-recommended first-line ACT', 'Lancet, 2018, 392(10151): 1009-1023').
drug_synergy(artemether, primaquine, 'Artemether clears blood-stage parasites; primaquine eliminates hypnozoites and gametocytes for radical cure and transmission blocking', 'Lancet Infect Dis, 2020, 20(12): e363-e374').
full_moa_detail(artemether, review, 'Artemether is a lipophilic artemisinin derivative containing an endoperoxide bridge. In the parasite digestive vacuole, ferrous iron from heme cleaves the endoperoxide bond, generating highly reactive carbon-centered free radicals. These radicals alkylate multiple parasite proteins including PfATP6 (SERCA calcium pump), PI3K and cytoskeletal proteins, disrupting calcium homeostasis, protein trafficking and membrane integrity. It kills all asexual blood stages rapidly, especially ring-stage parasites.', 'Ariey F et al. Nature, 2014, 505(7481): 50-55').
full_moa_detail(artemether, chembl, 'Endoperoxide prodrug; heme-activated free radical generator; multi-target alkylating agent', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(artemether, ring_stage, strong_bactericidal).
drug_stage_effect(artemether, trophozoite, strong_bactericidal).
drug_stage_effect(artemether, schizont, moderate_bactericidal).
drug_stage_effect(artemether, hypnozoite, no_effect).
drug_stage_effect(artemether, gametocyte, moderate_inhibit).
drug_combination_type(artemether, 'Coartem').
drug_resistance_level(artemether, 'Plasmodium falciparum', medium_resistance).
drug_resistance_level(artemether, 'Plasmodium vivax', sensitive).
drug_resistance_level(artemether, 'Plasmodium ovale', sensitive).
drug_resistance_level(artemether, 'Plasmodium malariae', sensitive).
cross_resistance(artemether, artesunate, full_cross, 'Nature, 2014, 505(7481): 50-55').
cross_resistance(artemether, artemisinin, full_cross, 'N Engl J Med, 2015, 373(7): 615-625').
drug_route(artemether, oral).
drug_route(artemether, intramuscular).
drug_special_pop(artemether, g6pd_deficiency, safe).
drug_special_pop(artemether, pregnancy, category_c).
drug_special_pop(artemether, pediatric, weight_based_dose).
drug_pk(artemether, half_life, '1-3 hours').
drug_pk(artemether, plasma_protein_binding, '95%').
drug_pk(artemether, excretion_pathway, hepatic).
guideline_ref(artemether, 'WHO Guidelines for the treatment of malaria, 4th edition, 2021').
guideline_ref(artemether, 'WHO ACT Policy Recommendations, 2023').
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
drug_core_structure(lumefantrine, 'Aryl amino alcohol', 'WHO World Malaria Report 2023; J Infect Dis, 2005, 191(6): 1014-1017').
malaria_line_usage(lumefantrine, 'Plasmodium falciparum', first_line, 'First-line partner drug in artemether-lumefantrine ACT; never used as monotherapy', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
malaria_line_usage(lumefantrine, 'Plasmodium vivax', second_line, 'Active against vivax malaria; used off-label in combination with artemether', 'Malar J, 2017, 16(1): 421').
malaria_line_usage(lumefantrine, 'Plasmodium ovale', third_line, 'Limited clinical data; not routinely recommended', 'Clin Microbiol Rev, 2013, 26(1): 60-79').
malaria_line_usage(lumefantrine, 'Plasmodium malariae', second_line, 'Active but limited clinical use data', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
drug_synergy(lumefantrine, artemether, 'Long-acting partner drug that clears residual parasites after fast-acting artemether; combination reduces resistance selection and improves cure rates', 'Lancet, 2018, 392(10151): 1009-1023').
drug_synergy(lumefantrine, primaquine, 'Adds gametocytocidal and hypnozoiticidal activity to ACT regimen for radical cure of relapsing malaria', 'Lancet Infect Dis, 2020, 20(12): e363-e374').
full_moa_detail(lumefantrine, review, 'Lumefantrine is a highly lipophilic arylamino alcohol that concentrates in the Plasmodium digestive vacuole. It binds to ferriprotoporphyrin IX and inhibits hemozoin polymerization, causing toxic heme accumulation and parasite death. Its long elimination half-life provides sustained post-treatment prophylaxis. PfMDR1 gene amplification and N86 wild-type alleles reduce drug susceptibility by increasing vacuolar efflux.', 'Sisowath C et al. J Infect Dis, 2005, 191(6): 1014-1017').
full_moa_detail(lumefantrine, chembl, 'Hemozoin formation inhibitor; ferriprotoporphyrin IX binder; long-acting ACT partner drug', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(lumefantrine, ring_stage, weak_bactericidal).
drug_stage_effect(lumefantrine, trophozoite, strong_bactericidal).
drug_stage_effect(lumefantrine, schizont, strong_bactericidal).
drug_stage_effect(lumefantrine, hypnozoite, no_effect).
drug_stage_effect(lumefantrine, gametocyte, weak_inhibit).
drug_combination_type(lumefantrine, 'Coartem').
drug_resistance_level(lumefantrine, 'Plasmodium falciparum', medium_resistance).
drug_resistance_level(lumefantrine, 'Plasmodium vivax', sensitive).
drug_resistance_level(lumefantrine, 'Plasmodium ovale', sensitive).
drug_resistance_level(lumefantrine, 'Plasmodium malariae', sensitive).
cross_resistance(lumefantrine, mefloquine, partial_cross, 'Antimicrob Agents Chemother, 2008, 52(5): 1691-1697').
cross_resistance(lumefantrine, halofantrine, partial_cross, 'J Infect Dis, 2005, 191(6): 1014-1017').
drug_route(lumefantrine, oral).
drug_special_pop(lumefantrine, g6pd_deficiency, safe).
drug_special_pop(lumefantrine, pregnancy, category_c).
drug_special_pop(lumefantrine, pediatric, weight_based_dose).
drug_pk(lumefantrine, half_life, '3-6 days').
drug_pk(lumefantrine, plasma_protein_binding, '99%').
drug_pk(lumefantrine, excretion_pathway, biliary).
guideline_ref(lumefantrine, 'WHO Guidelines for the treatment of malaria, 4th edition, 2021').
guideline_ref(lumefantrine, 'WHO ACT Policy Recommendations, 2023').
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
drug_core_structure(tafenoquine, '8-Aminoquinoline', 'WHO World Malaria Report 2023; N Engl J Med, 2018, 379(1): 1-12').
malaria_line_usage(tafenoquine, 'Plasmodium vivax', first_line, 'First-line single-dose radical cure agent for P. vivax malaria; co-administered with chloroquine or ACT', 'N Engl J Med, 2018, 379(1): 1-12').
malaria_line_usage(tafenoquine, 'Plasmodium ovale', second_line, 'Active against P. ovale hypnozoites; limited clinical data compared to primaquine', 'Clin Microbiol Rev, 2013, 26(1): 60-79').
malaria_line_usage(tafenoquine, 'Plasmodium falciparum', second_line, 'Moderate blood-stage activity plus strong gametocytocidal effect for transmission blocking', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
malaria_line_usage(tafenoquine, 'Plasmodium malariae', third_line, 'Limited clinical indication; not routinely used', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
drug_synergy(tafenoquine, chloroquine, 'Chloroquine clears erythrocytic parasites; single-dose tafenoquine eradicates hepatic hypnozoites; approved co-formulation for vivax radical cure', 'N Engl J Med, 2018, 379(1): 1-12').
drug_synergy(tafenoquine, artemether, 'ACT provides fast blood-stage clearance; tafenoquine provides single-dose radical cure and transmission blocking', 'Lancet Infect Dis, 2020, 20(12): e363-e374').
full_moa_detail(tafenoquine, review, 'Tafenoquine is a long-acting 8-aminoquinoline prodrug activated by hepatic CYP2D6 into reactive quinone-imine metabolites. These metabolites accumulate in Plasmodium hepatic hypnozoites, disrupt mitochondrial electron transport via bc1 complex inhibition, induce oxidative stress and cause hypnozoite death. Its 14-day half-life enables single-dose radical cure, improving adherence compared to 14-day primaquine regimens.', 'Lancet Infect Dis, 2019, 19(8): 873-882').
full_moa_detail(tafenoquine, chembl, 'Hypnozoitocidal 8-aminoquinoline; mitochondrial electron transport inhibitor; oxidative stress inducer', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(tafenoquine, ring_stage, weak_bactericidal).
drug_stage_effect(tafenoquine, trophozoite, moderate_bactericidal).
drug_stage_effect(tafenoquine, schizont, moderate_bactericidal).
drug_stage_effect(tafenoquine, hypnozoite, strong_bactericidal).
drug_stage_effect(tafenoquine, gametocyte, strong_bactericidal).
drug_combination_type(tafenoquine, none).
drug_resistance_level(tafenoquine, 'Plasmodium falciparum', sensitive).
drug_resistance_level(tafenoquine, 'Plasmodium vivax', sensitive).
drug_resistance_level(tafenoquine, 'Plasmodium ovale', sensitive).
drug_resistance_level(tafenoquine, 'Plasmodium malariae', sensitive).
cross_resistance(tafenoquine, primaquine, partial_cross, 'Lancet Infect Dis, 2019, 19(8): 873-882').
cross_resistance(tafenoquine, pamaquine, full_cross, 'Antimicrob Agents Chemother, 2019, 63(10): e00972-19').
drug_route(tafenoquine, oral).
drug_special_pop(tafenoquine, g6pd_deficiency, contraindicated).
drug_special_pop(tafenoquine, pregnancy, category_x).
drug_special_pop(tafenoquine, pediatric, approved_over_16_years).
drug_pk(tafenoquine, half_life, '14 days').
drug_pk(tafenoquine, plasma_protein_binding, '99%').
drug_pk(tafenoquine, excretion_pathway, hepatic).
guideline_ref(tafenoquine, 'WHO Guidelines for the radical cure of P. vivax, 2020').
guideline_ref(tafenoquine, 'CDC Malaria Treatment Guidelines, 2024').
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
drug_core_structure(artesunate, '1,2,4-Trioxane endoperoxide', 'WHO World Malaria Report 2023; N Engl J Med, 2010, 363(20): 1917-1926').
malaria_line_usage(artesunate, 'Plasmodium falciparum', first_line, 'First-line parenteral treatment for severe falciparum malaria; also core component of oral ACT regimens', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
malaria_line_usage(artesunate, 'Plasmodium vivax', first_line, 'First-line treatment for severe vivax malaria; combined with primaquine for radical cure', 'Clin Infect Dis, 2020, 71(Suppl 3): S224-S231').
malaria_line_usage(artesunate, 'Plasmodium ovale', first_line, 'Rapidly clears erythrocytic stages; primaquine required for radical cure', 'Clin Microbiol Rev, 2013, 26(1): 60-79').
malaria_line_usage(artesunate, 'Plasmodium malariae', first_line, 'Highly active; preferred for severe P. malariae infection', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
drug_synergy(artesunate, amodiaquine, 'Fixed-dose ACT combination; fast-acting artesunate plus long-acting amodiaquine; first-line in many African countries', 'Lancet, 2018, 392(10151): 1009-1023').
drug_synergy(artesunate, mefloquine, 'Second-line ACT for multidrug-resistant falciparum malaria in Southeast Asia', 'N Engl J Med, 2008, 359(18): 1865-1875').
full_moa_detail(artesunate, review, 'Artesunate is a water-soluble hemisuccinate ester prodrug of dihydroartemisinin (DHA), the active metabolite. After rapid hydrolysis in plasma, DHA enters parasite digestive vacuoles where heme iron cleaves its endoperoxide bridge, generating cytotoxic carbon radicals. These radicals alkylate hundreds of parasite proteins including PfATP6, PfPI3K and translation machinery, causing widespread cellular damage and rapid parasite death. It is the most rapidly acting antimalarial for severe disease.', 'Dondorp AM et al. N Engl J Med, 2010, 363(20): 1917-1926').
full_moa_detail(artesunate, chembl, 'Endoperoxide prodrug; heme-activated alkylating agent; multi-target fast-acting schizonticide', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(artesunate, ring_stage, strong_bactericidal).
drug_stage_effect(artesunate, trophozoite, strong_bactericidal).
drug_stage_effect(artesunate, schizont, moderate_bactericidal).
drug_stage_effect(artesunate, hypnozoite, no_effect).
drug_stage_effect(artesunate, gametocyte, moderate_inhibit).
drug_combination_type(artesunate, 'Artesunate-Amodiaquine').
drug_resistance_level(artesunate, 'Plasmodium falciparum', medium_resistance).
drug_resistance_level(artesunate, 'Plasmodium vivax', sensitive).
drug_resistance_level(artesunate, 'Plasmodium ovale', sensitive).
drug_resistance_level(artesunate, 'Plasmodium malariae', sensitive).
cross_resistance(artesunate, artemether, full_cross, 'Nature, 2014, 505(7481): 50-55').
cross_resistance(artesunate, dihydroartemisinin, full_cross, 'N Engl J Med, 2015, 373(7): 615-625').
drug_route(artesunate, oral).
drug_route(artesunate, intravenous).
drug_route(artesunate, intramuscular).
drug_route(artesunate, rectal).
drug_special_pop(artesunate, g6pd_deficiency, safe).
drug_special_pop(artesunate, pregnancy, category_c).
drug_special_pop(artesunate, pediatric, weight_based_dose).
drug_pk(artesunate, half_life, '0.5-1 hour').
drug_pk(artesunate, plasma_protein_binding, '40-80%').
drug_pk(artesunate, excretion_pathway, hepatic).
guideline_ref(artesunate, 'WHO Guidelines for the treatment of malaria, 4th edition, 2021').
guideline_ref(artesunate, 'WHO Severe Malaria Treatment Guidelines, 2023').
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
drug_core_structure(sj733, 'Dihydroisoquinolone', 'Nature, 2014, 511(7508): 249-253; Sci Transl Med, 2017, 9(407): eaam9069').
malaria_line_usage(sj733, 'Plasmodium falciparum', investigational, 'Phase II candidate for uncomplicated falciparum malaria; novel mechanism to overcome resistance', 'Sci Transl Med, 2017, 9(407): eaam9069').
malaria_line_usage(sj733, 'Plasmodium vivax', investigational, 'Preclinical activity demonstrated; no clinical phase II data yet', 'Antimicrob Agents Chemother, 2018, 62(10): e01128-18').
malaria_line_usage(sj733, 'Plasmodium ovale', not_evaluated, 'No published efficacy data', 'Preclinical data only').
malaria_line_usage(sj733, 'Plasmodium malariae', not_evaluated, 'No published efficacy data', 'Preclinical data only').
drug_synergy(sj733, artemisinin, 'Synergistic activity against artemisinin-resistant strains; potential ACT partner drug with novel target', 'Nature, 2014, 511(7508): 249-253').
drug_synergy(sj733, piperaquine, 'Combination under preclinical evaluation for multidrug-resistant malaria', 'Antimicrob Agents Chemother, 2018, 62(10): e01128-18').
full_moa_detail(sj733, review, 'SJ733 is a dihydroisoquinolone that selectively inhibits the Plasmodium falciparum P4-type ATPase PfATP4, a sodium efflux pump on the parasite plasma membrane. Inhibition causes intracellular sodium accumulation, cell swelling, disruption of membrane potential and pH homeostasis, and rapid parasite death across all asexual blood stages. It retains activity against strains resistant to all current antimalarial classes.', 'Spillman NJ et al. Nature, 2014, 511(7508): 249-253').
full_moa_detail(sj733, chembl, 'PfATP4 sodium ATPase inhibitor; novel mechanism antimalarial candidate', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(sj733, ring_stage, strong_bactericidal).
drug_stage_effect(sj733, trophozoite, strong_bactericidal).
drug_stage_effect(sj733, schizont, strong_bactericidal).
drug_stage_effect(sj733, hypnozoite, not_evaluated).
drug_stage_effect(sj733, gametocyte, moderate_inhibit).
drug_combination_type(sj733, investigational).
drug_resistance_level(sj733, 'Plasmodium falciparum', sensitive).
drug_resistance_level(sj733, 'Plasmodium vivax', not_evaluated).
drug_resistance_level(sj733, 'Plasmodium ovale', not_evaluated).
drug_resistance_level(sj733, 'Plasmodium malariae', not_evaluated).
cross_resistance(sj733, cipargamin, partial_cross, 'Nature, 2014, 511(7508): 249-253').
cross_resistance(sj733, chloroquine, no_cross, 'Sci Transl Med, 2017, 9(407): eaam9069').
drug_route(sj733, oral).
drug_special_pop(sj733, g6pd_deficiency, under_investigation).
drug_special_pop(sj733, pregnancy, under_investigation).
drug_special_pop(sj733, pediatric, under_investigation).
drug_pk(sj733, half_life, '18-24 hours').
drug_pk(sj733, plasma_protein_binding, '95%').
drug_pk(sj733, excretion_pathway, hepatic).
guideline_ref(sj733, 'WHO Antimalarial Drug Development Pipeline Report, 2024').
guideline_ref(sj733, 'MMV Malaria Drug Portfolio, 2025').
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
drug_core_structure(aq_13_dihydrochloride, '4-Aminoquinoline', 'Antimicrob Agents Chemother, 2016, 60(10): 6003-6011').
malaria_line_usage(aq_13_dihydrochloride, 'Plasmodium falciparum', investigational, 'Phase II candidate designed to overcome chloroquine resistance', 'Antimicrob Agents Chemother, 2016, 60(10): 6003-6011').
malaria_line_usage(aq_13_dihydrochloride, 'Plasmodium vivax', investigational, 'Preclinical activity demonstrated; limited clinical data', 'Malar J, 2018, 17(1): 245').
malaria_line_usage(aq_13_dihydrochloride, 'Plasmodium ovale', not_evaluated, 'No published efficacy data', 'Preclinical data only').
malaria_line_usage(aq_13_dihydrochloride, 'Plasmodium malariae', not_evaluated, 'No published efficacy data', 'Preclinical data only').
drug_synergy(aq_13_dihydrochloride, primaquine, 'Designed as chloroquine replacement for radical cure of relapsing malaria; retains activity in PfCRT-mutant strains', 'Antimicrob Agents Chemother, 2016, 60(10): 6003-6011').
drug_synergy(aq_13_dihydrochloride, artesunate, 'Potential ACT partner drug for chloroquine-resistant regions', 'Malar J, 2018, 17(1): 245').
full_moa_detail(aq_13_dihydrochloride, review, 'AQ-13 is a 4-aminoquinoline analog with a shortened side chain designed to evade PfCRT-mediated efflux. Like chloroquine, it accumulates in the digestive vacuole, binds ferriprotoporphyrin IX and inhibits hemozoin crystallization. Its structural modification reduces recognition by the PfCRT K76T mutant transporter, restoring activity against chloroquine-resistant P. falciparum strains.', 'Antimicrob Agents Chemother, 2016, 60(10): 6003-6011').
full_moa_detail(aq_13_dihydrochloride, chembl, 'Hemozoin formation inhibitor; PfCRT-evading 4-aminoquinoline candidate', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(aq_13_dihydrochloride, ring_stage, weak_bactericidal).
drug_stage_effect(aq_13_dihydrochloride, trophozoite, strong_bactericidal).
drug_stage_effect(aq_13_dihydrochloride, schizont, strong_bactericidal).
drug_stage_effect(aq_13_dihydrochloride, hypnozoite, no_effect).
drug_stage_effect(aq_13_dihydrochloride, gametocyte, weak_inhibit).
drug_combination_type(aq_13_dihydrochloride, investigational).
drug_resistance_level(aq_13_dihydrochloride, 'Plasmodium falciparum', sensitive).
drug_resistance_level(aq_13_dihydrochloride, 'Plasmodium vivax', sensitive).
drug_resistance_level(aq_13_dihydrochloride, 'Plasmodium ovale', not_evaluated).
drug_resistance_level(aq_13_dihydrochloride, 'Plasmodium malariae', not_evaluated).
cross_resistance(aq_13_dihydrochloride, chloroquine, partial_cross, 'Antimicrob Agents Chemother, 2016, 60(10): 6003-6011').
cross_resistance(aq_13_dihydrochloride, amodiaquine, partial_cross, 'Malar J, 2018, 17(1): 245').
drug_route(aq_13_dihydrochloride, oral).
drug_special_pop(aq_13_dihydrochloride, g6pd_deficiency, under_investigation).
drug_special_pop(aq_13_dihydrochloride, pregnancy, under_investigation).
drug_special_pop(aq_13_dihydrochloride, pediatric, under_investigation).
drug_pk(aq_13_dihydrochloride, half_life, '5-7 days').
drug_pk(aq_13_dihydrochloride, plasma_protein_binding, '60%').
drug_pk(aq_13_dihydrochloride, excretion_pathway, renal).
guideline_ref(aq_13_dihydrochloride, 'WHO Antimalarial Drug Development Pipeline Report, 2024').
guideline_ref(aq_13_dihydrochloride, 'MMV Malaria Drug Portfolio, 2025').
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
drug_core_structure(cipargamin, 'Spiroindolone', 'Science, 2010, 329(5996): 1175-1180').
malaria_line_usage(cipargamin, 'Plasmodium falciparum', investigational, 'Phase II candidate with potent activity against multidrug-resistant and artemisinin-resistant strains', 'Science, 2010, 329(5996): 1175-1180').
malaria_line_usage(cipargamin, 'Plasmodium vivax', investigational, 'Preclinical blood-stage activity demonstrated', 'Antimicrob Agents Chemother, 2014, 58(12): 7214-7221').
malaria_line_usage(cipargamin, 'Plasmodium ovale', not_evaluated, 'No published efficacy data', 'Preclinical data only').
malaria_line_usage(cipargamin, 'Plasmodium malariae', not_evaluated, 'No published efficacy data', 'Preclinical data only').
drug_synergy(cipargamin, piperaquine, 'Lead combination under clinical development for single-dose cure of falciparum malaria', 'Lancet Infect Dis, 2021, 21(8): 1119-1128').
drug_synergy(cipargamin, primaquine, 'Potential single-dose radical cure regimen for vivax malaria', 'Antimicrob Agents Chemother, 2014, 58(12): 7214-7221').
full_moa_detail(cipargamin, review, 'Cipargamin is the first-in-class spiroindolone antimalarial that potently inhibits PfATP4, a Plasmodium-specific P-type Na+-ATPase. Inhibition disrupts sodium homeostasis, causes cytoplasmic alkalinization, cell swelling and rapid parasite death at nanomolar concentrations. It is active against all asexual blood stages and gametocytes, and retains full efficacy against strains resistant to all currently marketed antimalarials.', 'Rottmann M et al. Science, 2010, 329(5996): 1175-1180').
full_moa_detail(cipargamin, chembl, 'PfATP4 sodium ATPase inhibitor; spiroindolone class; multi-stage antimalarial', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(cipargamin, ring_stage, strong_bactericidal).
drug_stage_effect(cipargamin, trophozoite, strong_bactericidal).
drug_stage_effect(cipargamin, schizont, strong_bactericidal).
drug_stage_effect(cipargamin, hypnozoite, not_evaluated).
drug_stage_effect(cipargamin, gametocyte, strong_bactericidal).
drug_combination_type(cipargamin, investigational).
drug_resistance_level(cipargamin, 'Plasmodium falciparum', sensitive).
drug_resistance_level(cipargamin, 'Plasmodium vivax', sensitive).
drug_resistance_level(cipargamin, 'Plasmodium ovale', not_evaluated).
drug_resistance_level(cipargamin, 'Plasmodium malariae', not_evaluated).
cross_resistance(cipargamin, sj733, partial_cross, 'Science, 2010, 329(5996): 1175-1180').
cross_resistance(cipargamin, chloroquine, no_cross, 'Lancet Infect Dis, 2021, 21(8): 1119-1128').
drug_route(cipargamin, oral).
drug_special_pop(cipargamin, g6pd_deficiency, under_investigation).
drug_special_pop(cipargamin, pregnancy, under_investigation).
drug_special_pop(cipargamin, pediatric, under_investigation).
drug_pk(cipargamin, half_life, '20-30 hours').
drug_pk(cipargamin, plasma_protein_binding, '98%').
drug_pk(cipargamin, excretion_pathway, hepatic).
guideline_ref(cipargamin, 'WHO Antimalarial Drug Development Pipeline Report, 2024').
guideline_ref(cipargamin, 'MMV Malaria Drug Portfolio, 2025').
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
drug_core_structure(imatinib, '2-Phenylaminopyrimidine', 'Nat Commun, 2017, 8(1): 1420').
malaria_line_usage(imatinib, 'Plasmodium falciparum', investigational, 'Repurposed drug candidate as adjunctive therapy for severe malaria; targets host kinase pathway', 'Nat Commun, 2017, 8(1): 1420').
malaria_line_usage(imatinib, 'Plasmodium vivax', not_evaluated, 'Limited preclinical data', 'Preclinical repurposing studies only').
malaria_line_usage(imatinib, 'Plasmodium ovale', not_evaluated, 'No published data', 'Preclinical data only').
malaria_line_usage(imatinib, 'Plasmodium malariae', not_evaluated, 'No published data', 'Preclinical data only').
drug_synergy(imatinib, artesunate, 'Adjunctive combination under investigation for severe malaria; reduces parasite sequestration and improves outcomes', 'Cell Host Microbe, 2019, 25(4): 538-550').
drug_synergy(imatinib, chloroquine, 'Preclinical synergy demonstrated against chloroquine-resistant strains via host pathway modulation', 'Antimicrob Agents Chemother, 2018, 62(5): e02443-17').
full_moa_detail(imatinib, review, 'Imatinib is a tyrosine kinase inhibitor repurposed for malaria that targets host erythrocyte band 3 protein tyrosine phosphorylation. By inhibiting host Abl and Src family kinases, it prevents Plasmodium-induced modification of the red blood cell cytoskeleton, reduces cytoadherence and rosetting of infected erythrocytes, and ameliorates severe malaria pathology. It does not directly kill parasites but reduces disease severity by modulating host-parasite interactions.', 'Hammam K et al. Nat Commun, 2017, 8(1): 1420').
full_moa_detail(imatinib, chembl, 'Host tyrosine kinase inhibitor; band 3 phosphorylation modulator; adjunctive antimalarial', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(imatinib, ring_stage, weak_inhibit).
drug_stage_effect(imatinib, trophozoite, moderate_inhibit).
drug_stage_effect(imatinib, schizont, weak_inhibit).
drug_stage_effect(imatinib, hypnozoite, no_effect).
drug_stage_effect(imatinib, gametocyte, no_effect).
drug_combination_type(imatinib, investigational).
drug_resistance_level(imatinib, 'Plasmodium falciparum', not_evaluated).
drug_resistance_level(imatinib, 'Plasmodium vivax', not_evaluated).
drug_resistance_level(imatinib, 'Plasmodium ovale', not_evaluated).
drug_resistance_level(imatinib, 'Plasmodium malariae', not_evaluated).
cross_resistance(imatinib, nilotinib, partial_cross, 'Nat Commun, 2017, 8(1): 1420').
cross_resistance(imatinib, chloroquine, no_cross, 'Antimicrob Agents Chemother, 2018, 62(5): e02443-17').
drug_route(imatinib, oral).
drug_special_pop(imatinib, g6pd_deficiency, under_investigation).
drug_special_pop(imatinib, pregnancy, category_d).
drug_special_pop(imatinib, pediatric, approved_for_oncology).
drug_pk(imatinib, half_life, '18-24 hours').
drug_pk(imatinib, plasma_protein_binding, '95%').
drug_pk(imatinib, excretion_pathway, hepatic).
guideline_ref(imatinib, 'WHO Antimalarial Drug Development Pipeline Report, 2024').
guideline_ref(imatinib, 'MMV Host-Directed Therapy Portfolio, 2025').
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
drug_core_structure(m5717, 'Quinoline diamide', 'Nature, 2015, 522(7556): 315-320').
malaria_line_usage(m5717, 'Plasmodium falciparum', investigational, 'Phase II candidate targeting protein synthesis; single-dose cure potential', 'Nature, 2015, 522(7556): 315-320').
malaria_line_usage(m5717, 'Plasmodium vivax', investigational, 'Preclinical activity demonstrated; multi-stage coverage', 'Antimicrob Agents Chemother, 2017, 61(11): e01482-17').
malaria_line_usage(m5717, 'Plasmodium ovale', not_evaluated, 'No published efficacy data', 'Preclinical data only').
malaria_line_usage(m5717, 'Plasmodium malariae', not_evaluated, 'No published efficacy data', 'Preclinical data only').
drug_synergy(m5717, artefenomel, 'Novel ACT-like combination under development for single-dose malaria cure', 'Lancet Infect Dis, 2022, 22(10): 1415-1424').
drug_synergy(m5717, primaquine, 'Potential radical cure combination for vivax malaria', 'Antimicrob Agents Chemother, 2017, 61(11): e01482-17').
full_moa_detail(m5717, review, 'M5717 (cabamiquine) is a quinoline diamide that selectively inhibits Plasmodium falciparum elongation factor 2 (PfeEF2), a GTPase essential for protein translation elongation. It binds to a unique allosteric site on PfeEF2, blocking ribosomal translocation and parasite protein synthesis. Its novel target confers no cross-resistance to existing antimalarials, and it exhibits activity across all asexual blood stages plus liver and gametocyte stages.', 'Baragaña B et al. Nature, 2015, 522(7556): 315-320').
full_moa_detail(m5717, chembl, 'Eukaryotic elongation factor 2 inhibitor; translation blocker; multi-stage antimalarial', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(m5717, ring_stage, strong_bactericidal).
drug_stage_effect(m5717, trophozoite, strong_bactericidal).
drug_stage_effect(m5717, schizont, strong_bactericidal).
drug_stage_effect(m5717, hypnozoite, moderate_bactericidal).
drug_stage_effect(m5717, gametocyte, strong_bactericidal).
drug_combination_type(m5717, investigational).
drug_resistance_level(m5717, 'Plasmodium falciparum', sensitive).
drug_resistance_level(m5717, 'Plasmodium vivax', sensitive).
drug_resistance_level(m5717, 'Plasmodium ovale', not_evaluated).
drug_resistance_level(m5717, 'Plasmodium malariae', not_evaluated).
cross_resistance(m5717, cycloheximide, partial_cross, 'Nature, 2015, 522(7556): 315-320').
cross_resistance(m5717, chloroquine, no_cross, 'Lancet Infect Dis, 2022, 22(10): 1415-1424').
drug_route(m5717, oral).
drug_special_pop(m5717, g6pd_deficiency, under_investigation).
drug_special_pop(m5717, pregnancy, under_investigation).
drug_special_pop(m5717, pediatric, under_investigation).
drug_pk(m5717, half_life, '40-60 hours').
drug_pk(m5717, plasma_protein_binding, '90%').
drug_pk(m5717, excretion_pathway, hepatic).
guideline_ref(m5717, 'WHO Antimalarial Drug Development Pipeline Report, 2024').
guideline_ref(m5717, 'MMV Malaria Drug Portfolio, 2025').
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
drug_core_structure(methylene_blue, 'Phenothiazine', 'Antimicrob Agents Chemother, 2011, 55(9): 4177-4184').
malaria_line_usage(methylene_blue, 'Plasmodium falciparum', investigational, 'Repurposed candidate as adjunctive partner drug for ACT regimens; gametocytocidal activity', 'Antimicrob Agents Chemother, 2011, 55(9): 4177-4184').
malaria_line_usage(methylene_blue, 'Plasmodium vivax', third_line, 'Historical use; limited modern clinical data', 'Malar J, 2019, 18(1): 212').
malaria_line_usage(methylene_blue, 'Plasmodium ovale', not_evaluated, 'No published efficacy data', 'Historical data only').
malaria_line_usage(methylene_blue, 'Plasmodium malariae', not_evaluated, 'No published efficacy data', 'Historical data only').
drug_synergy(methylene_blue, artesunate, 'Synergistic blood-stage activity plus enhanced gametocyte clearance; potential to reduce malaria transmission', 'Lancet Infect Dis, 2019, 19(10): 1089-1098').
drug_synergy(methylene_blue, chloroquine, 'Historical combination; restores activity against chloroquine-resistant strains in preclinical models', 'Antimicrob Agents Chemother, 2011, 55(9): 4177-4184').
full_moa_detail(methylene_blue, review, 'Methylene blue is a phenothiazine dye with multiple antimalarial mechanisms. It inhibits glutathione-dependent heme degradation in the parasite digestive vacuole, increasing toxic free heme levels. It also generates reactive oxygen species via redox cycling, inhibits soluble guanylate cyclase, and exhibits potent gametocytocidal activity. It has been used historically for malaria treatment and is currently being evaluated as a transmission-blocking partner drug.', 'Antimicrob Agents Chemother, 2011, 55(9): 4177-4184').
full_moa_detail(methylene_blue, chembl, 'Glutathione reductase inhibitor; heme degradation blocker; gametocytocidal phenothiazine', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(methylene_blue, ring_stage, moderate_bactericidal).
drug_stage_effect(methylene_blue, trophozoite, moderate_bactericidal).
drug_stage_effect(methylene_blue, schizont, weak_bactericidal).
drug_stage_effect(methylene_blue, hypnozoite, no_effect).
drug_stage_effect(methylene_blue, gametocyte, strong_bactericidal).
drug_combination_type(methylene_blue, investigational).
drug_resistance_level(methylene_blue, 'Plasmodium falciparum', sensitive).
drug_resistance_level(methylene_blue, 'Plasmodium vivax', sensitive).
drug_resistance_level(methylene_blue, 'Plasmodium ovale', not_evaluated).
drug_resistance_level(methylene_blue, 'Plasmodium malariae', not_evaluated).
cross_resistance(methylene_blue, chloroquine, no_cross, 'Antimicrob Agents Chemother, 2011, 55(9): 4177-4184').
cross_resistance(methylene_blue, primaquine, no_cross, 'Malar J, 2019, 18(1): 212').
drug_route(methylene_blue, oral).
drug_route(methylene_blue, intravenous).
drug_special_pop(methylene_blue, g6pd_deficiency, contraindicated).
drug_special_pop(methylene_blue, pregnancy, category_c).
drug_special_pop(methylene_blue, pediatric, weight_based_dose).
drug_pk(methylene_blue, half_life, '5-20 hours').
drug_pk(methylene_blue, plasma_protein_binding, '80%').
drug_pk(methylene_blue, excretion_pathway, renal).
guideline_ref(methylene_blue, 'WHO Antimalarial Drug Development Pipeline Report, 2024').
guideline_ref(methylene_blue, 'MMV Transmission-Blocking Portfolio, 2025').
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
drug_core_structure(sevuparin, 'Acid polysaccharide', 'Blood, 2012, 120(17): 3560-3568').
malaria_line_usage(sevuparin, 'Plasmodium falciparum', investigational, 'Phase II adjunctive candidate for severe malaria; targets cytoadhesion and rosetting', 'Blood, 2012, 120(17): 3560-3568').
malaria_line_usage(sevuparin, 'Plasmodium vivax', not_evaluated, 'No clinical efficacy data', 'Preclinical data only').
malaria_line_usage(sevuparin, 'Plasmodium ovale', not_evaluated, 'No published data', 'Preclinical data only').
malaria_line_usage(sevuparin, 'Plasmodium malariae', not_evaluated, 'No published data', 'Preclinical data only').
drug_synergy(sevuparin, artesunate, 'Adjunctive combination for severe malaria; sevuparin reduces microvascular obstruction while artesunate kills parasites', 'J Infect Dis, 2019, 219(11): 1777-1785').
drug_synergy(sevuparin, heparin, 'Structural analog with overlapping anti-adhesive mechanisms', 'Blood, 2012, 120(17): 3560-3568').
full_moa_detail(sevuparin, review, 'Sevuparin is a chemically modified heparan sulfate oligosaccharide that binds to the DBL1α domain of Plasmodium falciparum erythrocyte membrane protein 1 (PfEMP1) on the surface of infected red blood cells. This binding blocks both rosetting (clustering of infected and uninfected erythrocytes) and endothelial cytoadhesion, reducing microvascular obstruction and organ damage in severe malaria. It is a host-directed adjunctive therapy that does not directly kill parasites.', 'Vogt AM et al. Blood, 2012, 120(17): 3560-3568').
full_moa_detail(sevuparin, chembl, 'PfEMP1 DBL1α binder; rosetting inhibitor; cytoadhesion blocker; host-directed antimalarial', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(sevuparin, ring_stage, no_effect).
drug_stage_effect(sevuparin, trophozoite, no_effect).
drug_stage_effect(sevuparin, schizont, no_effect).
drug_stage_effect(sevuparin, hypnozoite, no_effect).
drug_stage_effect(sevuparin, gametocyte, no_effect).
drug_combination_type(sevuparin, investigational).
drug_resistance_level(sevuparin, 'Plasmodium falciparum', not_evaluated).
drug_resistance_level(sevuparin, 'Plasmodium vivax', not_evaluated).
drug_resistance_level(sevuparin, 'Plasmodium ovale', not_evaluated).
drug_resistance_level(sevuparin, 'Plasmodium malariae', not_evaluated).
cross_resistance(sevuparin, heparin, partial_cross, 'Blood, 2012, 120(17): 3560-3568').
cross_resistance(sevuparin, chloroquine, no_cross, 'J Infect Dis, 2019, 219(11): 1777-1785').
drug_route(sevuparin, intravenous).
drug_special_pop(sevuparin, g6pd_deficiency, under_investigation).
drug_special_pop(sevuparin, pregnancy, under_investigation).
drug_special_pop(sevuparin, pediatric, under_investigation).
drug_pk(sevuparin, half_life, '1-2 hours').
drug_pk(sevuparin, plasma_protein_binding, 'high').
drug_pk(sevuparin, excretion_pathway, renal).
guideline_ref(sevuparin, 'WHO Antimalarial Drug Development Pipeline Report, 2024').
guideline_ref(sevuparin, 'MMV Severe Malaria Adjunctive Portfolio, 2025').
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
drug_core_structure(rosiglitazone, 'Thiazolidinedione', 'J Infect Dis, 2015, 212(7): 1117-1126').
malaria_line_usage(rosiglitazone, 'Plasmodium falciparum', investigational, 'Repurposed PPARγ agonist as adjunctive therapy for severe malaria; modulates host inflammatory response', 'J Infect Dis, 2015, 212(7): 1117-1126').
malaria_line_usage(rosiglitazone, 'Plasmodium vivax', not_evaluated, 'No clinical data for malaria indication', 'Preclinical repurposing studies only').
malaria_line_usage(rosiglitazone, 'Plasmodium ovale', not_evaluated, 'No published data', 'Preclinical data only').
malaria_line_usage(rosiglitazone, 'Plasmodium malariae', not_evaluated, 'No published data', 'Preclinical data only').
drug_synergy(rosiglitazone, artesunate, 'Adjunctive combination under investigation; rosiglitazone reduces excessive inflammation and tissue damage in severe malaria', 'PLoS Pathog, 2017, 13(10): e1006650').
drug_synergy(rosiglitazone, chloroquine, 'Preclinical data showing enhanced parasite clearance via macrophage activation', 'J Infect Dis, 2015, 212(7): 1117-1126').
full_moa_detail(rosiglitazone, review, 'Rosiglitazone is a thiazolidinedione PPARγ agonist repurposed as adjunctive malaria therapy. It activates peroxisome proliferator-activated receptor gamma in host macrophages, enhancing phagocytosis of infected erythrocytes and reducing pro-inflammatory cytokine production. By modulating the host immune response, it reduces immunopathology and organ damage in severe malaria, but has no direct parasiticidal activity.', 'J Infect Dis, 2015, 212(7): 1117-1126').
full_moa_detail(rosiglitazone, chembl, 'PPAR gamma agonist; host immunomodulator; adjunctive antimalarial', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(rosiglitazone, ring_stage, no_effect).
drug_stage_effect(rosiglitazone, trophozoite, no_effect).
drug_stage_effect(rosiglitazone, schizont, no_effect).
drug_stage_effect(rosiglitazone, hypnozoite, no_effect).
drug_stage_effect(rosiglitazone, gametocyte, no_effect).
drug_combination_type(rosiglitazone, investigational).
drug_resistance_level(rosiglitazone, 'Plasmodium falciparum', not_applicable).
drug_resistance_level(rosiglitazone, 'Plasmodium vivax', not_applicable).
drug_resistance_level(rosiglitazone, 'Plasmodium ovale', not_applicable).
drug_resistance_level(rosiglitazone, 'Plasmodium malariae', not_applicable).
cross_resistance(rosiglitazone, pioglitazone, full_cross, 'J Infect Dis, 2015, 212(7): 1117-1126').
cross_resistance(rosiglitazone, chloroquine, no_cross, 'PLoS Pathog, 2017, 13(10): e1006650').
drug_route(rosiglitazone, oral).
drug_special_pop(rosiglitazone, g6pd_deficiency, safe).
drug_special_pop(rosiglitazone, pregnancy, category_c).
drug_special_pop(rosiglitazone, pediatric, not_recommended).
drug_pk(rosiglitazone, half_life, '3-4 hours').
drug_pk(rosiglitazone, plasma_protein_binding, '99.8%').
drug_pk(rosiglitazone, excretion_pathway, hepatic).
guideline_ref(rosiglitazone, 'WHO Antimalarial Drug Development Pipeline Report, 2024').
guideline_ref(rosiglitazone, 'MMV Host-Directed Therapy Portfolio, 2025').
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
drug_core_structure(dsm265, 'Triazolopyrimidine', 'Science Translational Medicine, 2015, 7(296): 296ra111').
malaria_line_usage(dsm265, 'Plasmodium falciparum', investigational, 'Phase II candidate targeting DHODH; potential for single-dose prophylaxis and treatment', 'Sci Transl Med, 2015, 7(296): 296ra111').
malaria_line_usage(dsm265, 'Plasmodium vivax', investigational, 'Active against liver and blood stages; radical cure potential', 'Antimicrob Agents Chemother, 2018, 62(6): e00221-18').
malaria_line_usage(dsm265, 'Plasmodium ovale', not_evaluated, 'No published efficacy data', 'Preclinical data only').
malaria_line_usage(dsm265, 'Plasmodium malariae', not_evaluated, 'No published efficacy data', 'Preclinical data only').
drug_synergy(dsm265, artefenomel, 'Novel long-acting combination under development for single-dose cure and chemoprotection', 'Lancet Infect Dis, 2023, 23(5): 637-646').
drug_synergy(dsm265, primaquine, 'Potential radical cure combination with dual liver-stage activity', 'Antimicrob Agents Chemother, 2018, 62(6): e00221-18').
full_moa_detail(dsm265, review, 'DSM265 is a triazolopyrimidine that selectively and potently inhibits Plasmodium dihydroorotate dehydrogenase (DHODH), a mitochondrial enzyme essential for de novo pyrimidine biosynthesis. By blocking the fourth step of pyrimidine synthesis, it disrupts DNA and RNA production, arresting parasite growth in both liver and blood stages. Its long half-life supports single-dose treatment and extended chemoprophylaxis. It has no cross-resistance with current antimalarials.', 'Phillips MA et al. Sci Transl Med, 2015, 7(296): 296ra111').
full_moa_detail(dsm265, chembl, 'Dihydroorotate dehydrogenase inhibitor; pyrimidine synthesis blocker; multi-stage antimalarial', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(dsm265, ring_stage, moderate_bactericidal).
drug_stage_effect(dsm265, trophozoite, strong_bactericidal).
drug_stage_effect(dsm265, schizont, strong_bactericidal).
drug_stage_effect(dsm265, hypnozoite, moderate_bactericidal).
drug_stage_effect(dsm265, gametocyte, moderate_inhibit).
drug_combination_type(dsm265, investigational).
drug_resistance_level(dsm265, 'Plasmodium falciparum', sensitive).
drug_resistance_level(dsm265, 'Plasmodium vivax', sensitive).
drug_resistance_level(dsm265, 'Plasmodium ovale', not_evaluated).
drug_resistance_level(dsm265, 'Plasmodium malariae', not_evaluated).
cross_resistance(dsm265, atovaquone, no_cross, 'Sci Transl Med, 2015, 7(296): 296ra111').
cross_resistance(dsm265, chloroquine, no_cross, 'Lancet Infect Dis, 2023, 23(5): 637-646').
drug_route(dsm265, oral).
drug_special_pop(dsm265, g6pd_deficiency, under_investigation).
drug_special_pop(dsm265, pregnancy, under_investigation).
drug_special_pop(dsm265, pediatric, under_investigation).
drug_pk(dsm265, half_life, '90-120 hours').
drug_pk(dsm265, plasma_protein_binding, '99%').
drug_pk(dsm265, excretion_pathway, hepatic).
guideline_ref(dsm265, 'WHO Antimalarial Drug Development Pipeline Report, 2024').
guideline_ref(dsm265, 'MMV Malaria Drug Portfolio, 2025').
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
drug_core_structure(ferroquine, 'Ferrocene 4-aminoquinoline', 'J Med Chem, 2012, 55(10): 4938-4950').
malaria_line_usage(ferroquine, 'Plasmodium falciparum', investigational, 'Phase II organometallic antimalarial; active against chloroquine-resistant strains', 'J Med Chem, 2012, 55(10): 4938-4950').
malaria_line_usage(ferroquine, 'Plasmodium vivax', investigational, 'Preclinical activity demonstrated; limited clinical data', 'Malar J, 2020, 19(1): 312').
malaria_line_usage(ferroquine, 'Plasmodium ovale', not_evaluated, 'No published efficacy data', 'Preclinical data only').
malaria_line_usage(ferroquine, 'Plasmodium malariae', not_evaluated, 'No published efficacy data', 'Preclinical data only').
drug_synergy(ferroquine, artesunate, 'Novel ACT combination under clinical development for multidrug-resistant malaria', 'Lancet Infect Dis, 2022, 22(8): 1133-1142').
drug_synergy(ferroquine, primaquine, 'Potential radical cure combination for chloroquine-resistant vivax malaria', 'Antimicrob Agents Chemother, 2019, 63(12): e01328-19').
full_moa_detail(ferroquine, review, 'Ferroquine is an organometallic 4-aminoquinoline analog containing a ferrocene moiety. Like chloroquine, it accumulates in the parasite digestive vacuole and inhibits hemozoin crystallization, but its ferrocene group generates additional reactive oxygen species via Fenton chemistry, enhancing oxidative stress and parasite killing. This dual mechanism overcomes PfCRT-mediated chloroquine resistance, making it active against multidrug-resistant P. falciparum strains.', 'Biot A et al. J Med Chem, 2012, 55(10): 4938-4950').
full_moa_detail(ferroquine, chembl, 'Hemozoin inhibitor; ferrocene-based ROS generator; organometallic antimalarial', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(ferroquine, ring_stage, moderate_bactericidal).
drug_stage_effect(ferroquine, trophozoite, strong_bactericidal).
drug_stage_effect(ferroquine, schizont, strong_bactericidal).
drug_stage_effect(ferroquine, hypnozoite, no_effect).
drug_stage_effect(ferroquine, gametocyte, moderate_inhibit).
drug_combination_type(ferroquine, investigational).
drug_resistance_level(ferroquine, 'Plasmodium falciparum', sensitive).
drug_resistance_level(ferroquine, 'Plasmodium vivax', sensitive).
drug_resistance_level(ferroquine, 'Plasmodium ovale', not_evaluated).
drug_resistance_level(ferroquine, 'Plasmodium malariae', not_evaluated).
cross_resistance(ferroquine, chloroquine, partial_cross, 'J Med Chem, 2012, 55(10): 4938-4950').
cross_resistance(ferroquine, amodiaquine, partial_cross, 'Lancet Infect Dis, 2022, 22(8): 1133-1142').
drug_route(ferroquine, oral).
drug_special_pop(ferroquine, g6pd_deficiency, under_investigation).
drug_special_pop(ferroquine, pregnancy, under_investigation).
drug_special_pop(ferroquine, pediatric, under_investigation).
drug_pk(ferroquine, half_life, '10-15 days').
drug_pk(ferroquine, plasma_protein_binding, '90%').
drug_pk(ferroquine, excretion_pathway, hepatic).
guideline_ref(ferroquine, 'WHO Antimalarial Drug Development Pipeline Report, 2024').
guideline_ref(ferroquine, 'MMV Malaria Drug Portfolio, 2025').
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
drug_core_structure(artefenomel, '1,2,4-Trioxolane synthetic endoperoxide', 'Nature, 2012, 485(7396): 95-98').
malaria_line_usage(artefenomel, 'Plasmodium falciparum', investigational, 'Phase III synthetic endoperoxide; long-acting single-dose ACT candidate', 'Nature, 2012, 485(7396): 95-98').
malaria_line_usage(artefenomel, 'Plasmodium vivax', investigational, 'Preclinical blood-stage activity; requires primaquine for radical cure', 'Antimicrob Agents Chemother, 2016, 60(11): 6607-6615').
malaria_line_usage(artefenomel, 'Plasmodium ovale', not_evaluated, 'No published efficacy data', 'Preclinical data only').
malaria_line_usage(artefenomel, 'Plasmodium malariae', not_evaluated, 'No published efficacy data', 'Preclinical data only').
drug_synergy(artefenomel, piperaquine, 'Long-acting synthetic peroxide combination under phase III development for single-dose cure', 'N Engl J Med, 2021, 385(11): 977-987').
drug_synergy(artefenomel, dsm265, 'Novel combination with dual novel mechanisms for extended chemoprotection', 'Lancet Infect Dis, 2023, 23(5): 637-646').
full_moa_detail(artefenomel, review, 'Artefenomel (OZ439) is a fully synthetic trioxolane endoperoxide designed to overcome artemisinin limitations. Like artemisinins, its endoperoxide bridge is activated by ferrous heme in the parasite digestive vacuole, generating cytotoxic carbon radicals that alkylate parasite proteins. Its optimized structure confers greatly extended half-life, enabling single-dose therapy, and retains full activity against artemisinin-resistant PfKelch13 mutant strains.', 'Charman SA et al. Nature, 2012, 485(7396): 95-98').
full_moa_detail(artefenomel, chembl, 'Synthetic endoperoxide; heme-activated free radical generator; long-acting antimalarial', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(artefenomel, ring_stage, strong_bactericidal).
drug_stage_effect(artefenomel, trophozoite, strong_bactericidal).
drug_stage_effect(artefenomel, schizont, moderate_bactericidal).
drug_stage_effect(artefenomel, hypnozoite, no_effect).
drug_stage_effect(artefenomel, gametocyte, moderate_inhibit).
drug_combination_type(artefenomel, investigational).
drug_resistance_level(artefenomel, 'Plasmodium falciparum', sensitive).
drug_resistance_level(artefenomel, 'Plasmodium vivax', sensitive).
drug_resistance_level(artefenomel, 'Plasmodium ovale', not_evaluated).
drug_resistance_level(artefenomel, 'Plasmodium malariae', not_evaluated).
cross_resistance(artefenomel, artemisinin, partial_cross, 'Nature, 2012, 485(7396): 95-98').
cross_resistance(artefenomel, arterolane, full_cross, 'Antimicrob Agents Chemother, 2016, 60(11): 6607-6615').
drug_route(artefenomel, oral).
drug_special_pop(artefenomel, g6pd_deficiency, under_investigation).
drug_special_pop(artefenomel, pregnancy, under_investigation).
drug_special_pop(artefenomel, pediatric, under_investigation).
drug_pk(artefenomel, half_life, '40-60 hours').
drug_pk(artefenomel, plasma_protein_binding, '98%').
drug_pk(artefenomel, excretion_pathway, hepatic).
guideline_ref(artefenomel, 'WHO Antimalarial Drug Development Pipeline Report, 2024').
guideline_ref(artefenomel, 'MMV Malaria Drug Portfolio, 2025').
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
drug_core_structure(artemisone, '1,2,4-Trioxane endoperoxide', 'J Med Chem, 2005, 48(11): 3745-3751').
malaria_line_usage(artemisone, 'Plasmodium falciparum', investigational, 'Phase III artemisinin derivative; improved potency and neurotoxicity profile', 'J Med Chem, 2005, 48(11): 3745-3751').
malaria_line_usage(artemisone, 'Plasmodium vivax', investigational, 'Active against blood stages; primaquine required for radical cure', 'Malar J, 2017, 16(1): 340').
malaria_line_usage(artemisone, 'Plasmodium ovale', not_evaluated, 'No published efficacy data', 'Preclinical data only').
malaria_line_usage(artemisone, 'Plasmodium malariae', not_evaluated, 'No published efficacy data', 'Preclinical data only').
drug_synergy(artemisone, piperaquine, 'ACT combination under development for multidrug-resistant falciparum malaria', 'Antimicrob Agents Chemother, 2018, 62(8): e00515-18').
drug_synergy(artemisone, primaquine, 'Potential radical cure combination with enhanced gametocytocidal activity', 'Malar J, 2017, 16(1): 340').
full_moa_detail(artemisone, review, 'Artemisone is a second-generation semisynthetic artemisinin derivative with a morpholine-containing side chain. Its endoperoxide bridge is activated by heme iron to generate cytotoxic free radicals that alkylate parasite proteins and membranes. Compared to artemisinin, it has higher potency, longer half-life, and reduced neurotoxicity in preclinical models. It retains activity against artemisinin-resistant strains in vitro.', 'Haynes RK et al. J Med Chem, 2005, 48(11): 3745-3751').
full_moa_detail(artemisone, chembl, 'Endoperoxide antimalarial; heme-activated alkylating agent; second-generation artemisinin analog', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(artemisone, ring_stage, strong_bactericidal).
drug_stage_effect(artemisone, trophozoite, strong_bactericidal).
drug_stage_effect(artemisone, schizont, moderate_bactericidal).
drug_stage_effect(artemisone, hypnozoite, no_effect).
drug_stage_effect(artemisone, gametocyte, moderate_inhibit).
drug_combination_type(artemisone, investigational).
drug_resistance_level(artemisone, 'Plasmodium falciparum', medium_resistance).
drug_resistance_level(artemisone, 'Plasmodium vivax', sensitive).
drug_resistance_level(artemisone, 'Plasmodium ovale', not_evaluated).
drug_resistance_level(artemisone, 'Plasmodium malariae', not_evaluated).
cross_resistance(artemisone, artemether, partial_cross, 'J Med Chem, 2005, 48(11): 3745-3751').
cross_resistance(artemisone, artesunate, partial_cross, 'Antimicrob Agents Chemother, 2018, 62(8): e00515-18').
drug_route(artemisone, oral).
drug_special_pop(artemisone, g6pd_deficiency, under_investigation).
drug_special_pop(artemisone, pregnancy, under_investigation).
drug_special_pop(artemisone, pediatric, under_investigation).
drug_pk(artemisone, half_life, '3-5 hours').
drug_pk(artemisone, plasma_protein_binding, '90%').
drug_pk(artemisone, excretion_pathway, hepatic).
guideline_ref(artemisone, 'WHO Antimalarial Drug Development Pipeline Report, 2024').
guideline_ref(artemisone, 'MMV Malaria Drug Portfolio, 2025').
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
drug_core_structure(fosmidomycin, 'Phosphonic acid', 'Proc Natl Acad Sci U S A, 1998, 95(21): 12398-12403').
malaria_line_usage(fosmidomycin, 'Plasmodium falciparum', investigational, 'Phase III candidate targeting apicoplast MEP pathway; used in combination therapy', 'Proc Natl Acad Sci U S A, 1998, 95(21): 12398-12403').
malaria_line_usage(fosmidomycin, 'Plasmodium vivax', third_line, 'Limited activity; not routinely recommended', 'Malar J, 2019, 18(1): 145').
malaria_line_usage(fosmidomycin, 'Plasmodium ovale', not_evaluated, 'No published efficacy data', 'Preclinical data only').
malaria_line_usage(fosmidomycin, 'Plasmodium malariae', not_evaluated, 'No published efficacy data', 'Preclinical data only').
drug_synergy(fosmidomycin, clindamycin, 'First-line combination for multidrug-resistant malaria; sequential blockade of apicoplast pathway', 'Lancet Infect Dis, 2016, 16(10): 1151-1160').
drug_synergy(fosmidomycin, piperaquine, 'Novel ACT-like combination under phase III development', 'N Engl J Med, 2023, 388(12): 1093-1103').
full_moa_detail(fosmidomycin, review, 'Fosmidomycin is a phosphonic acid antibiotic that selectively inhibits 1-deoxy-D-xylulose 5-phosphate reductoisomerase (DXR), the rate-limiting enzyme in the Plasmodium apicoplast methylerythritol phosphate (MEP) isoprenoid biosynthesis pathway. Blocking this essential pathway disrupts membrane synthesis and apicoplast function, leading to parasite death. It has a novel target with no cross-resistance to existing antimalarials but has short half-life requiring combination therapy.', 'Jomaa H et al. Science, 1999, 285(5433): 1573-1576').
full_moa_detail(fosmidomycin, chembl, 'DXR inhibitor; MEP pathway blocker; apicoplast-targeting antimalarial', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(fosmidomycin, ring_stage, weak_bactericidal).
drug_stage_effect(fosmidomycin, trophozoite, moderate_bactericidal).
drug_stage_effect(fosmidomycin, schizont, strong_bactericidal).
drug_stage_effect(fosmidomycin, hypnozoite, no_effect).
drug_stage_effect(fosmidomycin, gametocyte, weak_inhibit).
drug_combination_type(fosmidomycin, investigational).
drug_resistance_level(fosmidomycin, 'Plasmodium falciparum', sensitive).
drug_resistance_level(fosmidomycin, 'Plasmodium vivax', medium_resistance).
drug_resistance_level(fosmidomycin, 'Plasmodium ovale', not_evaluated).
drug_resistance_level(fosmidomycin, 'Plasmodium malariae', not_evaluated).
cross_resistance(fosmidomycin, fr900098, full_cross, 'Proc Natl Acad Sci U S A, 1998, 95(21): 12398-12403').
cross_resistance(fosmidomycin, chloroquine, no_cross, 'Lancet Infect Dis, 2016, 16(10): 1151-1160').
drug_route(fosmidomycin, oral).
drug_route(fosmidomycin, intravenous).
drug_special_pop(fosmidomycin, g6pd_deficiency, safe).
drug_special_pop(fosmidomycin, pregnancy, category_b).
drug_special_pop(fosmidomycin, pediatric, weight_based_dose).
drug_pk(fosmidomycin, half_life, '1.5-2.5 hours').
drug_pk(fosmidomycin, plasma_protein_binding, '10%').
drug_pk(fosmidomycin, excretion_pathway, renal).
guideline_ref(fosmidomycin, 'WHO Antimalarial Drug Development Pipeline Report, 2024').
guideline_ref(fosmidomycin, 'MMV Malaria Drug Portfolio, 2025').
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
drug_core_structure(arterolane, '1,2,4-Trioxolane synthetic endoperoxide', 'Antimicrob Agents Chemother, 2010, 54(11): 4868-4875').
malaria_line_usage(arterolane, 'Plasmodium falciparum', investigational, 'Phase III synthetic endoperoxide; marketed in India as Synriam combination', 'Antimicrob Agents Chemother, 2010, 54(11): 4868-4875').
malaria_line_usage(arterolane, 'Plasmodium vivax', second_line, 'Approved in combination with piperaquine for vivax malaria in some regions', 'Malar J, 2018, 17(1): 189').
malaria_line_usage(arterolane, 'Plasmodium ovale', not_evaluated, 'No published efficacy data', 'Limited clinical data').
malaria_line_usage(arterolane, 'Plasmodium malariae', not_evaluated, 'No published efficacy data', 'Limited clinical data').
drug_synergy(arterolane, piperaquine, 'Fixed-dose combination (Synriam) approved in India for uncomplicated falciparum malaria', 'Malar J, 2018, 17(1): 189').
drug_synergy(arterolane, primaquine, 'Combination used for radical cure of vivax malaria in regional practice', 'Antimicrob Agents Chemother, 2010, 54(11): 4868-4875').
full_moa_detail(arterolane, review, 'Arterolane is a fully synthetic trioxolane endoperoxide antimalarial. Its endoperoxide bridge is cleaved by ferrous heme in the parasite digestive vacuole, generating reactive oxygen species and carbon-centered radicals that alkylate parasite proteins and inhibit PfATP6 calcium ATPase. It exhibits fast-acting blood schizonticidal activity against both chloroquine-sensitive and resistant P. falciparum strains, with a longer half-life than natural artemisinins.', 'Vennerstrom JL et al. J Med Chem, 2004, 47(11): 2821-2828').
full_moa_detail(arterolane, chembl, 'Synthetic endoperoxide; heme-activated free radical generator; blood schizonticide', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(arterolane, ring_stage, strong_bactericidal).
drug_stage_effect(arterolane, trophozoite, strong_bactericidal).
drug_stage_effect(arterolane, schizont, moderate_bactericidal).
drug_stage_effect(arterolane, hypnozoite, no_effect).
drug_stage_effect(arterolane, gametocyte, moderate_inhibit).
drug_combination_type(arterolane, 'Synriam').
drug_resistance_level(arterolane, 'Plasmodium falciparum', sensitive).
drug_resistance_level(arterolane, 'Plasmodium vivax', sensitive).
drug_resistance_level(arterolane, 'Plasmodium ovale', not_evaluated).
drug_resistance_level(arterolane, 'Plasmodium malariae', not_evaluated).
cross_resistance(arterolane, artefenomel, full_cross, 'Antimicrob Agents Chemother, 2010, 54(11): 4868-4875').
cross_resistance(arterolane, artemisinin, partial_cross, 'Malar J, 2018, 17(1): 189').
drug_route(arterolane, oral).
drug_special_pop(arterolane, g6pd_deficiency, safe_with_monitor).
drug_special_pop(arterolane, pregnancy, category_c).
drug_special_pop(arterolane, pediatric, weight_based_dose).
drug_pk(arterolane, half_life, '18-26 hours').
drug_pk(arterolane, plasma_protein_binding, '95%').
drug_pk(arterolane, excretion_pathway, hepatic).
guideline_ref(arterolane, 'WHO Antimalarial Drug Development Pipeline Report, 2024').
guideline_ref(arterolane, 'India National Malaria Treatment Guidelines, 2023').
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
drug_core_structure(artemisinin, '1,2,4-Trioxane endoperoxide sesquiterpene lactone', 'Nature, 2014, 505(7481): 50-55; Cell Res, 2016, 26(1): 9-10').
malaria_line_usage(artemisinin, 'Plasmodium falciparum', first_line, 'Parent compound of all artemisinin derivatives; core of ACT regimens; monotherapy prohibited by WHO', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
malaria_line_usage(artemisinin, 'Plasmodium vivax', first_line, 'First-line blood schizonticide; combined with primaquine for radical cure', 'N Engl J Med, 2019, 380(11): 1027-1038').
malaria_line_usage(artemisinin, 'Plasmodium ovale', first_line, 'Rapidly clears erythrocytic stages; primaquine required for radical cure', 'Clin Microbiol Rev, 2013, 26(1): 60-79').
malaria_line_usage(artemisinin, 'Plasmodium malariae', first_line, 'Highly active against acute P. malariae infection', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
drug_synergy(artemisinin, piperaquine, 'Standard ACT combination (Duo-Cotecxin) widely used in Asia for uncomplicated malaria', 'Lancet, 2018, 392(10151): 1009-1023').
drug_synergy(artemisinin, primaquine, 'Artemisinin clears blood-stage parasites; primaquine eliminates hypnozoites and gametocytes', 'Lancet Infect Dis, 2020, 20(12): e363-e374').
full_moa_detail(artemisinin, review, 'Artemisinin is a natural sesquiterpene lactone endoperoxide isolated from Artemisia annua. Its endoperoxide bridge is reduced by ferrous heme in the parasite digestive vacuole, generating highly reactive carbon-centered free radicals that alkylate hundreds of parasite proteins, lipids and DNA. This multi-target damage disrupts calcium homeostasis (via PfATP6), protein folding, membrane integrity and energy metabolism, causing rapid parasite death. It is the fastest-acting antimalarial class available.', 'Tu Y. Cell Res, 2016, 26(1): 9-10').
full_moa_detail(artemisinin, chembl, 'Natural endoperoxide antimalarial; heme-activated multi-target alkylator; fast-acting schizonticide', 'ChEMBL Database Release 33, 2025').
drug_stage_effect(artemisinin, ring_stage, strong_bactericidal).
drug_stage_effect(artemisinin, trophozoite, strong_bactericidal).
drug_stage_effect(artemisinin, schizont, moderate_bactericidal).
drug_stage_effect(artemisinin, hypnozoite, no_effect).
drug_stage_effect(artemisinin, gametocyte, moderate_inhibit).
drug_combination_type(artemisinin, 'Duo-Cotecxin').
drug_resistance_level(artemisinin, 'Plasmodium falciparum', medium_resistance).
drug_resistance_level(artemisinin, 'Plasmodium vivax', sensitive).
drug_resistance_level(artemisinin, 'Plasmodium ovale', sensitive).
drug_resistance_level(artemisinin, 'Plasmodium malariae', sensitive).
cross_resistance(artemisinin, artemether, full_cross, 'Nature, 2014, 505(7481): 50-55').
cross_resistance(artemisinin, artesunate, full_cross, 'N Engl J Med, 2015, 373(7): 615-625').
drug_route(artemisinin, oral).
drug_route(artemisinin, rectal).
drug_special_pop(artemisinin, g6pd_deficiency, safe).
drug_special_pop(artemisinin, pregnancy, category_c).
drug_special_pop(artemisinin, pediatric, weight_based_dose).
drug_pk(artemisinin, half_life, '2-4 hours').
drug_pk(artemisinin, plasma_protein_binding, '75%').
drug_pk(artemisinin, excretion_pathway, hepatic).
guideline_ref(artemisinin, 'WHO Guidelines for the treatment of malaria, 4th edition, 2021').
guideline_ref(artemisinin, 'WHO ACT Policy Recommendations, 2023').
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
% 1. 药物母核结构
drug_core_structure(amodiaquine, '4-Aminoquinoline', 'WHO World Malaria Report 2023; PNAS, 2009, 106(45): 18883-18889').
% 2. 不同疟原虫的用药线级划分
malaria_line_usage(amodiaquine, 'Plasmodium falciparum', first_line, 'First-line ACT partner drug (artesunate-amodiaquine) in West Africa; better activity than chloroquine in resistant areas', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
malaria_line_usage(amodiaquine, 'Plasmodium vivax', second_line, 'Second-line blood schizonticide; combined with primaquine for radical cure', 'Clin Infect Dis, 2020, 71(Suppl 3): S224-S231').
malaria_line_usage(amodiaquine, 'Plasmodium ovale', second_line, 'Active against erythrocytic stages; primaquine required for radical cure', 'Clin Microbiol Rev, 2013, 26(1): 60-79').
malaria_line_usage(amodiaquine, 'Plasmodium malariae', first_line, 'Highly active against P. malariae with low resistance risk', 'WHO Guidelines for the treatment of malaria, 4th ed, 2021').
% 3. 协同用药组合与机制
drug_synergy(amodiaquine, artesunate, 'Fixed-dose first-line ACT; fast-acting artesunate plus long-acting amodiaquine; recommended for seasonal chemoprevention', 'Lancet, 2016, 388(10058): 2179-2188').
drug_synergy(amodiaquine, sulfadoxine_pyrimethamine, 'Seasonal malaria chemoprevention combination for children under 5', 'WHO Seasonal Malaria Chemoprevention Guidelines, 2022').
% 4. 完整分子作用机制
full_moa_detail(amodiaquine, review, 'Amodiaquine is a 4-aminoquinoline mannich base that accumulates in the Plasmodium digestive vacuole and inhibits hemozoin crystallization via heme binding. Its active metabolite desethylamodiaquine contributes most of the in vivo antimalarial activity. It retains partial activity against many chloroquine-resistant PfCRT mutant strains because it is less efficiently recognized and effluxed by the mutant transporter, though high-level chloroquine resistance still reduces efficacy.', 'Sa JM et al. PNAS, 2009, 106(45): 18883-18889').
full_moa_detail(amodiaquine, chembl, 'Hemozoin formation inhibitor; 4-aminoquinoline prodrug; desethylamodiaquine is active metabolite', 'ChEMBL Database Release 33, 2025').
% 5. 疟原虫各发育阶段杀伤活性
drug_stage_effect(amodiaquine, ring_stage, weak_bactericidal).
drug_stage_effect(amodiaquine, trophozoite, strong_bactericidal).
drug_stage_effect(amodiaquine, schizont, strong_bactericidal).
drug_stage_effect(amodiaquine, hypnozoite, no_effect).
drug_stage_effect(amodiaquine, gametocyte, weak_inhibit).
% 6. 复方制剂归属
drug_combination_type(amodiaquine, 'Artesunate-Amodiaquine').
% 7. 耐药等级划分
drug_resistance_level(amodiaquine, 'Plasmodium falciparum', medium_resistance).
drug_resistance_level(amodiaquine, 'Plasmodium vivax', medium_resistance).
drug_resistance_level(amodiaquine, 'Plasmodium ovale', sensitive).
drug_resistance_level(amodiaquine, 'Plasmodium malariae', sensitive).
% 8. 交叉耐药关系
cross_resistance(amodiaquine, chloroquine, partial_cross, 'PNAS, 2009, 106(45): 18883-18889').
cross_resistance(amodiaquine, hydroxychloroquine, partial_cross, 'Antimicrob Agents Chemother, 2006, 50(10): 3341-3347').
% 9. 给药途径
drug_route(amodiaquine, oral).
% 10. 特殊人群用药规范
drug_special_pop(amodiaquine, g6pd_deficiency, safe_with_monitor).
drug_special_pop(amodiaquine, pregnancy, category_c).
drug_special_pop(amodiaquine, pediatric, weight_based_dose).
% 11. 药代动力学参数
drug_pk(amodiaquine, half_life, '5-10 days (metabolite)').
drug_pk(amodiaquine, plasma_protein_binding, '90%').
drug_pk(amodiaquine, excretion_pathway, hepatic).
% 12. 指南引用关联
guideline_ref(amodiaquine, 'WHO Guidelines for the treatment of malaria, 4th edition, 2021').
guideline_ref(amodiaquine, 'WHO Seasonal Malaria Chemoprevention Guidelines, 2022').
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
