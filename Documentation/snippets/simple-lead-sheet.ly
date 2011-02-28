%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.12.2"

\header {
  lsrtags = "chords"

%% Translation of GIT committish: fa19277d20f8ab0397c560eb0e7b814bd804ecec
  texidoces = "
Al juntar nombres de acorde en cifrado americano, melodía y letra,
obtenemos una hoja guía de acordes o «lead sheet»:

"
  doctitlees = "Hoja guía de acordes o «lead sheet» sencilla"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
 texidocde = "
Ein Liedblatt besteht aus Akkordbezeichnungen, einer Melodie und dem Liedtext:

"
  doctitlede = "Ein einfaches Liedblatt"

%% Translation of GIT committish: 9594a4569164407a146bbc4aad8be3a60a4725cf
  texidocfr = "
Assembler des noms d'accords, une mélodie et des paroles permet
d'obtenir la  partition d'un chanson :

"
  doctitlefr = "Chanson simple"

  texidoc = "
When put together, chord names, a melody, and lyrics form a lead sheet:

"
  doctitle = "Simple lead sheet"
} % begin verbatim

<<
  \chords { c2 g:sus4 f e }
  \relative c'' {
    a4 e c8 e r4
    b2 c4( d)
  }
  \addlyrics { One day this shall be free __ }
>>

