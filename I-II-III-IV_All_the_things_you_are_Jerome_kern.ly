chordmusic =  \chords { 
c4.:maj7 d8:m7 e4:m7 f4.:maj7 e4:m7 d4:m7 c4:maj7
  }
upper = \relative c' {
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4

 <b e>4. <b e>8 <c f>8 <d g>4 <e a>8~<e a>4 <d g>4 <c f> <b e>
 }

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
c4. c8 d8 e4 f8~f4 e d c
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