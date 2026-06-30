:- set_prolog_flag(encoding, utf8).
% ============================================================
% Plasmodium knowledge graph — master loader
% Consults all four knowledge bases as one graph.
%   ?- consult('plasmodium_kb.pl').
% ============================================================
:- consult(plasmodium_cell_structure).
:- consult(plasmodium_life_cycle).
:- consult(plasmodium_antimalarial_drugs).
:- consult(plasmodium_bridge).
