% ================================================================
% PLASMODIUM — Unified Five-Species Characteristic Knowledge Base
% P. falciparum | P. vivax | P. ovale | P. malariae | P. knowlesi
% ----------------------------------------------------------------
% Organised BY CHARACTERISTIC (not by species) so every fact for
% all five species sits side by side. Reuses the shared predicate
% vocabulary established across the individual knowledge bases.
% ================================================================

% ================================================================
% SECTION 0 — SPECIES REGISTER & SHARED HOSTS
% ================================================================

plasmodium_species(falciparum).
plasmodium_species(vivax).
plasmodium_species(ovale).
plasmodium_species(malariae).
plasmodium_species(knowlesi).

full_name(falciparum, 'Plasmodium falciparum').
full_name(vivax,      'Plasmodium vivax').
full_name(ovale,      'Plasmodium ovale').
full_name(malariae,   'Plasmodium malariae').
full_name(knowlesi,   'Plasmodium knowlesi').

common_name(falciparum, malignant_tertian_malaria).
common_name(vivax,      benign_tertian_malaria).
common_name(ovale,      ovale_tertian_malaria).
common_name(malariae,   quartan_malaria).
common_name(knowlesi,   the_fifth_human_malaria_parasite).

% Shared taxonomy (identical for all five)
genus(Species, plasmodium)        :- plasmodium_species(Species).
phylum(Species, apicomplexa)      :- plasmodium_species(Species).
family(Species, plasmodiidae)     :- plasmodium_species(Species).
order(Species, haemosporida)      :- plasmodium_species(Species).

% Shared hosts / life-cycle frame
definitive_host(Species, anopheles_mosquito) :- plasmodium_species(Species).
reproduction_in(Species, mosquito, sexual)   :- plasmodium_species(Species).
reproduction_in(Species, vertebrate, asexual):- plasmodium_species(Species).
life_cycle_type(Species, heteroxenous)        :- plasmodium_species(Species).

% Vertebrate (intermediate) host — knowlesi differs (zoonotic)
intermediate_host(falciparum, human).
intermediate_host(vivax,      human).
intermediate_host(ovale,      human).
intermediate_host(malariae,   human).
intermediate_host(knowlesi,   macaque).            % primary natural host
intermediate_host(knowlesi,   human).              % incidental / spillover

parasite_status(falciparum, human_specialist).
parasite_status(vivax,      human_specialist).
parasite_status(ovale,      human_specialist).
parasite_status(malariae,   human_specialist).
parasite_status(knowlesi,   zoonotic).             % UNIQUE among the five

reservoir_host(knowlesi, macaques).                % long-tailed & pig-tailed

% ================================================================
% SECTION 1 — EVOLUTIONARY RELATIONSHIPS
% ================================================================

closest_relative(falciparum, plasmodium_reichenowi).    % chimpanzee
closest_relative(vivax,      plasmodium_cynomolgi).      % macaque
closest_relative(ovale,      plasmodium_ovale_lineages). % curtisi + wallikeri
closest_relative(malariae,   plasmodium_brasilianum).    % new world monkey
closest_relative(knowlesi,   plasmodium_coatneyi).       % macaque

clade(falciparum, laverania).
clade(vivax,      asian_primate_vivax_clade).
clade(knowlesi,   asian_primate_vivax_clade).            % vivax & knowlesi co-clade

% Cryptic / sibling species
subspecies(ovale, plasmodium_ovale_curtisi).
subspecies(ovale, plasmodium_ovale_wallikeri).
subspecies_status(ovale, genetically_distinct_sympatric_lineages_separable_only_by_pcr).
sibling_species(malariae, plasmodium_brasilianum, note(likely_conspecific_in_monkeys)).

% ================================================================
% SECTION 2 — GEOGRAPHIC DISTRIBUTION
% ================================================================

