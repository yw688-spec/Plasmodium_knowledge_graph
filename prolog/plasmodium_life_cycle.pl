% ============================================================
% Plasmodium Life Cycle — Complete Knowledge Base
% Stages: Sporozoite → Hepatic → Erythrocytic → Gametocyte
% ============================================================

:- set_prolog_flag(encoding, utf8).

% --- Predicates whose clauses are intentionally grouped by life-cycle
% --- section rather than by predicate, so declare them discontiguous.
:- discontiguous morphology/3.
:- discontiguous invasion_target/2.
:- discontiguous trophozoite_property/3.
:- discontiguous schizogony/2.
:- discontiguous immune_evasion/3.

% ============================================================
% SPECIES & HOSTS
% ============================================================

plasmodium_species(falciparum).
plasmodium_species(vivax).
plasmodium_species(malariae).
plasmodium_species(ovale).
plasmodium_species(knowlesi).

host(anopheles_mosquito, vector).
host(human,              definitive).

% ============================================================
% LIFE CYCLE STAGE ORDER
% ============================================================

life_cycle_stage(1, sporozoite_stage).
life_cycle_stage(2, hepatic_stage).
life_cycle_stage(3, erythrocytic_stage).
life_cycle_stage(4, gametocyte_stage).
life_cycle_stage(5, mosquito_stage).        % sporogonic — future extension

preceded_by(hepatic_stage,     sporozoite_stage).
preceded_by(erythrocytic_stage, hepatic_stage).
preceded_by(gametocyte_stage,  erythrocytic_stage).
preceded_by(mosquito_stage,    gametocyte_stage).

next_stage(sporozoite_stage,   hepatic_stage).
next_stage(hepatic_stage,      erythrocytic_stage).
next_stage(erythrocytic_stage, gametocyte_stage).
next_stage(gametocyte_stage,   mosquito_stage).

entry_form(sporozoite_stage,   sporozoite).
entry_form(hepatic_stage,      sporozoite).
entry_form(erythrocytic_stage, merozoite).
entry_form(gametocyte_stage,   committed_merozoite).
entry_form(mosquito_stage,     gametocyte).

exit_form(sporozoite_stage,    sporozoite).
exit_form(hepatic_stage,       merozoite).
exit_form(erythrocytic_stage,  merozoite).
exit_form(gametocyte_stage,    gametocyte).

host_of_stage(sporozoite_stage,   human).
host_of_stage(hepatic_stage,      human).
host_of_stage(erythrocytic_stage, human).
host_of_stage(gametocyte_stage,   human).
host_of_stage(mosquito_stage,     anopheles_mosquito).

site_of_stage(sporozoite_stage,   [skin, bloodstream, liver]).
site_of_stage(hepatic_stage,      [hepatocyte]).
site_of_stage(erythrocytic_stage, [red_blood_cell]).
site_of_stage(gametocyte_stage,   [red_blood_cell, peripheral_blood]).
site_of_stage(mosquito_stage,     [midgut, oocyst, salivary_glands]).

clinically_silent(sporozoite_stage).
clinically_silent(hepatic_stage).
clinically_symptomatic(erythrocytic_stage).
clinically_symptomatic(gametocyte_stage).    % gametocytaemia can coincide with symptoms

% ============================================================
% SECTION 1 — SPOROZOITE STAGE
% ============================================================

% --- Transmission ---
transmission_event(mosquito_bite, anopheles_mosquito, human, sporozoite).

enters_via(sporozoite, human, skin_puncture).
travels_to(sporozoite, bloodstream, after(skin_puncture)).
travels_to(sporozoite, hepatocyte,  after(bloodstream)).

% --- Morphology ---
morphology(sporozoite, shape,   elongated).
morphology(sporozoite, length,  um(10, 15)).
morphology(sporozoite, feature, apical_complex).
morphology(sporozoite, feature, circumsporozoite_protein).

% --- Properties ---
motile(sporozoite).
haploid(sporozoite).
infectious(sporozoite, human).
intracellular(sporozoite, hepatocyte).

% --- Location in Mosquito ---
location(sporozoite, salivary_glands, anopheles_mosquito).

% --- Hepatocyte Targeting ---
invasion_target(sporozoite, hepatocyte).

sporozoite_invasion_steps([
    recognize_hspg_on_kupffer_cells,
    traverse_kupffer_cell,
    contact_hepatocyte_basolateral_membrane,
    bind_cd81_receptor,
    bind_sr_b1_receptor,
    form_moving_junction,
    invaginate_host_membrane,
    establish_parasitophorous_vacuole_membrane
]).

