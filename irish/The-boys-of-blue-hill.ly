% This file has been created by Robert Garrigos (garrigos.cat)
% and is released under the Creative Commons Attribution 4.0 International licence (CC BY 4.0)

\version "2.24.0"
\language "catalan"

\paper {
  #(set-paper-size "a5landscape")
  #(define top-margin (* 0.4 in))
  #(define indent (* 0.2 in))
}

\header {
  title = "The Boys of Blue Hill"
  composer = "Traditional Irish"
  copyright = \markup {
    \center-column {
      \line { "Engraving by Robert Garrigós https://garrigos.cat"}
      \line { "Creative Commons Attribution 4.0 International (CC BY 4.0)" }
    }
  }
}

\score {
  \header {
    piece = "Hornpipe"
  }
  \new Staff {
    \new Voice {
      \fixed do' {
        \overrideTimeSignatureSettings
        4/4        % timeSignatureFraction
        1/4        % baseMomentFraction
        2,2        % beatStructure
        #'()       % beamExceptions
        \time 4/4
        \key re \major
        \repeat volta 2 {
          si8. la16 fas8. la16 re4 fas8. la16 | si8. la16 \tuplet 3/2 {si8(dos'8 re'8)} mi'4 re'8. mi'16 |
          fas'8. la'16 sol'8. fas'16 mi'8. sol'16 fas'8. mi'16 | re'8. fas'16 mi'8. re'16 si4 re'8. si16 |
          si8. la16 fas8. la16 re4 fas8. la16 | si8. la16 \tuplet 3/2 {si8 (dos'8 re'8)} mi'4 re'8. mi'16 |
          fas'8. la'16 sol'8. fas'16 mi'8. sol'16 fas'8. mi'16 |
        }
        \alternative {
          {re'4 fas'4 re' fas8. la16}
          {re'4 fas'4 re' fas'8. sol'16}
        }

        \repeat volta 2 {
          la'8. fas'16 re'8. fas'16 la'4 sol'8. fas'16 | sol'8. fas'16 sol'8. la'16 si'4 la'8. sol'16 |
          fas'8. la'16 sol'8. fas'16 mi'8. sol'16 fas'8. mi'16 | re'8. fas'16 mi'8. re'16 si4 re'8. si16 |
          si8. la16 fas8. la16 re4 fas8. la16 | si8. la16 \tuplet 3/2 {si8 (dos'8 re'8)} mi'4 re'8. mi'16 |
          fas'8. la'16 sol'8. fas'16 mi'8. sol'16 fas'8. mi'16 | re'4 fas'4 re' fas'8. sol'16|
        }
      }
    }
  }
  \layout {
   }
  \midi {
    \tempo 4=140
  }
}
