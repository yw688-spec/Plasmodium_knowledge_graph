:- set_prolog_flag(encoding, utf8).

:- discontiguous has_component/2.
:- discontiguous has_surface_protein/2.
:- discontiguous structure_difference/4.
:- discontiguous protein_function/2.
:- discontiguous protein_family/3.
:- discontiguous structure_feature/2.
:- discontiguous species/1.

% ============================================================
% Section 1: Species declarations
% 5种主要感染人类的疟原虫
% ============================================================
species(plasmodium_falciparum).
species(plasmodium_vivax).
species(plasmodium_ovale).
species(plasmodium_malariae).
species(plasmodium_knowlesi).

% ============================================================
% Section 2: has_component/2  细胞结构组分
% ------------------------------------------------------------
% 通用细胞器 (apicoplast, mitochondrion, rhoptry, microneme,
%   dense granule, food vacuole) 
% ============================================================

% --- Plasmodium falciparum ---
has_component(plasmodium_falciparum, plasma_membrane).
has_component(plasmodium_falciparum, nucleus).
has_component(plasmodium_falciparum, mitochondrion).
has_component(plasmodium_falciparum, apicoplast).
has_component(plasmodium_falciparum, rhoptry).
has_component(plasmodium_falciparum, microneme).
has_component(plasmodium_falciparum, dense_granule).
has_component(plasmodium_falciparum, food_vacuole).
has_component(plasmodium_falciparum, maurer_clefts).
has_component(plasmodium_falciparum, knob_structure).
has_component(plasmodium_falciparum, parasitophorous_vacuole_membrane).

% --- Plasmodium vivax ---
has_component(plasmodium_vivax, plasma_membrane).
has_component(plasmodium_vivax, nucleus).
has_component(plasmodium_vivax, mitochondrion).
has_component(plasmodium_vivax, apicoplast).
has_component(plasmodium_vivax, rhoptry).
has_component(plasmodium_vivax, microneme).
has_component(plasmodium_vivax, dense_granule).
has_component(plasmodium_vivax, food_vacuole).
has_component(plasmodium_vivax, schuffner_dots).
has_component(plasmodium_vivax, caveola_vesicle_complex).
has_component(plasmodium_vivax, parasitophorous_vacuole_membrane).

% --- Plasmodium ovale ---
has_component(plasmodium_ovale, plasma_membrane).
has_component(plasmodium_ovale, nucleus).
has_component(plasmodium_ovale, mitochondrion).
has_component(plasmodium_ovale, apicoplast).
has_component(plasmodium_ovale, rhoptry).
has_component(plasmodium_ovale, microneme).
has_component(plasmodium_ovale, dense_granule).
has_component(plasmodium_ovale, food_vacuole).
has_component(plasmodium_ovale, james_dots).
has_component(plasmodium_ovale, parasitophorous_vacuole_membrane).

% --- Plasmodium malariae ---
has_component(plasmodium_malariae, plasma_membrane).
has_component(plasmodium_malariae, nucleus).
has_component(plasmodium_malariae, mitochondrion).
has_component(plasmodium_malariae, apicoplast).
has_component(plasmodium_malariae, rhoptry).
has_component(plasmodium_malariae, microneme).
has_component(plasmodium_malariae, dense_granule).
has_component(plasmodium_malariae, food_vacuole).
has_component(plasmodium_malariae, ziemann_dots).
has_component(plasmodium_malariae, parasitophorous_vacuole_membrane).

% --- Plasmodium knowlesi ---
has_component(plasmodium_knowlesi, plasma_membrane).
has_component(plasmodium_knowlesi, nucleus).
has_component(plasmodium_knowlesi, mitochondrion).
has_component(plasmodium_knowlesi, apicoplast).
has_component(plasmodium_knowlesi, rhoptry).
has_component(plasmodium_knowlesi, microneme).
has_component(plasmodium_knowlesi, dense_granule).
has_component(plasmodium_knowlesi, food_vacuole).
has_component(plasmodium_knowlesi, sinton_mulligan_stippling).
has_component(plasmodium_knowlesi, parasitophorous_vacuole_membrane).

