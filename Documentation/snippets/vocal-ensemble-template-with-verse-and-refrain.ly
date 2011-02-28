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
Esta plantilla crea una partitura que comienza con una estrofa para
solista y continúa con un estribillo a dos voces.  también muestra el
uso de silencios de separación dentro de la variable @code{\\global}
para definir cambios de compás (y otros elementos que son comunes a
todas las partes) a lo largo de toda la partitura.

"

  doctitlees = "Estrofa para solista y estribillo a dos voces"

%% Translation of GIT committish: 64feeff58e5ce3397de87188a08ac99f7ef8e37b

  texidocde = "
Diese Vorlage erstellt eine Partitur, die mit Sologesang beginnt und einen
Refrain für zwei Stimmen enthält.  Sie zeigt auch die Benutzung von
Platzhalter-Pausen innerhalb der @code{\\global}-Variable, um Taktwechsel
(und andere Elemente, die für alle Stimmen gleich sind) für das gesamte
Stück zu definieren.

"
  doctitlede = "Sologesang und zweistimmiger Refrain"

%% Translation of GIT committish: 26375d5016d8d180fc914bfd07cf76f4168f2e37

  texidocfr = "
Ce canevas illustre la manière d'agencer une œuvre vocale où le couplet
est chanté en solo et le refrain à deux voix.  Vous noterez le recours
aux silences invisibles dans la variable @code{\\global}@tie{}; ils
permettent de positionner les changements de métrique et autres éléments
communs à toutes les parties et pour l'intégralité du morceau.
"
  doctitlefr = "Ensemble vocal avec couplet et refrain"

  lsrtags = "vocal-music, contexts-and-engravers, template"
  texidoc = "
This template creates a score which starts with a solo verse and
continues into a refrain for two voices.  It also demonstrates the
use of spacer rests within the @code{\\global} variable to define
meter changes (and other elements common to all parts) throughout
the entire score.
"
  doctitle = "Vocal ensemble template with verse and refrain"
} % begin verbatim


global = {
  \key g \major

  % verse
  \time 3/4
  s2.*2
  \break

  % refrain
  \time 2/4
  s2*2
  \bar "|."
}

SoloNotes = \relative g' {
  \clef "treble"

  % verse
  g4 g g |
  b4 b b |

  % refrain
  R2*2 |
}

SoloLyrics = \lyricmode {
  One two three |
  four five six |
}

SopranoNotes = \relative c'' {
  \clef "treble"

  % verse
  R2.*2 |

  % refrain
  c4 c |
  g4 g |
}

SopranoLyrics = \lyricmode {
  la la |
  la la |
}

BassNotes = \relative c {
  \clef "bass"

  % verse
  R2.*2 |

  % refrain
  c4 e |
  d4 d |
}

BassLyrics = \lyricmode {
  dum dum |
  dum dum |
}

\score {
  <<
    \new Voice = "SoloVoice" << \global \SoloNotes >>
    \new Lyrics \lyricsto "SoloVoice" \SoloLyrics

    \new ChoirStaff <<
      \new Voice = "SopranoVoice" << \global \SopranoNotes >>
      \new Lyrics \lyricsto "SopranoVoice" \SopranoLyrics

      \new Voice = "BassVoice" << \global \BassNotes >>
      \new Lyrics \lyricsto "BassVoice" \BassLyrics
    >>
  >>
  \layout {
    ragged-right = ##t
    \context { \Staff
      % these lines prevent empty staves from being printed
      \RemoveEmptyStaves
      \override VerticalAxisGroup #'remove-first = ##t
    }
  }
}