% --- Key Proteins ---
surface_protein(sporozoite, circumsporozoite_protein, function(host_cell_binding)).
surface_protein(sporozoite, trap,                     function(gliding_motility)).
surface_protein(sporozoite, maebl,                    function(hepatocyte_invasion)).

% --- Timing ---
duration(sporozoite, bloodstream_transit, minutes(30, 60)).

% ============================================================
% SECTION 2 — HEPATIC STAGE
% ============================================================

% --- PVM Properties ---
pvm_property(prevents_lysosomal_fusion).
pvm_property(allows_nutrient_import).
pvm_property(expresses_exp1).
pvm_property(expresses_exp2).
pvm_property(resists_host_autophagy).

% --- Anti-Apoptosis Mechanisms ---
anti_apoptosis_mechanism(upregulates_host_bcl2).
anti_apoptosis_mechanism(activates_pi3k_akt_pathway).
anti_apoptosis_mechanism(inhibits_caspase_3).

% --- Hepatic Development Sequence ---
hepatic_development_sequence([
    sporozoite,
    liver_trophozoite,
    liver_schizont,
    liver_merozoite
]).

trophozoite_property(liver, actively_dividing,    false).
trophozoite_property(liver, metabolically_active, true).
trophozoite_property(liver, consumes,             host_cytoplasm).
trophozoite_property(liver, suppresses,           host_apoptosis).

% --- Liver Schizogony ---
schizogony(hepatic_stage, asexual_replication).

hepatic_schizogony_steps([
    nuclear_enlargement,
    repeated_dna_replication,
    karyokinesis,
    cytoplasmic_expansion,
    organelle_duplication,
    merozoite_budding,
    hepatocyte_rupture
]).

replication_rounds(falciparum, liver, approx(13)).
replication_rounds(vivax,      liver, approx(13)).
replication_rounds(malariae,   liver, approx(12)).
replication_rounds(ovale,      liver, approx(12)).

merozoites_per_hepatic_schizont(falciparum, range(10000, 30000)).
merozoites_per_hepatic_schizont(vivax,      range(10000, 15000)).
merozoites_per_hepatic_schizont(malariae,   range(2000,  5000)).
merozoites_per_hepatic_schizont(ovale,      range(15000, 30000)).

% --- Hypnozoite (Dormant Liver Form) ---
forms_hypnozoite(vivax).
forms_hypnozoite(ovale).

hypnozoite_property(dormant,                  true).
hypnozoite_property(metabolically_suppressed, true).
hypnozoite_property(persists_in,              hepatocyte).
hypnozoite_property(resistant_to,             chloroquine).
hypnozoite_property(eliminated_by,            primaquine).
hypnozoite_property(eliminated_by,            tafenoquine).

dormancy_duration(vivax, range(weeks(3), years(3))).
dormancy_duration(ovale, range(months(1), years(4))).

reactivation_trigger(hypnozoite, fever).
reactivation_trigger(hypnozoite, concurrent_infection).
reactivation_trigger(hypnozoite, immunosuppression).
reactivation_trigger(hypnozoite, unknown).

% --- Hepatic Egress via Merosomes ---
hepatic_egress_steps([
    pvm_breakdown,
    host_cell_plasma_membrane_disruption,
    merosome_formation,
    merosome_budding_into_sinusoid,
    merosome_travel_to_lung_capillaries,
    merosome_rupture,
    merozoite_release_into_bloodstream
]).

merosome_property(protects_merozoites_from_kupffer_cells).
merosome_property(delays_immune_detection).
merosome_property(wrapped_in_host_cell_membrane).

% --- Liver Stage Duration (Species-Specific) ---
liver_stage_duration(falciparum, days(5,  7)).
liver_stage_duration(vivax,      days(6,  8)).
liver_stage_duration(malariae,   days(13, 16)).
liver_stage_duration(ovale,      days(9,  10)).
liver_stage_duration(knowlesi,   days(5,  7)).

% --- Hepatic Key Proteins ---
key_protein(hepatic_stage, circumsporozoite_protein,  role(hepatocyte_binding)).
key_protein(hepatic_stage, trap,                      role(gliding_motility)).
key_protein(hepatic_stage, lisp1,                     role(pvm_breakdown)).
key_protein(hepatic_stage, lisp2,                     role(pvm_breakdown)).
key_protein(hepatic_stage, falstatin,                 role(host_protease_inhibition)).
key_protein(hepatic_stage, hsp101,                    role(protein_export_into_host)).

