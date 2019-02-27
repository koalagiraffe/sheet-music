upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  <a a'>4 f' d bes g g' g8 f e f(f8) ees16 d des4 bes ges ees ees' e8 des c <e, a d>
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  a2 c
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