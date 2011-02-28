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
Se pueden crear tablas alternativas de diagramas de posiciones.  Se
utilizarían para tener diagramas altenativos para un acorde dado.

Para usar una tabla alternativa de diagramas de posiciones, se debe
crear la tabla primero.  Después se añaden los diagramas a la tabla.

La tabla de diagramas de posiciones que se crea puede estar vacía o se
puede copiar a partir de una tabla existente.

La tabla a usar en la impresión de de los diagramas predefinidos se
selecciona por medio de la propiedad @code{\\predefinedDiagramTable}.

"

  doctitlees = "Tablas alternativas de diagramas de posiciones"

%% Translation of GIT committish:  a463d80d4be008ce05b12de86fc21f2b7c1c120f

  texidocde = "
Alternative Bunddiagrammtabellen können erstellt werden.  Sie können benutzt
werden, um alternative Bunddiagramme für einen bestimmten Akkord zu haben.

Damit eine alternative Bunddiagrammentabelle benutzt werden kann, muss die
Tabelle zuerst erstellt werden.  Dann werden die Bunddiagramme zur Tabelle
hinzugefügt.

Die erstellte Bunddiagrammtabelle kann auch leer sein, oder sie kann aus
einer existierenden Tabelle kopiert werden.

Die Tabelle, die eingesetzt wird, um vordefinierte Bunddiagramme anzuzeigen,
wird mit der Eigenschaft @code{\\predefinedDiagramTable} ausgewählt.
"

  doctitlede = "Alternative Bunddiagrammtabellen"


  lsrtags = "fretted-strings"

  texidoc = "
Alternate fretboard tables can be created.  These would be used in
order to have alternate fretboards for a given chord.

In order to use an alternate fretboard table, the table must first
be created.  Fretboards are then added to the table.

The created fretboard table can be blank, or it can be copied
from an existing table.

The table to be used in displaying predefined fretboards is selected
by the property @code{\\predefinedDiagramTable}.
"

  doctitle = "Alternate fretboard tables"
} % begin verbatim


\include "predefined-guitar-fretboards.ly"

% Make a blank new fretboard table
#(define custom-fretboard-table-one (make-fretboard-table))

% Make a new fretboard table as a copy of default-fret-table
#(define custom-fretboard-table-two (make-fretboard-table default-fret-table))

% Add a chord to custom-fretboard-table-one
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{c}
                        #guitar-tuning
                        "3-(;3;5;5;5;3-);"

% Add a chord to custom-fretboard-table-two
\storePredefinedDiagram #custom-fretboard-table-two
                        \chordmode{c}
                        #guitar-tuning
                        "x;3;5;5;5;o;"

<<
  \chords {
    c1 | d1 |
    c1 | d1 |
    c1 | d1 |
  }
  \new FretBoards {
    \chordmode {
      \set predefinedDiagramTable = #default-fret-table
      c1 | d1 |
      \set predefinedDiagramTable = #custom-fretboard-table-one
      c1 | d1 |
      \set predefinedDiagramTable = #custom-fretboard-table-two
      c1 | d1 |
    }
  }
  \new Staff {
    \clef "treble_8"
    <<
      \chordmode {
        c1 | d1 |
        c1 | d1 |
        c1 | d1 |
      }
      {
        s1_\markup "Default table" | s1 |
        s1_\markup \column {"New table" "from empty"} | s1 |
        s1_\markup \column {"New table" "from default"} | s1 |
      }
    >>
  }
>>