% --- Hepatic Immune Evasion ---
immune_evasion(hepatic_stage, low_surface_antigen_expression).
immune_evasion(hepatic_stage, pvm_shields_parasite_from_cytosol_sensors).
immune_evasion(hepatic_stage, inhibits_mhc1_antigen_presentation).
immune_evasion(hepatic_stage, suppresses_ifn_gamma_signalling).
immune_evasion(hepatic_stage, prevents_toll_like_receptor_activation).

% ============================================================
% SECTION 3 — ERYTHROCYTIC STAGE
% ============================================================

% --- Merozoite Morphology ---
morphology(merozoite, shape,   ovoid).
morphology(merozoite, size,    um(1.5, 2.5)).
morphology(merozoite, feature, apical_complex).
morphology(merozoite, feature, rhoptries).
morphology(merozoite, feature, micronemes).
morphology(merozoite, feature, dense_granules).
morphology(merozoite, surface, msp1).
morphology(merozoite, surface, msp2).
morphology(merozoite, surface, msp3).

% --- RBC Invasion ---
invasion_target(merozoite, red_blood_cell).

rbc_invasion_steps([
    initial_reversible_attachment,
    apical_reorientation,
    tight_junction_formation,
    active_penetration_via_actomyosin,
    parasitophorous_vacuole_formation,
    sealing_of_vacuole_membrane
]).

invasion_ligand(falciparum, ebl175, receptor(glycophorin_a)).
invasion_ligand(falciparum, ebl140, receptor(glycophorin_c)).
invasion_ligand(falciparum, rh4,    receptor(complement_receptor_1)).
invasion_ligand(falciparum, rh5,    receptor(basigin)).
invasion_ligand(vivax,      dbp,    receptor(duffy_antigen)).
invasion_ligand(malariae,   p41b,   receptor(glycophorin_b)).

% Duffy-negativity confers resistance to P. vivax
duffy_negative_population(west_african_descent, frequency(high)).

resistant_to(homo_sapiens, vivax) :-
    duffy_negative(homo_sapiens).

% A human from a predominantly Duffy-negative population lacks the DARC
% receptor that P. vivax needs to invade RBCs. Modelled at population
% granularity (the KB has no per-individual host model).
duffy_negative(homo_sapiens) :-
    duffy_negative_population(_, frequency(high)).

% --- Preferred RBC Age ---
preferred_rbc(falciparum, all_ages,            any_rbc).
preferred_rbc(vivax,      reticulocytes,        young_rbc).
preferred_rbc(ovale,      reticulocytes,        young_rbc).
preferred_rbc(malariae,   mature_erythrocytes,  old_rbc).

% --- Intraerythrocytic Development Cycle (IDC) ---
idc_duration(falciparum, hours(48)).
idc_duration(vivax,      hours(48)).
idc_duration(ovale,      hours(48)).
idc_duration(malariae,   hours(72)).
idc_duration(knowlesi,   hours(24)).

erythrocytic_development_sequence([
    ring_stage,
    early_trophozoite,
    late_trophozoite,
    early_schizont,
    late_schizont,
    segmented_schizont,
    merozoite_release
]).

% Ring Stage
ring_stage_property(duration,             hours(12, 24)).
ring_stage_property(shape,                ring_with_dot).
ring_stage_property(metabolic_rate,       low).
ring_stage_property(hemoglobin_digestion, minimal).
ring_stage_property(exports,              knob_proteins_to_rbc_membrane).

% Trophozoite
trophozoite_property(erythrocytic, duration,       hours(12, 24)).
trophozoite_property(erythrocytic, metabolically,  highly_active).
trophozoite_property(erythrocytic, digests,        hemoglobin).
trophozoite_property(erythrocytic, produces,       hemozoin).
trophozoite_property(erythrocytic, exports,        pfemp1_to_rbc_surface).
trophozoite_property(erythrocytic, organelle,      food_vacuole).

% Hemoglobin Digestion
hemoglobin_digestion_steps([
    endocytosis_of_hemoglobin,
    transport_to_food_vacuole,
    cleavage_by_plasmepsins,
    cleavage_by_falcipains,
    cleavage_by_falcilysin,
    amino_acid_release_for_parasite,
    heme_detoxification_to_hemozoin
]).

hemozoin_property(crystalline_heme_polymer).
hemozoin_property(biologically_inert).
hemozoin_property(basis_of_malaria_rapid_diagnostic_tests).