% ============================================================
% Section 3: has_surface_protein/2  表面蛋白
% ============================================================

% --- P. falciparum ---
has_surface_protein(plasmodium_falciparum, pfemp1).
has_surface_protein(plasmodium_falciparum, pfmsp1).
has_surface_protein(plasmodium_falciparum, pfama1).
has_surface_protein(plasmodium_falciparum, pfrh5).
has_surface_protein(plasmodium_falciparum, pfeba175).
has_surface_protein(plasmodium_falciparum, pfcsp).

% --- P. vivax ---
has_surface_protein(plasmodium_vivax, pvdbp).
has_surface_protein(plasmodium_vivax, pvmsp1).
has_surface_protein(plasmodium_vivax, pvama1).
has_surface_protein(plasmodium_vivax, pvrbp1).
has_surface_protein(plasmodium_vivax, pvrbp2).
has_surface_protein(plasmodium_vivax, pvcsp).

% --- P. ovale (genomic homologs) ---
has_surface_protein(plasmodium_ovale, pomsp1).
has_surface_protein(plasmodium_ovale, poama1).
has_surface_protein(plasmodium_ovale, potrap).
has_surface_protein(plasmodium_ovale, pocsp).

% --- P. malariae (genomic homologs) ---
has_surface_protein(plasmodium_malariae, pmmsp1).
has_surface_protein(plasmodium_malariae, pmama1).
has_surface_protein(plasmodium_malariae, pmcsp).

% --- P. knowlesi ---
has_surface_protein(plasmodium_knowlesi, pkdbpalpha).
has_surface_protein(plasmodium_knowlesi, pknbpxa).
has_surface_protein(plasmodium_knowlesi, pkmsp1).
has_surface_protein(plasmodium_knowlesi, pkama1).
has_surface_protein(plasmodium_knowlesi, pksicavar).

% ============================================================
% Section 4: NEW protein_family/3
% ============================================================
% P. falciparum 恶性疟
protein_family(pfemp1, var_antigen, 'Variant cytoadhesive virulence antigen family (PfEMP1)').
protein_family(pfmsp1, msp1, 'Merozoite Surface Protein 1 family').
protein_family(pfama1, ama1, 'Apical Membrane Antigen 1 family (moving junction component)').
protein_family(pfrh5, rh_ligand, 'Reticulocyte Homology (RH) invasion ligand family').
protein_family(pfeba175, eba, 'Erythrocyte Binding Antigen family (sialic acid dependent invasion)').
protein_family(pfcsp, csp, 'Circumsporozoite Protein family (sporozoite/liver stage antigen)').

% P. vivax 间日疟
protein_family(pvdbp, dbp, 'Duffy Binding Protein (DBP, EBA homologous invasion ligand)').
protein_family(pvmsp1, msp1, 'Merozoite Surface Protein 1 family').
protein_family(pvama1, ama1, 'Apical Membrane Antigen 1 family (moving junction component)').
protein_family(pvrbp1, rbp, 'Reticulocyte Binding Protein family').
protein_family(pvrbp2, rbp, 'Reticulocyte Binding Protein family').
protein_family(pvcsp, csp, 'Circumsporozoite Protein family (sporozoite/liver stage antigen)').

% P. ovale 卵形疟
protein_family(pomsp1, msp1, 'Merozoite Surface Protein 1 family (ortholog)').
protein_family(poama1, ama1, 'Apical Membrane Antigen 1 family (ortholog)').
protein_family(potrap, trap, 'Thrombospondin-Related Adhesive Protein family (sporozoite motility)').
protein_family(pocsp, csp, 'Circumsporozoite Protein family (ortholog)').

% P. malariae 三日疟
protein_family(pmmsp1, msp1, 'Merozoite Surface Protein 1 family (ortholog)').
protein_family(pmama1, ama1, 'Apical Membrane Antigen 1 family (ortholog)').
protein_family(pmcsp, csp, 'Circumsporozoite Protein family (ortholog)').

