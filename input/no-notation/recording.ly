\version "2.1.7"
\header {

texidoc = "The @code{Recording_group_engraver} will record events
synchronized in time, collecting them in a list.  This file also shows
how to skip the rendering and outputting step of the process, using
@code{ly:run-translator}."

}

theMusic = \context Staff \notes { c4 d8-. }

#(define (notice-the-events context lst)
  (map (lambda (x) (display x) (newline))  lst))

listener = \paper {
 \translator {
   \ThreadContext
   \type "Recording_group_engraver"
   recordEventSequence = #notice-the-events
 }
}

#(ly:run-translator theMusic listener)