primary_distribution(falciparum, sub_saharan_africa,  endemicity(hyperendemic)).
primary_distribution(vivax,      asia_and_americas,    endemicity(widest_range)).
primary_distribution(ovale,      west_africa,          endemicity(focal)).
primary_distribution(malariae,   worldwide_tropics,    endemicity(patchy_low)).
primary_distribution(knowlesi,   southeast_asia_forest, endemicity(malaysian_borneo_focus)).

geographic_note(falciparum, dominant_in_africa_90pct_of_deaths).
geographic_note(vivax,      dominant_outside_africa_temperate_to_tropical).
geographic_note(ovale,      occupies_african_relapsing_niche_where_vivax_excluded).
geographic_note(malariae,   sympatric_with_falciparum_but_low_prevalence).
geographic_note(knowlesi,   restricted_to_macaque_and_leucosphyrus_vector_range).

% Why vivax is rare in West Africa but ovale is not
african_relapsing_niche(ovale, due_to(duffy_independent_invasion)).
african_exclusion(vivax,       due_to(high_duffy_negativity)).

% ================================================================
% SECTION 3 — VECTORS
% ================================================================

vector(falciparum, anopheles_gambiae,             africa).
vector(vivax,      anopheles_culicifacies,        south_asia).
vector(vivax,      anopheles_atroparvus,          europe_temperate).   % cold-tolerant
vector(ovale,      anopheles_gambiae,             africa).
vector(malariae,   anopheles_gambiae,             africa).
vector(knowlesi,   anopheles_leucosphyrus_group,  southeast_asia_forest).

vector_special_feature(vivax,    develops_at_low_temperature_celsius(15)).
vector_special_feature(knowlesi, forest_fringe_exophilic_zoonotic_transmission).

% ================================================================
% SECTION 4 — LIFE CYCLE FRAME (shared 5-stage sequence)
% ================================================================

life_cycle_order([
    sporozoite_stage,
    hepatic_stage,
    erythrocytic_stage,
    gametocyte_stage,
    sporogonic_stage
]).

next_stage(sporozoite_stage,   hepatic_stage).
next_stage(hepatic_stage,      erythrocytic_stage).
next_stage(erythrocytic_stage, gametocyte_stage).
next_stage(gametocyte_stage,   sporogonic_stage).

% Ploidy — identical pattern across all five
ploidy_at_stage(Species, Stage, haploid) :-
    plasmodium_species(Species),
    member(Stage, [sporozoite, liver_stage, ring, trophozoite, schizont, gametocyte]).
ploidy_at_stage(Species, Stage, diploid) :-
    plasmodium_species(Species),
    member(Stage, [zygote, ookinete, oocyst]).
only_diploid_phase(Species, post_fertilisation_in_mosquito) :- plasmodium_species(Species).

% ================================================================
% SECTION 5 — HEPATIC STAGE (duration, output, dormancy)
% ================================================================

hepatic_duration(falciparum, days(5, 7)).
hepatic_duration(vivax,      days(8, 9)).
hepatic_duration(ovale,      days(9, 10)).
hepatic_duration(malariae,   days(13, 16)).     % LONGEST
hepatic_duration(knowlesi,   days(5, 6)).        % SHORTEST

hepatic_merozoites(falciparum, range(10000, 30000)).
hepatic_merozoites(vivax,      range(10000, 15000)).
hepatic_merozoites(ovale,      range(15000, 30000)).
hepatic_merozoites(malariae,   range(2000,  5000)).   % FEWEST
hepatic_merozoites(knowlesi,   range(10000, 30000)).

% --- KEY DIVIDING CHARACTERISTIC: hypnozoites & relapse ---
forms_hypnozoite(falciparum, false).
forms_hypnozoite(vivax,      true).      % ★
forms_hypnozoite(ovale,      true).      % ★
forms_hypnozoite(malariae,   false).
forms_hypnozoite(knowlesi,   false).

causes_relapse(vivax,      true,  source(liver_hypnozoite)).
causes_relapse(ovale,      true,  source(liver_hypnozoite)).
causes_recrudescence(malariae, true, source(persistent_blood_stage)).   % NOT relapse
causes_recrudescence(knowlesi, possible, source(low_level_blood_stage)).
no_persistence(falciparum).

