%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.12.2"

\header {
  lsrtags = "expressive-marks, simultaneous-notes"

  texidoc = "
To connect chords with glissando lines, attach a second glissando to a
hidden voice.

"
  doctitle = "Double glissando"
} % begin verbatim

\relative c {
  \clef bass
  <<
    {
      % new voice ( = \voiceOne), hidden
      \hideNotes
      % attach glissando to note heads
      e2\glissando g
    }
    \\
    {
      % original voice with chords rearranged so that
      % glissando is attached to a & c
      <e a,>2\glissando <g c,>
    }
  >>
}