% Erythrocytic Schizogony
schizogony(erythrocytic_stage, asexual_replication).

merozoites_per_erythrocytic_schizont(falciparum, range(16, 32)).
merozoites_per_erythrocytic_schizont(vivax,      range(12, 24)).
merozoites_per_erythrocytic_schizont(malariae,   range(6,  12)).
merozoites_per_erythrocytic_schizont(ovale,      range(8,  16)).
merozoites_per_erythrocytic_schizont(knowlesi,   range(8,  16)).

% Erythrocytic Egress
erythrocytic_egress_trigger(protease_pfsub1_activation).
erythrocytic_egress_trigger(rise_in_cyclic_amp).
erythrocytic_egress_trigger(calcium_spike_in_parasitophorous_vacuole).

erythrocytic_egress_steps([
    pvm_rupture,
    rbc_membrane_disruption,
    merozoite_dispersal_into_plasma,
    immediate_reinvasion_of_new_rbc
]).

reinvasion_window(merozoite, minutes(1, 3)).

% --- RBC Remodelling (P. falciparum) ---
rbc_remodelling(falciparum, exports_over,  proteins(400)).
rbc_remodelling(falciparum, installs,      knobs_on_rbc_surface).
rbc_remodelling(falciparum, increases,     rbc_rigidity).
rbc_remodelling(falciparum, decreases,     rbc_deformability).

knob_component(kharp).
knob_component(pfemp3).
knob_component(pfemp1).

% PfEMP1
pfemp1_property(encoded_by,         var_gene_family).
pfemp1_property(var_gene_count,     approx(60)).
pfemp1_property(expression,         mutually_exclusive_one_at_a_time).
pfemp1_property(variation,          antigen_switching_to_evade_immunity).
pfemp1_property(domain,             dbl_alpha).
pfemp1_property(domain,             cidr_alpha).

% Cytoadherence
cytoadherence(pfemp1, cd36,                  endothelium).
cytoadherence(pfemp1, icam1,                 endothelium).
cytoadherence(pfemp1, pecam1,                endothelium).
cytoadherence(pfemp1, epcr,                  endothelium).
cytoadherence(pfemp1, csf1r,                 placenta).
cytoadherence(pfemp1, chondroitin_sulfate_a, placenta).

% Sequestration
sequestration(falciparum, true).
sequestration(vivax,      false).
sequestration(malariae,   partial).

sequestration_consequence(avoids_splenic_clearance).
sequestration_consequence(accumulates_in_microvasculature).
sequestration_consequence(causes_cerebral_malaria).
sequestration_consequence(causes_placental_malaria).
sequestration_consequence(impairs_organ_perfusion).

% Rosetting
rosetting(falciparum, true).
rosetting_receptor(cr1_on_uninfected_rbc).
rosetting_receptor(hbag_blood_group_antigen).
rosetting_consequence(impairs_microcirculation).
rosetting_consequence(correlates_with_severe_malaria).

% --- Fever Periodicity ---
fever_periodicity(falciparum, hours(48)).
fever_periodicity(vivax,      hours(48)).
fever_periodicity(ovale,      hours(48)).
fever_periodicity(malariae,   hours(72)).
fever_periodicity(knowlesi,   hours(24)).

fever_mechanism([
    schizont_rupture,
    merozoite_release,
    gpi_anchor_release,
    hemozoin_release,
    tnf_alpha_induction,
    il1_beta_induction,
    il6_induction,
    hypothalamic_thermostat_reset,
    fever_spike
]).

% --- Erythrocytic Immune Evasion ---
immune_evasion(erythrocytic_stage, var_gene_switching,      evades_antibody_recognition).
immune_evasion(erythrocytic_stage, sequestration,           avoids_splenic_filtering).
immune_evasion(erythrocytic_stage, rosetting,               hides_surface_antigens).
immune_evasion(erythrocytic_stage, rbc_surface_remodelling, disrupts_complement_deposition).
immune_evasion(erythrocytic_stage, inhibits_phagocyte_oxidative_burst, true).

% --- Pathology ---
pathology(erythrocytic_stage, anemia,
    caused_by([rbc_lysis, splenic_clearance, dyserythropoiesis])).

pathology(erythrocytic_stage, cerebral_malaria,
    caused_by([brain_sequestration, neuroinflammation, blood_brain_barrier_breakdown])).

pathology(erythrocytic_stage, severe_malaria,
    caused_by([high_parasitemia, cytokine_storm, organ_sequestration])).

