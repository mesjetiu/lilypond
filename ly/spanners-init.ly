\version "2.3.8"

startGroup = #(make-span-event 'NoteGroupingEvent START)
stopGroup = #(make-span-event 'NoteGroupingEvent STOP)


cr = #(make-span-event 'CrescendoEvent START)
decr = #(make-span-event 'DecrescendoEvent START)
enddecr = #(make-span-event 'DecrescendoEvent STOP)
endcr = #(make-span-event 'CrescendoEvent STOP) 

startTextSpan = #(make-span-event 'TextSpanEvent START)
stopTextSpan = #(make-span-event 'TextSpanEvent STOP)


% TODO: junkme!
cresc =  {
  #(ly:export (make-event-chord (list cr)))
  \set crescendoText = \markup { \italic "cresc." }
  \set crescendoSpanner = #'dashed-line
}


dim =  {
  #(ly:export (make-event-chord (list decr)))

  \set decrescendoText = \markup { \italic "dim." }
  \set decrescendoSpanner = #'dashed-line
}

enddim =  {
  #(ly:export (make-event-chord (list enddecr)))
  \unset decrescendoText 
  \unset decrescendoSpanner 
}

% ah, this is handy: maybe drop resetting of properties in
% dynamic-engraver ?
endcresc =  {
  #(ly:export (make-event-chord (list endcr)))
  \unset crescendoText 
  \unset crescendoSpanner 
}

%%%%%%%%%%%%%%%%

setTextCresc = {
    \set crescendoText = \markup { \italic "cresc." }
    \set crescendoSpanner = #'dashed-line
}
setTextDecresc = {
    \set crescendoText = \markup { \italic "decr." }
    \set crescendoSpanner = #'dashed-line
}
setTextDim = {
    \set crescendoText = \markup { \italic "dim." }
    \set crescendoSpanner = #'dashed-line
}
setHairpinCresc = {
    \unset crescendoText 
    \unset crescendoSpanner 
}



% better name sustainstart/stop? 
sustainUp = #(make-span-event 'SustainEvent STOP)
sustainDown = #(make-span-event 'SustainEvent START)

unaCorda = #(make-span-event 'UnaCordaEvent START)
treCorde = #(make-span-event 'UnaCordaEvent STOP)

sostenutoDown = #(make-span-event 'SostenutoEvent START)
sostenutoUp = #(make-span-event 'SostenutoEvent STOP)

%crescpoco = \set crescendoText = "cresc. poco a poco"
%decresc = \set crescendoText = "decr."
%dim = \set crescendoText = "dim."


% for regression testing purposes.
assertBeamQuant =
#(def-music-function (location l r) (pair? pair?)
  (let* ((f (check-quant-callbacks l r)))
   
   #{
   \once \override Beam #'position-callbacks = $f
   #}
   
))

% for regression testing purposes.
assertBeamSlope =
#(def-music-function (location comp) (procedure?)
  (let* ((f (check-slope-callbacks comp)))
   
   #{
   \once \override Beam #'position-callbacks = $f
   #}
   
))