% P. knowlesi 诺氏疟
protein_family(pkdbpalpha, dbp, 'Duffy Binding Protein alpha subtype').
protein_family(pknbpxa, nbpx, 'Normocyte Binding Protein X invasion ligand family').
protein_family(pkmsp1, msp1, 'Merozoite Surface Protein 1 family').
protein_family(pkama1, ama1, 'Apical Membrane Antigen 1 family').
protein_family(pksicavar, var_antigen, 'SICAvar variant antigen (PfEMP1 functional homolog)').

% ============================================================
% Section 4: protein_function/2
% ============================================================
protein_function(pfemp1,
    'P. falciparum Erythrocyte Membrane Protein 1; mediates cytoadherence to host vascular endothelium and immune evasion via antigenic variation').
protein_function(pfmsp1,
    'Merozoite Surface Protein 1 (MSP1); essential for initial merozoite recognition and attachment to erythrocyte membrane during invasion').
protein_function(pfama1,
    'Apical Membrane Antigen 1 (AMA1); interacts with RON proteins to assemble moving junction complex required for erythrocyte invasion').
protein_function(pfrh5,
    'Reticulocyte Homolog 5 (RH5); specifically binds basigin (CD147) on erythrocyte surface; universally essential invasion ligand for P. falciparum').
protein_function(pfeba175,
    'Erythrocyte Binding Antigen 175 (EBA175); binds erythrocyte glycophorin A to mediate sialic-acid-dependent erythrocyte invasion pathway').
protein_function(pfcsp,
    'Circumsporozoite Protein (CSP); regulates sporozoite motility and hepatocyte invasion; primary antigen target of RTS,S/AS01 malaria vaccine').

protein_function(pvdbp,
    'Duffy Binding Protein (DBP); binds DARC receptor on reticulocytes; canonical invasion ligand determining P. vivax Duffy dependence').
protein_function(pvmsp1,
    'P. vivax Merozoite Surface Protein 1; mediates initial merozoite attachment to reticulocyte surface').
protein_function(pvama1,
    'P. vivax Apical Membrane Antigen 1; participates tight junction assembly during reticulocyte invasion').
protein_function(pvrbp1,
    'Reticulocyte Binding Protein 1 (PvRBP1); confers strict reticulocyte host cell tropism for P. vivax').
protein_function(pvrbp2,
    'Reticulocyte Binding Protein 2; PvRBP2b isoform specifically binds transferrin receptor TfR1 (CD71) on immature reticulocytes').
protein_function(pvcsp,
    'P. vivax Circumsporozoite Protein; controls sporozoite gliding motility and hepatocyte invasion').

protein_function(pomsp1,
    'P. ovale MSP1 ortholog; mediates erythrocyte recognition and initial attachment during invasion(genomic homolog)').
protein_function(poama1,
    'P. ovale AMA1 ortholog; participates moving junction formation during erythrocyte invasion (genomic homolog)').
protein_function(potrap,
    'Thrombospondin-related adhesive protein (TRAP) ortholog; essential for sporozoite gliding motility and tissue traversal (genomic homolog)').
protein_function(pocsp,
    'P. ovale CSP ortholog; facilitates sporozoite attachment and invasion of hepatocytes in liver stage (genomic homolog)').

protein_function(pmmsp1,
    'P. malariae MSP1; mediates merozoite attachment to mature circulating erythrocytes').
protein_function(pmama1,
    'P. malariae AMA1 ortholog; responsible for moving junction assembly during erythrocyte invasion (genomic homolog)').
protein_function(pmcsp,
    'P. malariae CSP ortholog; mediates sporozoite recognition and invasion of hepatocytes (genomic homolog)').

protein_function(pkdbpalpha,
    'Duffy Binding Protein alpha (PkDBPα); binds erythrocyte surface DARC receptor to mediate invasion').