pathology(erythrocytic_stage, placental_malaria,
    caused_by([placental_sequestration, csa_binding_pfemp1])).

pathology(erythrocytic_stage, hypoglycemia,
    caused_by([parasite_glucose_consumption, quinine_induced_insulin_release])).

pathology(erythrocytic_stage, respiratory_distress,
    caused_by([metabolic_acidosis, lung_sequestration])).

% --- Protective Human Genetics ---
genetic_protection(sickle_cell_trait,  hbs,   against(severe_falciparum)).
genetic_protection(thalassemia,        hba,   against(severe_falciparum)).
genetic_protection(g6pd_deficiency,    g6pd,  against(severe_falciparum)).
genetic_protection(ovalocytosis,       band3, against(cerebral_malaria)).
genetic_protection(duffy_negativity,   darc,  against(vivax)).
genetic_protection(glycophorin_c_variant, gypc, against(falciparum)).

protection_mechanism(sickle_cell_trait, [
    impaired_parasite_growth_in_hbs_rbc,
    increased_phagocytosis_of_infected_rbc,
    reduced_rosetting
]).

% ============================================================
% SECTION 4 — GAMETOCYTE STAGE
% ============================================================

% --- Commitment Switch ---
commitment_nature(gametocytogenesis, irreversible).
commitment_timing(gametocytogenesis, during_schizogony).

commitment_trigger(high_parasite_density).
commitment_trigger(nutrient_stress).
commitment_trigger(low_hemoglobin_availability).
commitment_trigger(immune_pressure).
commitment_trigger(subtherapeutic_drug_levels).
commitment_trigger(elevated_hdac2_activity).

master_regulator(gametocytogenesis, ap2_g).
ap2_g_property(transcription_factor,  true).
ap2_g_property(normally_silenced_by,  heterochromatin_protein_1).
ap2_g_property(activation_removes,    hp1_repression).
ap2_g_property(activates_downstream,  gametocyte_specific_genes).
ap2_g_property(once_activated,        commitment_irreversible).

epigenetic_control(ap2_g, h3k9me3_histone_mark, silenced).
epigenetic_control(ap2_g, hp1_removal,           activated).

sex_determination_factor(female, ap2_g2).
sex_determination_factor(male,   mr_factor).

sex_ratio_produced(female_to_male, approx(3, 1)).

gametocyte_commitment_rate(falciparum, percent(0.1, 5.0)).
gametocyte_commitment_rate(vivax,      percent(1.0, 10.0)).
gametocyte_commitment_rate(malariae,   percent(0.5, 3.0)).

% --- Maturation Stages ---
gametocyte_stages(falciparum, [stage_i, stage_ii, stage_iii, stage_iv, stage_v]).
gametocyte_stages(vivax,      [immature, mature]).
gametocyte_stages(malariae,   [immature, mature]).
gametocyte_stages(ovale,      [immature, mature]).

maturation_duration(falciparum, days(8, 12)).
maturation_duration(vivax,      days(3,  4)).
maturation_duration(malariae,   days(4,  5)).
maturation_duration(ovale,      days(3,  4)).

% P. falciparum stage morphology
stage_morphology(falciparum, stage_i,   shape(round),
    rbc_intact(true),  visibility(difficult_to_distinguish)).
stage_morphology(falciparum, stage_ii,  shape(elongating),
    rbc_intact(true),  visibility(beginning_to_distort_rbc)).
stage_morphology(falciparum, stage_iii, shape(elongated_pointed_ends),
    rbc_intact(true),  visibility(rbc_clearly_distorted)).
stage_morphology(falciparum, stage_iv,  shape(elongated_curved),
    rbc_intact(true),  visibility(distinct_from_other_stages)).
stage_morphology(falciparum, stage_v,   shape(crescent),
    rbc_intact(false), visibility(easily_identified_on_blood_smear)).

% Sequestration of early gametocytes (consistent with erythrocytic sequestration)
sequestration_during(falciparum, stage_i,   bone_marrow_erythroblastic_islands).
sequestration_during(falciparum, stage_ii,  bone_marrow_erythroblastic_islands).
sequestration_during(falciparum, stage_iii, bone_marrow_erythroblastic_islands).
sequestration_during(falciparum, stage_iv,  spleen).
sequestration_during(falciparum, stage_v,   peripheral_blood).

% Stage V deformability restored — consistent with spleen passage
deformability(falciparum, stage_i_to_iv, rigid).
deformability(falciparum, stage_v,       deformable).

