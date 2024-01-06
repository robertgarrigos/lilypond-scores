% This file has been created by Robert Garrigos (garrigos.cat)
% and is released under the Creative Commons Attribution 4.0 International licence (CC BY 4.0)

\version "2.24.0"
\language "catalan"

\paper {
  #(set-paper-size "a5landscape")
  #(define top-margin (* 0.5 in))
  #(define indent (* 0.2 in))
}

\header {
  title = "Cherish the Ladies"
  composer = "Traditional Irish"
  copyright = \markup { \center-column {
        \line { "Engraving by Robert Garrigós https://garrigos.cat"}
        \line { "Creative Commons Attribution 4.0 International (CC BY 4.0)" }
    }
  }
}

\score {
  \header {
    piece = "Jig"
  }
   \new Staff {
      \new Voice {
        \fixed do' {
          \time 6/8
          \key re \major
          \repeat volta 2 {
            re'8 fas8 fas8 la8 fas8 fas8 | re8 fas8 la8 la8 sol8 fas8 | si8 mi8 mi8 sol8 mi8 mi8 |
            sol8 si8 la8 sol8 fas8 mi8 | \break re'8 fas8 fas8 la8 fas8 fas8 | re8 fas8 la8 la8 fas8 la8 |
            si8 dos'8 re'8 mi'8 fas'8 sol'8 | fas'8 re'8 re'8 re'4 \tuplet 3/2 {la16 (si16 dos'16)}
          }
          \repeat volta 2 {
            \break re'8  fas'8 re'8 dos'8 mi'8 dos'8 | re'8  fas'8 re'8 la8 sol8 fas8 | si8 mi8 mi8 sol8 mi8 mi8 | sol8 si8 la8 sol8 fas8 mi8 | \break re'8  fas'8 re'8 dos'8 mi'8 dos'8 | re'8  fas'8 re'8 la8 sol8 fas8 | si8 dos'8 re'8 mi'8 fas'8 sol'8 | fas'8 re'8 re'8 re'4 la8|
          }
        }
      }
    }
  \layout { }
  \midi { }
}
