%% Do not edit this file; it is auto-generated from input/new
%% This file is in the public domain.
\version "2.11.52"
\header {
  texidoces = "
El «Makam» es un tipo de melodía de Turquía que
utiliza intervalos microtonales de 1/9 de tono.  Consulte el
archivo de inicio @code{makam-init.ly} (véase el 'Manual de
aprendizaje @version{}, 4.6.3 Otras fuentes de información' para
averiguar la situación de este archivo) para ver detalles de los
nombres de las notas y las alteraciones.

"
  doctitlees = "El «Makam»"

  lsrtags = "pitches,world-music"
  texidoc = "Makam is a type of melody from Turkey using 1/9th-tone
microtonal alterations.  Consult the initialization file
@code{makam-init.ly} (see the `Learning Manual @version{},
4.6.3 Other sources of information' for the location of this file)
for details of pitch names and alterations."
  doctitle = "Makam"
} % begin verbatim

% Initialize makam settings
\include "makam-init.ly"

\relative c' {
  \set Staff.keySignature = #`((3 . ,BAKIYE) (6 . ,(- KOMA)))
  c4 cc db fk
  gbm4 gfc gfb efk
  fk4 db cc c
}
