chordmusic =  \chords { 
f1:m7 bes1:7 ees1:maj7 aes1:7
  }
upper = \relative c'<< {
  \tempo 4=180
  \clef treble
  \key c \major
  \time 4/4

g'1~ g4 f f g
 }\\{
<aes, ees'>1 <aes d>1 <f g bes>1 <f ges bes>1
 }
>>
lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
f,1 bes1 ees,1 aes1
}

\score {

  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}