hypnozoite_dormancy(vivax, range(weeks(3), years(3))).
hypnozoite_dormancy(ovale, range(months(1), years(4))).

% ================================================================
% SECTION 6 — ERYTHROCYTIC CYCLE & FEVER PERIODICITY
% ================================================================

idc_duration(falciparum, hours(48)).
idc_duration(vivax,      hours(48)).
idc_duration(ovale,      hours(48)).     % ~49–50h, tertian
idc_duration(malariae,   hours(72)).     % QUARTAN — slowest
idc_duration(knowlesi,   hours(24)).     % QUOTIDIAN — fastest ★

fever_periodicity(falciparum, hours(48), tertian).
fever_periodicity(vivax,      hours(48), tertian).
fever_periodicity(ovale,      hours(48), tertian).
fever_periodicity(malariae,   hours(72), quartan).
fever_periodicity(knowlesi,   hours(24), quotidian).

% ================================================================
% SECTION 7 — RBC PREFERENCE, PARASITEMIA, INVASION RECEPTOR
% ================================================================

preferred_rbc(falciparum, all_ages).
preferred_rbc(vivax,      reticulocytes).
preferred_rbc(ovale,      reticulocytes).
preferred_rbc(malariae,   old_erythrocytes).
preferred_rbc(knowlesi,   broad_all_ages).

parasitemia_ceiling(falciparum, very_high_up_to_50pct).
parasitemia_ceiling(vivax,      low_1_to_2pct).
parasitemia_ceiling(ovale,      low_under_2pct).
parasitemia_ceiling(malariae,   low_under_2pct).
parasitemia_ceiling(knowlesi,   can_be_high).

% Invasion receptor dependence
invasion_receptor(falciparum, multiple_redundant_incl_basigin_rh5).
invasion_receptor(vivax,      duffy_antigen_darc).
invasion_receptor(ovale,      reticulocyte_unknown_duffy_independent).
invasion_receptor(malariae,   unknown_duffy_independent).
invasion_receptor(knowlesi,   duffy_plus_normocyte_binding_proteins).

duffy_dependence(falciparum, independent_redundant).
duffy_dependence(vivax,      obligate).
duffy_dependence(ovale,      independent).
duffy_dependence(malariae,   independent).
duffy_dependence(knowlesi,   uses_duffy_for_human_invasion).

% ================================================================
% SECTION 8 — BLOOD-STAGE MORPHOLOGY & STAINING
% ================================================================

% Trophozoite form
trophozoite_form(falciparum, compact_ring_then_rarely_seen).
trophozoite_form(vivax,      large_amoeboid).
trophozoite_form(ovale,      compact_non_amoeboid).
trophozoite_form(malariae,   band_form).
trophozoite_form(knowlesi,   band_form_mimics_malariae).

% Merozoites per erythrocytic schizont
merozoites_per_schizont(falciparum, range(16, 32)).
merozoites_per_schizont(vivax,      range(12, 24)).
merozoites_per_schizont(ovale,      range(8, 12)).
merozoites_per_schizont(malariae,   range(6, 12)).     % FEWEST
merozoites_per_schizont(knowlesi,   range(10, 16)).

% Infected RBC size
infected_rbc_size(falciparum, normal).
infected_rbc_size(vivax,      enlarged).
infected_rbc_size(ovale,      enlarged_oval).
infected_rbc_size(malariae,   normal_or_small).
infected_rbc_size(knowlesi,   normal).

infected_rbc_shape(ovale, oval_fimbriated_ragged_edges).   % ★ pathognomonic

% Cytoplasmic stippling / clefts
rbc_inclusion(falciparum, maurer_clefts).
rbc_inclusion(vivax,      schuffners_dots).
rbc_inclusion(ovale,      james_dots).            % = Schüffner-type, appear early
rbc_inclusion(malariae,   ziemann_dots_faint).
rbc_inclusion(knowlesi,   sinton_mulligan_stippling_occasional).

