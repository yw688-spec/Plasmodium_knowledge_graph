:- set_prolog_flag(encoding, utf8).
% ============================================================
% Plasmodium KB — Cross-file compatibility bridge
% ------------------------------------------------------------
% The three knowledge bases use three different species
% vocabularies:
%   plasmodium_cell_structure.pl : plasmodium_falciparum   (binomial atom)
%   plasmodium_life_cycle.pl     : falciparum              (short atom)
%   plasmodium_antimalarial_drugs.pl : 'Plasmodium falciparum ...'
%                                       (free-text string, often multi-species)
% This file maps them to ONE canonical species atom so queries
% can join across files. Canonical form = the binomial atom
% used in plasmodium_cell_structure.pl.
%
% Load together with the three KBs, e.g. via plasmodium_kb.pl.
% ============================================================

% drug_target_organism/2 lives in the drug KB; declare multifile so this
% file loads (and rules below resolve) regardless of load order.
:- multifile drug_target_organism/2.

% ------------------------------------------------------------
% species_variant(Canonical, Variant)
%   every atom form that denotes the species across the KBs
% ------------------------------------------------------------
species_variant(plasmodium_falciparum, plasmodium_falciparum).
species_variant(plasmodium_falciparum, falciparum).
species_variant(plasmodium_vivax,      plasmodium_vivax).
species_variant(plasmodium_vivax,      vivax).
species_variant(plasmodium_ovale,      plasmodium_ovale).
species_variant(plasmodium_ovale,      ovale).
species_variant(plasmodium_malariae,   plasmodium_malariae).
species_variant(plasmodium_malariae,   malariae).
species_variant(plasmodium_knowlesi,   plasmodium_knowlesi).
species_variant(plasmodium_knowlesi,   knowlesi).

% ------------------------------------------------------------
% species_token(Canonical, Token)
%   lowercase substring used to recognise the species inside the
%   free-text drug_target_organism strings (e.g. 'P. vivax / P. falciparum')
% ------------------------------------------------------------
species_token(plasmodium_falciparum, falciparum).
species_token(plasmodium_vivax,      vivax).
species_token(plasmodium_ovale,      ovale).
species_token(plasmodium_malariae,   malariae).
species_token(plasmodium_knowlesi,   knowlesi).

% ------------------------------------------------------------
% canonical_species(+VariantOrText, -Canonical)
%   resolves any atom variant OR a free-text organism string.
% ------------------------------------------------------------
canonical_species(Variant, Canonical) :-
    species_variant(Canonical, Variant), !.
canonical_species(Text, Canonical) :-
    atom(Text),
    species_token(Canonical, Tok),
    sub_atom(Text, _, _, _, Tok).

% same_species(?A, ?B) — true if two (possibly different-vocabulary) names
% denote the same species.
same_species(A, B) :-
    canonical_species(A, C),
    canonical_species(B, C).

% ------------------------------------------------------------
% drug_targets_species(?Drug, ?Canonical)
%   bridges the drug KB's free-text organism field to canonical
%   species atoms (one drug string may yield several species).
% ------------------------------------------------------------
drug_targets_species(Drug, Canonical) :-
    drug_target_organism(Drug, Org),
    species_token(Canonical, Tok),
    sub_atom(Org, _, _, _, Tok).

% ============================================================
% EXAMPLE QUERIES (load via plasmodium_kb.pl)
% ============================================================
% Map a life-cycle species atom to the cell-structure atom:
%   ?- canonical_species(falciparum, C).            % C = plasmodium_falciparum
%
% Which drugs target P. vivax (across the free-text strings)?
%   ?- drug_targets_species(D, plasmodium_vivax).
%
% Are 'falciparum' and 'Plasmodium falciparum K1' the same species?
%   ?- same_species(falciparum, 'Plasmodium falciparum K1').