infectious_to_mosquito(falciparum, stage_v).
infectious_to_mosquito(vivax,      mature).
infectious_to_mosquito(malariae,   mature).
infectious_to_mosquito(ovale,      mature).

% --- Male vs Female Gametocytes ---
gametocyte_sex(microgametocyte, male).
gametocyte_sex(macrogametocyte, female).

macrogametocyte_property(nucleus,            compact_and_eccentric).
macrogametocyte_property(cytoplasm,          dense_dark_staining).
macrogametocyte_property(osmiophilic_bodies, present).
macrogametocyte_property(ribosomes,          abundant).
macrogametocyte_property(mitochondria,       numerous).
macrogametocyte_property(ploidy,             haploid).

microgametocyte_property(nucleus,         large_diffuse_central).
microgametocyte_property(cytoplasm,       pale_light_staining).
microgametocyte_property(axonemes,        present).
microgametocyte_property(metabolic_rate,  lower_than_female).
microgametocyte_property(ploidy,          haploid).

axoneme_property(structure,    nine_plus_two_microtubule_arrangement).
axoneme_property(assembled_in, human_host_rbc).
axoneme_property(activated_by, temperature_drop_in_mosquito_midgut).
axoneme_property(activated_by, xanthurenic_acid_in_mosquito_midgut).

% --- Gametocyte Proteins ---
gametocyte_protein(both,   pfs16,    role(early_gametocyte_marker)).
gametocyte_protein(both,   pfg27,    role(gametocyte_development)).
gametocyte_protein(both,   pfs230,   role(membrane_complex_and_fertilisation)).
gametocyte_protein(both,   pfs48_45, role(fertilisation_competence)).
gametocyte_protein(female, pfs25,    role(post_fertilisation_zygote_surface)).
gametocyte_protein(female, pfs28,    role(ookinete_surface_protein)).
gametocyte_protein(female, pfs47,    role(mosquito_immune_evasion)).
gametocyte_protein(male,   pfhap2,   role(membrane_fusion_during_fertilisation)).
gametocyte_protein(male,   pf14,     role(exflagellation_centre_formation)).

% --- Transmission-Blocking Vaccine Targets ---
tbv_target(pfs230,   stage(gametocyte), efficacy(high)).
tbv_target(pfs48_45, stage(gametocyte), efficacy(high)).
tbv_target(pfs25,    stage(gamete),     efficacy(high)).
tbv_target(pfs28,    stage(ookinete),   efficacy(moderate)).

% --- Lifespan ---
gametocyte_lifespan(falciparum, stage_v, days(7, 14)).
gametocyte_lifespan(vivax,      mature,  days(3,  5)).
gametocyte_lifespan(malariae,   mature,  days(5,  7)).

% --- Infectivity ---
minimum_infectious_density(falciparum, gametocytes_per_ul(5, 20)).

% --- Mosquito Uptake & Activation ---
uptake_event(mosquito_blood_meal, anopheles_mosquito, human, gametocyte).

mosquito_activation_signals([
    temperature_drop(from_celsius(37), to_celsius(25)),
    xanthurenic_acid_present,
    ph_increase,
    bicarbonate_increase
]).

exflagellation_steps([
    gametocyte_escapes_rbc,
    three_rounds_of_rapid_dna_replication,
    eight_flagellated_microgametes_formed,
    microgametes_released_into_midgut_lumen
]).

exflagellation_duration(minutes(8, 15)).
microgametes_per_microgametocyte(8).

macrogamete_steps([
    gametocyte_escapes_rbc,
    rounds_off_into_sphere,
    osmiophilic_body_discharge,
    surface_membrane_modifications,
    becomes_receptive_macrogamete
]).

fertilisation_steps([
    motile_microgamete_encounters_macrogamete,
    hap2_fusion_protein_mediates_membrane_fusion,
    nuclear_fusion,
    zygote_formed_diploid
]).

fertilisation_site(mosquito_midgut_lumen).
product_of_fertilisation(zygote).
zygote_ploidy(diploid).         % only diploid stage in entire life cycle

% --- Gametocyte Immune Evasion ---
immune_evasion(gametocyte_stage, early_stages,
    sequestration_in_bone_marrow_avoids_immune_surveillance).
immune_evasion(gametocyte_stage, stage_v,
    metabolically_quiescent_low_antigen_presentation).
immune_evasion(gametocyte_stage, all_stages,
    pfemp1_downregulated_vs_asexual_stages).