% Gametocyte shape
gametocyte_shape(falciparum, crescent_banana).    % ★ unique
gametocyte_shape(vivax,      round).
gametocyte_shape(ovale,      round_to_oval).
gametocyte_shape(malariae,   round_compact).
gametocyte_shape(knowlesi,   round_to_oval).

gametocyte_maturation(falciparum, days(8, 12)).   % SLOWEST, 5 morphological stages
gametocyte_maturation(vivax,      days(3, 4)).
gametocyte_maturation(ovale,      days(3, 4)).
gametocyte_maturation(malariae,   days(4, 5)).
gametocyte_maturation(knowlesi,   days(2, 3)).     % fastest

% ================================================================
% SECTION 9 — SEQUESTRATION & ANTIGENIC VARIATION
% ================================================================

sequestration(falciparum, extensive).             % ★ defines severe disease
sequestration(vivax,      minimal).
sequestration(ovale,      minimal).
sequestration(malariae,   minimal).
sequestration(knowlesi,   limited).

variant_antigen_family(falciparum, var, encodes(pfemp1), count(approx(60))).
variant_antigen_family(vivax,      vir, count(approx(346))).
variant_antigen_family(ovale,      pir, count(present)).
variant_antigen_family(malariae,   pir_and_fam, count(expanded)).
variant_antigen_family(knowlesi,   sicavar, count(approx(100))).   % classic AV model

% ================================================================
% SECTION 10 — GENOME
% ================================================================

genome_size(falciparum, mb(23.3)).
genome_size(vivax,      mb(26.8)).
genome_size(ovale,      mb(33.5)).
genome_size(malariae,   mb(33.6)).     % LARGEST
genome_size(knowlesi,   mb(23.5)).

genome_gc(falciparum, percent(19.4)).  % most AT-rich eukaryote
genome_gc(vivax,      percent(42.3)).
genome_gc(ovale,      percent(29)).
genome_gc(malariae,   percent(24.6)).
genome_gc(knowlesi,   percent(38.8)).

chromosomes(Species, 14) :- plasmodium_species(Species).

genome_sequenced(falciparum, year(2002)).
genome_sequenced(vivax,      year(2008)).
genome_sequenced(knowlesi,   year(2008)).
genome_sequenced(malariae,   year(2017)).
genome_sequenced(ovale,      year(2017)).

% In vitro culture tractability
continuous_culture(falciparum, established_in_human_rbc).
continuous_culture(knowlesi,   established_in_human_rbc).   % only simian one adapted
continuous_culture(vivax,      not_established_needs_reticulocytes).
continuous_culture(ovale,      not_established).
continuous_culture(malariae,   not_established).

% Universal organelles (drug targets)
organelle(Species, apicoplast,    essential)   :- plasmodium_species(Species).
organelle(Species, mitochondrion, essential)   :- plasmodium_species(Species).

% ================================================================
% SECTION 11 — CLINICAL SEVERITY & SIGNATURE PATHOLOGY
% ================================================================

severity(falciparum, most_lethal).
severity(vivax,      usually_mild_but_can_be_severe).
severity(ovale,      mildest).
severity(malariae,   mild_but_chronic).
severity(knowlesi,   can_be_severe_second_to_falciparum).

signature_pathology(falciparum, cerebral_malaria).
signature_pathology(falciparum, placental_malaria).
signature_pathology(falciparum, severe_anaemia).
signature_pathology(vivax,      severe_anaemia).
signature_pathology(vivax,      splenic_rupture).
signature_pathology(vivax,      acute_respiratory_distress).
signature_pathology(ovale,      mild_self_limiting_with_relapse).
signature_pathology(malariae,   quartan_nephropathy).        % ★ immune-complex GN
signature_pathology(knowlesi,   hyperparasitemia_and_thrombocytopenia).
signature_pathology(knowlesi,   multi_organ_failure_if_delayed).

cerebral_malaria_risk(falciparum, high).
cerebral_malaria_risk(vivax,      rare).
cerebral_malaria_risk(ovale,      essentially_none).
cerebral_malaria_risk(malariae,   essentially_none).
cerebral_malaria_risk(knowlesi,   rare).