protein_function(pknbpxa,
    'Normocyte Binding Protein Xa (PkNBPXa); required for invasion of mature human erythrocytes; critical determinant for zoonotic cross-species transmission').
protein_function(pkmsp1,
    'Merozoite surface protein 1 of P. knowlesi; primary surface ligand mediating initial erythrocyte attachment').
protein_function(pkama1,
    'Apical membrane antigen 1 of P. knowlesi; drives assembly of moving junction complex during erythrocyte invasion').
protein_function(pksicavar,
    'Schizont-infected cell agglutination variant antigen (SICAvar); mediates clonal antigenic variation; its cytoadhesive function is less characterized than PfEMP1').

% ============================================================
% Section 5: structure_feature/2
% ============================================================
structure_feature(plasma_membrane,
    'Lipid bilayer enclosing the parasite body; displays surface antigens and nutrient/ion transporters').
structure_feature(nucleus,
    'Membrane-bound organelle containing genomic DNA; haploid ploidy during asexual blood stages').
structure_feature(mitochondrion,
    'Single tubular organelle with highly reduced mitochondrial genome; electron transport chain constitutes a major antimalarial drug target').
structure_feature(apicoplast,
    'Non-photosynthetic four-membrane secondary plastid; indispensable for biosynthesis of fatty acids, isoprenoids and heme').
structure_feature(rhoptry,
    'Club-shaped apical secretory organelle; secretes rhoptry-derived proteins to remodel host cell membrane and assemble invasion moving junctions').
structure_feature(microneme,
    'Small rod-shaped apical secretory organelle; releases adhesive ligands including AMA1, EBA,and RBP family proteins prior to erythrocyte invasion').
structure_feature(dense_granule,
    'Electron-dense secretory vesicle; secretes effector proteins post-invasion to remodel the parasitophorous vacuole and host erythrocyte').
structure_feature(food_vacuole,
    'Acidified digestive vacuole responsible for haemoglobin degradation and insoluble haemozoin crystal formation').   
structure_feature(parasitophorous_vacuole_membrane,
    'Erythrocyte-derived host membrane that encloses the intracellular parasite after invasion').
structure_feature(maurer_clefts,
    'Flat membranous tubovesicular structures within the cytoplasm of P. falciparum-infected erythrocytes; acts as trafficking scaffold for exported parasite proteins, species-specific to P. falciparum').
structure_feature(knob_structure,
    'Electron-dense membrane protrusions on the surface of P. falciparum-infected erythrocytes; spiral cytoskeletal scaffold anchors PfEMP1 to mediate endothelial cytoadherence').
structure_feature(schuffner_dots,
    'Fine pink cytoplasmic stippling observed in Giemsa-stained infected erythrocytes; pathognomonic morphological hallmark of Plasmodium vivax infection').
structure_feature(caveola_vesicle_complex,
    'Invaginations of the erythrocyte plasma membrane associated with peripheral vesicles; ultrastructural origin of Schüffner’s dots').
structure_feature(james_dots,
    'Coarse red cytoplasmic stippling within enlarged, oval, fimbriated infected erythrocytes; diagnostic hallmark of Plasmodium ovale').
structure_feature(ziemann_dots,
    'Faint pale cytoplasmic stippling, rarely visible under standard Giemsa staining; characteristic morphological feature of Plasmodium malariae-infected erythrocytes').
structure_feature(sinton_mulligan_stippling,
    'Fine reddish cytoplasmic puncta within infected erythrocytes; historically described morphological feature associated with Plasmodium knowlesi infection').

% ============================================================
% Section 6: structure_difference/4
% 物种间差异
% ============================================================
structure_difference(plasmodium_falciparum, plasmodium_vivax,
    infected_erythrocyte_inclusions,
    'P. falciparum produces Maurer clefts and knob structures; P. vivax develops Schüffner’s dots derived from caveola–vesicle complexes').