transmission_blocking_antibody(pfs230,   blocks_gamete_surface).
transmission_blocking_antibody(pfs48_45, blocks_fertilisation).
transmission_blocking_antibody(pfs25,    blocks_ookinete_in_mosquito).

% ============================================================
% SECTION 5 — SHARED DRUG TARGETS ACROSS STAGES
% ============================================================

stage_drug_target(sporozoite_stage,   circumsporozoite_protein, drug(rts_s_vaccine)).
stage_drug_target(sporozoite_stage,   circumsporozoite_protein, drug(r21_matrix_m)).

stage_drug_target(hepatic_stage,      cytochrome_bc1_complex,      drug(atovaquone)).
stage_drug_target(hepatic_stage,      fatty_acid_synthesis_ii,     drug(fosmidomycin)).
stage_drug_target(hepatic_stage,      aminoquinoline_8_target,     drug(primaquine)).
stage_drug_target(hepatic_stage,      aminoquinoline_8_target,     drug(tafenoquine)).

stage_drug_target(erythrocytic_stage, heme_detoxification,         drug(chloroquine)).
stage_drug_target(erythrocytic_stage, heme_detoxification,         drug(amodiaquine)).
stage_drug_target(erythrocytic_stage, heme_detoxification,         drug(lumefantrine)).
stage_drug_target(erythrocytic_stage, dihydrofolate_reductase,     drug(pyrimethamine)).
stage_drug_target(erythrocytic_stage, dihydropteroate_synthase,    drug(sulfadoxine)).
stage_drug_target(erythrocytic_stage, artemisinin_kelch13_axis,    drug(artemisinin)).
stage_drug_target(erythrocytic_stage, cytochrome_bc1,              drug(atovaquone)).

stage_drug_target(gametocyte_stage,   aminoquinoline_8_target,     drug(primaquine)).
stage_drug_target(gametocyte_stage,   aminoquinoline_8_target,     drug(tafenoquine)).
stage_drug_target(gametocyte_stage,   pfs48_45,                    drug(transmission_blocking_vaccine)).

% Resistance mutations
resistance_mutation(chloroquine,   pfcrt_k76t,        efflux_of_drug).
resistance_mutation(artemisinin,   kelch13_c580y,     reduced_drug_activation).
resistance_mutation(pyrimethamine, dhfr_triple_mutant, reduced_binding_affinity).

% Multi-stage drugs (act on more than one stage)
multistage_drug(artemisinin,  [erythrocytic_stage, gametocyte_stage]).
multistage_drug(primaquine,   [hepatic_stage, gametocyte_stage]).
multistage_drug(tafenoquine,  [hepatic_stage, gametocyte_stage]).
multistage_drug(atovaquone,   [hepatic_stage, erythrocytic_stage]).

% ============================================================
% SECTION 6 — CROSS-STAGE RULES & DERIVED REASONING
% ============================================================

% --- Life Cycle Traversal ---

% Full ordered stage sequence
life_cycle_order([
    sporozoite_stage,
    hepatic_stage,
    erythrocytic_stage,
    gametocyte_stage,
    mosquito_stage
]).

% Stage N leads to stage N+1
leads_to(StageA, StageB) :-
    next_stage(StageA, StageB).

% Transitive reachability between stages
reachable(StageA, StageB) :-
    leads_to(StageA, StageB).
reachable(StageA, StageC) :-
    leads_to(StageA, StageB),
    reachable(StageB, StageC).

% --- Ploidy Consistency ---
ploidy_at_stage(sporozoite_stage,   haploid).
ploidy_at_stage(hepatic_stage,      haploid).
ploidy_at_stage(erythrocytic_stage, haploid).
ploidy_at_stage(gametocyte_stage,   haploid).
ploidy_at_stage(mosquito_stage,     diploid).   % zygote only; sporozoites revert to haploid after meiosis

only_diploid_stage(mosquito_stage).             % fertilisation produces only diploid form

% --- Merozoite Continuity ---
% Merozoites exit both the hepatic and erythrocytic stages
produces_merozoites(hepatic_stage).
produces_merozoites(erythrocytic_stage).

merozoite_origin(hepatic_merozoite,     hepatic_stage).
merozoite_origin(erythrocytic_merozoite, erythrocytic_stage).

% Hepatic merozoites seed the erythrocytic stage
seeds_stage(hepatic_stage, erythrocytic_stage, via(hepatic_merozoite)).
seeds_stage(erythrocytic_stage, erythrocytic_stage, via(erythrocytic_merozoite)).  % self-amplifying

