% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.13.36
\version "2.13.36"
\header {
%% Translation of GIT committish: fa19277d20f8ab0397c560eb0e7b814bd804ecec

  texidoces = "

Existen tres estilos distintos de repeticiones dobles para la primera
y segunda vez, que se pueden ajustar utilizando
@code{doubleRepeatType}.

"

  doctitlees = "Establecer el tipo de repetición doble predeterminado para la primera y segunda vez"

%% Translation of GIT committish: 158658dc75b6f6553e77ff53119ac802eb91f50c
  texidocfr = "LilyPond dispose de trois styles de barre différents
pour indiquer une succession de reprises.  Vous devez opter pour un
  style par défaut, à l'aide de la propriété @code{doubleRepeatType}.

"

  doctitlefr = "Succession de reprise et style de barre par défaut"


  lsrtags = "repeats"
  texidoc = "There are three different styles of double repeats for
volte, that can be set using @code{doubleRepeatType}."

  doctitle = "Setting the double repeat default for volte"
} % begin verbatim



\relative c'' {
  \repeat volta 1 { c1 }
  \set Score.doubleRepeatType = #":|:"
  \repeat volta 1 { c1 }
  \set Score.doubleRepeatType = #":|.|:"
  \repeat volta 1 { c1 }
  \set Score.doubleRepeatType = #":|.:"
  \repeat volta 1 { c1 }
}