% ================================================================
% SECTION 12 — DIAGNOSTICS
% ================================================================

diagnostic_microscopy_hallmark(falciparum, double_dot_rings_applique_forms_crescent_gametocytes).
diagnostic_microscopy_hallmark(vivax,      enlarged_rbc_schuffners_amoeboid_trophozoite).
diagnostic_microscopy_hallmark(ovale,      oval_fimbriated_rbc_james_dots_comet_forms).
diagnostic_microscopy_hallmark(malariae,   band_forms_rosette_daisy_head_schizonts).
diagnostic_microscopy_hallmark(knowlesi,   mixed_falciparum_like_rings_and_malariae_like_bands).

rdt_antigen(falciparum, hrp2).             % falciparum-specific
rdt_antigen(falciparum, pldh).
rdt_antigen(vivax,      pvldh).
rdt_antigen(vivax,      aldolase).
rdt_antigen(ovale,      pldh_pan).
rdt_antigen(malariae,   pldh_pan).
rdt_antigen(knowlesi,   pldh_pan).
hrp2_specific_to(falciparum).              % HRP2 only useful for falciparum

requires_pcr_for_reliable_id(ovale).       % to separate curtisi/wallikeri
requires_pcr_for_reliable_id(malariae).    % vs knowlesi
requires_pcr_for_reliable_id(knowlesi).    % microscopy mimics malariae/falciparum

diagnostic_confusion(knowlesi, malariae, reason(shared_band_forms)).
diagnostic_confusion(knowlesi, falciparum, reason(shared_ring_forms)).
diagnostic_confusion(ovale,    vivax,    reason(both_enlarge_rbc_with_dots)).

% ================================================================
% SECTION 13 — TREATMENT
% ================================================================

first_line_treatment(falciparum, artemisinin_combination_therapy).
first_line_treatment(vivax,      chloroquine_or_act_plus_radical_cure).
first_line_treatment(ovale,      chloroquine_plus_radical_cure).
first_line_treatment(malariae,   chloroquine).
first_line_treatment(knowlesi,   act_or_chloroquine).

severe_disease_treatment(Species, intravenous_artesunate) :-
    member(Species, [falciparum, vivax, knowlesi]).

% Radical cure (anti-hypnozoite) — ONLY for the relapsing species
requires_radical_cure(Species) :- forms_hypnozoite(Species, true).
radical_cure_drug(vivax, primaquine).
radical_cure_drug(vivax, tafenoquine).
radical_cure_drug(ovale, primaquine).
radical_cure_drug(ovale, tafenoquine).
radical_cure_prerequisite(g6pd_testing).   % for all 8-aminoquinoline use

% Chloroquine resistance status
chloroquine_resistance(falciparum, widespread, gene(pfcrt_k76t)).
chloroquine_resistance(vivax,      emerging,   region(oceania_indonesia)).
chloroquine_resistance(ovale,      none_confirmed).
chloroquine_resistance(malariae,   rare_reports_only).
chloroquine_resistance(knowlesi,   none_significant).

artemisinin_resistance(falciparum, emerging, gene(pfkelch13_c580y), region(greater_mekong)).
artemisinin_resistance(vivax,      not_significant).
artemisinin_resistance(knowlesi,   not_reported).

% ================================================================
% SECTION 14 — VACCINES & PROTECTIVE GENETICS
% ================================================================

licensed_vaccine(falciparum, rts_s_as01,    target(csp), year(2021)).
licensed_vaccine(falciparum, r21_matrix_m,  target(csp), year(2023)).
vaccine_status(vivax,    candidates_only_no_license).
vaccine_status(ovale,    none).
vaccine_status(malariae, none).
vaccine_status(knowlesi, none_used_as_research_model).