% --- Sequestration Consistency ---
% P. falciparum sequesters in both erythrocytic and early gametocyte stages
sequesters(falciparum, erythrocytic_stage, microvasculature).
sequesters(falciparum, gametocyte_stage,   bone_marrow).

% P. vivax does not sequester (explicit negative for KG export)
sequesters(vivax, erythrocytic_stage, none).
sequesters(vivax, gametocyte_stage,   none).

% --- Relapse Capability ---
can_relapse(Species) :-
    forms_hypnozoite(Species).

relapse_caused_by(Species, hypnozoite_reactivation) :-
    forms_hypnozoite(Species).

% --- Fever Cycle Consistent with IDC Duration ---
fever_cycle_consistent(Species) :-
    idc_duration(Species, hours(H)),
    fever_periodicity(Species, hours(H)).

% --- Amplification Factor per Full Cycle ---
% Total merozoites from one sporozoite through one full blood cycle
total_amplification(Species, hepatic_schizont_output, N) :-
    merozoites_per_hepatic_schizont(Species, range(_, N)).

total_amplification(Species, erythrocytic_schizont_output, N) :-
    merozoites_per_erythrocytic_schizont(Species, range(_, N)).

% --- Transmission Chain ---
transmission_chain([
    step(1, mosquito_bites_human,      releases(sporozoites)),
    step(2, sporozoites_invade_liver,  produces(liver_schizonts)),
    step(3, liver_schizonts_rupture,   releases(merozoites_into_blood)),
    step(4, merozoites_invade_rbcs,    produces(erythrocytic_schizonts)),
    step(5, rbcs_rupture_repeatedly,   amplifies(parasitemia)),
    step(6, some_merozoites_commit,    produces(gametocytes)),
    step(7, mosquito_ingests_gametocytes, enables(fertilisation)),
    step(8, zygote_forms,              produces(ookinete_then_oocyst_then_sporozoites))
]).

% --- Silent vs Symptomatic Stages ---
all_silent_stages(Stages) :-
    findall(S, clinically_silent(S), Stages).

all_symptomatic_stages(Stages) :-
    findall(S, clinically_symptomatic(S), Stages).

% --- Multi-stage Drug Coverage ---
stages_targeted_by_drug(Drug, Stages) :-
    multistage_drug(Drug, Stages).

% Drug that targets the most stages
broadest_coverage_drug(Drug) :-
    multistage_drug(Drug, Stages),
    length(Stages, N),
    \+ (multistage_drug(_, OtherStages),
        length(OtherStages, M),
        M > N).

% --- Species That Cause Relapse ---
relapse_species(Species) :-
    plasmodium_species(Species),
    can_relapse(Species).

% --- All Proteins with Vaccine Potential ---
vaccine_candidate_proteins(Proteins) :-
    findall(P, tbv_target(P, _, _), Proteins).

% --- All Stages a Drug Covers ---
drug_stage_coverage(Drug, Stages) :-
    findall(Stage, stage_drug_target(Stage, _, drug(Drug)), Stages).

% --- Species with Shortest Blood Cycle ---
fastest_blood_cycle(Species) :-
    idc_duration(Species, hours(Min)),
    \+ (idc_duration(_, hours(Other)), Other < Min).

% --- Consistent Haploid Check ---
all_human_stages_haploid :-
    \+ (host_of_stage(Stage, human), ploidy_at_stage(Stage, diploid)).

% ============================================================
% EXAMPLE QUERIES
% ============================================================

% Trace the complete life cycle order:
% ?- life_cycle_order(Stages).

% Which stages are clinically silent?
% ?- all_silent_stages(Stages).

% Can P. vivax relapse? Why?
% ?- can_relapse(vivax).
% ?- relapse_caused_by(vivax, Reason).

% What is the full transmission chain?
% ?- transmission_chain(Steps).

% Which drugs cover multiple life cycle stages?
% ?- stages_targeted_by_drug(Drug, Stages).

% What stage comes after the hepatic stage?
% ?- next_stage(hepatic_stage, Next).

% Is every human-stage parasite haploid?
% ?- all_human_stages_haploid.

% Which species replicates fastest in blood?
% ?- fastest_blood_cycle(Species).

% What proteins are transmission-blocking vaccine candidates?
% ?- vaccine_candidate_proteins(Proteins).

% How many merozoites does one P. falciparum hepatic schizont produce?
% ?- total_amplification(falciparum, hepatic_schizont_output, N).

% Which stages does primaquine target?
% ?- drug_stage_coverage(primaquine, Stages).