chordmusic =  \chords { 
c2:maj7 a2:m7 d2:m7 g2:7 
  }
upper = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

r4 <b d e g>2 <c e g a>4  <f a c>4. <f a b d>8.~<f a b d>2
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
c2 a2 d4. e,8~e2

}

\score {

  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \chordmusic
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}