% Protective human genetic variants
genetic_protection(sickle_cell_trait, falciparum, strong).
genetic_protection(g6pd_deficiency,   falciparum, moderate).
genetic_protection(thalassaemia,      falciparum, moderate).
genetic_protection(duffy_negativity,  vivax,      near_complete).   % ★ vivax only
genetic_protection(ovalocytosis,      falciparum, against_cerebral).
genetic_protection(ovalocytosis,      vivax,      modest).

% Crucial contrast: Duffy-negativity protects ONLY against vivax
no_protection_from_duffy_negativity(ovale).      % duffy-independent
no_protection_from_duffy_negativity(malariae).   % duffy-independent
no_protection_from_duffy_negativity(falciparum). % does not use duffy

% ================================================================
% SECTION 15 — TRANSMISSION & ELIMINATION
% ================================================================

intrinsic_incubation(falciparum, days(9, 14)).
intrinsic_incubation(vivax,      days(12, 17)).
intrinsic_incubation(ovale,      days(12, 20)).
intrinsic_incubation(malariae,   days(18, 40)).   % longest
intrinsic_incubation(knowlesi,   days(9, 12)).

transmission_special_route(malariae, blood_transfusion, reason(decades_long_chronicity)).
transmission_special_route(knowlesi, zoonotic_spillover, reason(macaque_reservoir)).

elimination_obstacle(falciparum, drug_resistance).
elimination_obstacle(vivax,      hypnozoite_reservoir).
elimination_obstacle(ovale,      hypnozoite_reservoir).
elimination_obstacle(malariae,   chronic_subpatent_carriers).
elimination_obstacle(knowlesi,   animal_reservoir_not_human_treatable).   % ★ uneradicable

% ================================================================
% SECTION 16 — CROSS-SPECIES DERIVED RULES (consistency engine)
% ================================================================

% --- Consistency check: fever period must equal IDC duration ---
fever_cycle_consistent(Species) :-
    idc_duration(Species, hours(H)),
    fever_periodicity(Species, hours(H), _).

all_fever_cycles_consistent :-
    forall(plasmodium_species(S), fever_cycle_consistent(S)).

% --- Relapse vs recrudescence logic ---
can_relapse(Species)         :- forms_hypnozoite(Species, true).
persists_without_hypnozoite(Species) :-
    forms_hypnozoite(Species, false),
    ( causes_recrudescence(Species, _, _) ; true ).

blood_treatment_sufficient(Species) :- forms_hypnozoite(Species, false).
needs_combined_liver_blood_treatment(Species) :- forms_hypnozoite(Species, true).

% --- Superlatives across the five species ---
fastest_blood_cycle(Species) :-
    idc_duration(Species, hours(Min)),
    \+ ( idc_duration(_, hours(H)), H < Min ).        % → knowlesi (24h)

slowest_blood_cycle(Species) :-
    idc_duration(Species, hours(Max)),
    \+ ( idc_duration(_, hours(H)), H > Max ).        % → malariae (72h)

longest_liver_stage(Species) :-
    hepatic_duration(Species, days(_, Max)),
    \+ ( hepatic_duration(_, days(_, H)), H > Max ).  % → malariae (16d)

fewest_merozoites(Species) :-
    merozoites_per_schizont(Species, range(_, Max)),
    \+ ( merozoites_per_schizont(_, range(_, H)), H < Max ). % → malariae (6–12)

most_merozoites(Species) :-
    merozoites_per_schizont(Species, range(_, Max)),
    \+ ( merozoites_per_schizont(_, range(_, H)), H > Max ). % → falciparum (16–32)

largest_genome(Species) :-
    genome_size(Species, mb(Max)),
    \+ ( genome_size(_, mb(H)), H > Max ).            % → malariae (33.6 Mb)

most_at_rich_genome(Species) :-
    genome_gc(Species, percent(Min)),
    \+ ( genome_gc(_, percent(H)), H < Min ).         % → falciparum (19.4%)

