%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.12.2"

\header {
  lsrtags = "expressive-marks, tweaks-and-overrides"

%% Translation of GIT committish: fa19277d20f8ab0397c560eb0e7b814bd804ecec
  texidoces = "
Se puede hacer que una ligadura de expresión sea asimétrica para
adaptarse mejor a un patrón asimétrico de notas.

"
  doctitlees = "Ligaduras asimétricas"



  texidoc = "
Slurs can be made asymmetric to match an asymmetric pattern of notes
better.

"
  doctitle = "Asymmetric slurs"
} % begin verbatim

slurNotes = { d,8( a' d f a f' d, a) }

\relative c' {
  \stemDown
  \slurUp
  \slurNotes
  \once \override Slur #'eccentricity = #3.0
  \slurNotes
}

