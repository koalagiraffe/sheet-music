chordmusic =  \chords { 

  a2:7 d2:7 g2:7 c2:7.9+ f2:7.9+ bes2:7 ees2:7 aes4:7 des8:7
  }
upper = \relative c'' {
  \tempo  "Andante" 4 = 120
  \clef treble
  \key c \major
  \time 4/4

  <a a'>4 f' d bes g g' g8 f e f(f8) ees16 d des4 bes ges ees ees' ees8 des c <ees, aes des>
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  <g' des' ges>2 <ges c f>2 <f b e>2 <e bes' ees>4. <a ees' aes>8~<a ees' aes>2 <aes d g> <g des'> <ges c f>4. <f ces'>8
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