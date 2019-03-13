chordmusic =  \chords { 
ees2:maj7 f4:m7 g4:m7 aes2:m7 des2:7
  }
upper = \relative c'' {
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4

r8 <g, d' g>4. <aes ees' aes>4 <bes f' bes>4 <ces ges' bes>4. <ces ees aes>8~<ces ees aes>2
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

r8 ees,4. f4 g4 <aes ges'>4. <des f>8~<des f>2
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