structure_difference(plasmodium_falciparum, plasmodium_vivax,
    erythrocyte_tropism,
    'P. falciparum invades erythrocytes of all developmental ages; P. vivax exhibits strict tropism for reticulocytes via DARC and TfR1 receptors').
structure_difference(plasmodium_falciparum, plasmodium_ovale,
    infected_erythrocyte_inclusions,
    'P. falciparum contains Maurer clefts and knob structures; P. ovale forms James dots within enlarged oval, fimbriated erythrocytes').
structure_difference(plasmodium_falciparum, plasmodium_malariae,
    infected_erythrocyte_inclusions,
    'P. falciparum forms knob structures and Maurer clefts; P. malariae presents faint Ziemann’s dots and typically develops band-form trophozoites').
structure_difference(plasmodium_falciparum, plasmodium_knowlesi,
    infected_erythrocyte_inclusions,
    'P. falciparum generates Maurer clefts; P. knowlesi displays Sinton–Mulligan stippling, with morphology resembling Plasmodium malariae').
structure_difference(plasmodium_vivax, plasmodium_ovale,
    infected_erythrocyte_inclusions,
    'P. vivax forms fine Schüffner’s dots inside enlarged erythrocytes; P. ovale produces coarser James dots within oval, fimbriated erythrocytes').
structure_difference(plasmodium_vivax, plasmodium_malariae,
    rbc_size_and_stippling,
    'P. vivax induces marked enlargement of host erythrocytes accompanied by Schüffner’s dots; P. malariae does not expand erythrocyte size and displays Ziemann’s dots').
structure_difference(plasmodium_vivax, plasmodium_knowlesi,
    surface_proteins,
    'Both species invade erythrocytes using DBP–DARC interaction; P. knowlesi additionally invades mature erythrocytes via the PkNBPXa ligand').
structure_difference(plasmodium_ovale, plasmodium_malariae,
    rbc_morphology,
    'P. ovale generates enlarged oval, fimbriated infected erythrocytes; P. malariae infects normal-sized erythrocytes and forms band-form trophozoites').
structure_difference(plasmodium_ovale, plasmodium_knowlesi,
    infected_erythrocyte_inclusions,
    'P. ovale develops James dots inside enlarged oval erythrocytes; P. knowlesi exhibits Sinton–Mulligan stippling within normal-sized erythrocytes').
structure_difference(plasmodium_malariae, plasmodium_knowlesi,
    morphological_similarity,
    'The two species are nearly indistinguishable under light microscopy; species confirmation requires molecular diagnostic assays').
% 对称查询辅助
structure_difference_bi(A, B, Part, Detail) :-
    structure_difference(A, B, Part, Detail).
structure_difference_bi(A, B, Part, Detail) :-
    structure_difference(B, A, Part, Detail).

% ============================================================
% Section 7: Query helper predicates
% ============================================================

list_components(Species, Components) :-
    findall(C, has_component(Species, C), Components).

list_surface_proteins(Species, Proteins) :-
    findall(P, has_surface_protein(Species, P), Proteins).

query_protein_family(Protein, ShortFamily, FullFamily) :-
    protein_family(Protein, ShortFamily, FullFamily).

list_protein_families(Species, ProteinFamilyList) :-
    findall(prot_fam(P, FamShort, FamFull),
            (has_surface_protein(Species, P), protein_family(P, FamShort, FamFull)),
            ProteinFamilyList).

compare_species(SpeciesA, SpeciesB, Differences) :-
    findall(diff(Part, Detail),
            structure_difference_bi(SpeciesA, SpeciesB, Part, Detail),
            Differences).

query_protein_function(Protein, Function) :-
    protein_function(Protein, Function).

list_all_species(SpeciesList) :-
    findall(S, species(S), SpeciesList).

full_profile(Species) :-
    format("~n=== Profile of ~w ===~n", [Species]),
    list_components(Species, Comps),
    format("Cellular components: ~w~n", [Comps]),
    list_surface_proteins(Species, Prots),
    format("Surface proteins: ~w~n", [Prots]),
    format("=== End of profile ===~n", []).