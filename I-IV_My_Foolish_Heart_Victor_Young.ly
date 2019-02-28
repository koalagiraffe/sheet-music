chordmusic =  \chords { 
bes2:maj7 ees2:maj7 d2:m7
  }
upper = \relative c'<< {
  \clef treble
  \key c \major
  \time 4/4

f2~f8 bes, d f <c e g>2
 }\\{
<a d>2 <g c>2 
 }
>>
lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
bes2 ees2 <d f a>2
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