% --- Group classifications ---
relapsing_species(S)        :- forms_hypnozoite(S, true).          % vivax, ovale
tertian_species(S)          :- fever_periodicity(S, hours(48), tertian).
quartan_species(S)          :- fever_periodicity(S, hours(72), quartan).
quotidian_species(S)        :- fever_periodicity(S, hours(24), quotidian).
zoonotic_species(S)         :- parasite_status(S, zoonotic).        % knowlesi
reticulocyte_restricted(S)  :- preferred_rbc(S, reticulocytes).     % vivax, ovale
duffy_negativity_protects(S):- duffy_dependence(S, obligate).       % vivax only

% --- Eradicability ---
not_eliminable_by_human_treatment(S) :-
    parasite_status(S, zoonotic),
    reservoir_host(S, _).                             % → knowlesi

% --- HRP2-based RDT usability ---
hrp2_rdt_useful(S) :- hrp2_specific_to(S).            % falciparum only

% --- Severe-disease-capable species ---
can_cause_severe_disease(S) :-
    member(S, [falciparum, vivax, knowlesi]).

% --- Generic comparison constructor ---
compare_species(Feature, S1, V1, S2, V2) :-
    call(Feature, S1, V1),
    call(Feature, S2, V2),
    S1 \= S2.

% --- Pretty life-cycle traversal for any species ---
life_cycle_sequence(Species, Stages) :-
    plasmodium_species(Species),
    life_cycle_order(Stages).

% ================================================================
% SECTION 17 — MASTER COMPARISON TABLE (as a queryable fact)
% ================================================================

species_profile(falciparum, profile(
    fever(tertian_48h), rbc(all_ages), hypnozoite(no),
    duffy(redundant), severity(most_lethal),
    signature(cerebral_and_placental_malaria),
    treatment(act_alone))).

species_profile(vivax, profile(
    fever(tertian_48h), rbc(reticulocytes), hypnozoite(yes),
    duffy(obligate), severity(can_be_severe),
    signature(relapse_severe_anaemia_splenic_rupture),
    treatment(blood_plus_radical_cure))).

species_profile(ovale, profile(
    fever(tertian_48h), rbc(reticulocytes), hypnozoite(yes),
    duffy(independent), severity(mildest),
    signature(oval_fimbriated_rbc_two_subspecies),
    treatment(blood_plus_radical_cure))).

species_profile(malariae, profile(
    fever(quartan_72h), rbc(old_erythrocytes), hypnozoite(no),
    duffy(independent), severity(mild_chronic),
    signature(quartan_nephropathy_decades_chronicity),
    treatment(chloroquine_alone))).

species_profile(knowlesi, profile(
    fever(quotidian_24h), rbc(broad_all_ages), hypnozoite(no),
    duffy(uses_duffy), severity(can_be_severe),
    signature(zoonotic_24h_cycle_thrombocytopenia),
    treatment(act_or_chloroquine))).

% ================================================================
% EXAMPLE QUERIES
% ================================================================

% Are all fever cycles internally consistent with IDC duration?
% ?- all_fever_cycles_consistent.

% Which species can relapse, and which need radical cure?
% ?- relapsing_species(S).
% ?- needs_combined_liver_blood_treatment(S).

% Superlatives:
% ?- fastest_blood_cycle(S).      % knowlesi
% ?- slowest_blood_cycle(S).      % malariae
% ?- longest_liver_stage(S).      % malariae
% ?- fewest_merozoites(S).        % malariae
% ?- most_merozoites(S).          % falciparum
% ?- most_at_rich_genome(S).      % falciparum
% ?- largest_genome(S).           % malariae

% Which single species is zoonotic and cannot be eradicated by treating humans?
% ?- not_eliminable_by_human_treatment(S).

% For which species does Duffy-negativity confer protection?
% ?- duffy_negativity_protects(S).   % vivax only

% Which species can cause severe disease?
% ?- can_cause_severe_disease(S).

% Compare any feature between two species:
% ?- compare_species(idc_duration, S1, V1, S2, V2).
% ?- compare_species(forms_hypnozoite, falciparum, _, vivax, _).

% Full one-line profile for a species:
% ?- species_profile(knowlesi, P).

% Which RDT antigen is species-specific and usable alone?
% ?- hrp2_rdt_useful(S).            % falciparum