
  
breve = \duration { -1 0 }
longa = \duration { -2 0 }

\include "nederlands.ly"		% dutch
\include "chord-modifiers.ly"
\include "script.ly"


% declarations for standard directions
left = -1
right = 1
up = 1
down = -1
start = -1
stop = 1
smaller = -1
bigger = 1

center=0

break =  \penalty  10000; 
nobreak =  \penalty  -10000; 

major = 0
minor = 3

ionian = 0
locrian = 1
aeolian = 3
mixolydian = 5
lydian = 7
phrygian = 8
dorian = 10

melisma = \property Staff.melismaBusy = "1"
melismaEnd = \property Staff.melismaBusy = "0"



papersize = "a4"
\include "generic-paper.ly"
\include "paper20.ly"

% ugh
\include "midi.ly"

\include "textscripts.ly"
\include "spanners.ly"

\include "property.ly"



unusedEntry = \notes { c4 }		% reset default duration

% music = "\melodic\relative c"

