\version "2.24.3"
\language "english"

#(set-global-staff-size 17.5)
data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


\paper {
  set-paper-size = "a4"
  top-margin = 10
  left-margin = 15
  indent = 0
  max-systems-per-page = 3
  score-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  markup-system-spacing =
    #'((minimum-distance . 20))
  system-system-spacing =
    #'((minimum-distance . 20))
  % annotate-spacing = ##t
  % print-all-headers = ##t
  % print-first-page-number = ##t
  oddFooterMarkup = \markup {
    \center-column {
      \line { \fromproperty #'header:title "- pàgina" \fromproperty #'page:page-number-string "de" \concat {\page-ref #'lastPage "0" "?"} }
      \fill-line { \fromproperty #'header:copyright }
    }
  }
  evenFooterMarkup = \markup {
     \center-column {
      \line { \fromproperty #'header:title "- pàgina" \fromproperty #'page:page-number-string "de" \concat {\page-ref #'lastPage "0" "?"} }
      \fill-line { \fromproperty #'header:copyright }
    }
  }}

\header {
  title = "Dona nobis pacem"
  subtitle = "Canon a 3 veus"
  composer = "W. A. Mozart (1756-1791)"
  % arranger = "localarranger"
  % instrument = "localinstrument"
  % meter = "localmetre"
  % opus = "localopus"
  % piece = "localpiece"
  % poet = "localpoet"
  tagline = ##f
  copyright = \markup {
    \center-column {
      \line { "Gravat per Robert Garrigós" \with-url #"https://garrigos.cat" "https://garrigos.cat" \with-url #"https://creativecommons.org/licenses/by/4.0/deed.ca" "(CC BY 4.0)" "amb" \with-url #"https://lilypond.org" "Lilypond" "el" \data }
      % \line { "Creative Commons Attribution 4.0 International (CC BY 4.0)" }
    }
  }
}

global = {
  \overrideTimeSignatureSettings
  3/4        % timeSignatureFraction
  1/4        % baseMomentFraction
  2,2        % beatStructure
  #'()       % beamExceptions
  \key f \major
  \time 3/4

}

Voce = \relative c' {
  \global
  | f8 (c) a'2
  | g8 (c,) bf'2
  | a4 (g) f
  | f e2 \breathe
  | d'4 (c8 bf) a (g)
  | c4. (bf8) a4
  | a8 (g f4 e)
  | f2.\fermata \bar "||" \break
  | c'2.
  | c
  | c4 (bf) a4
  | g g2 \breathe
  | d'4 d2
  | c4 c2
  | c8 (bf a4 g)
  | f2.\fermata \bar "||" \break
  | f2.
  | e2.
  | f4. (g8) a (bf)
  | c4 c,2 \breathe
  | bf'4 bf2
  | a4 a2
  | e8 (g c4 c,)
  | f2.\fermata \bar "||"
  \label #'lastPage
}
VoceLyrics = \lyricmode {
  Do -- na no -- bis pa -- cem, pa -- cem.
  Do -- na no -- bis pa -- cem.
  Do -- na no -- bis pa -- cem.
  Do -- na no -- bis pa -- cem.
  Do -- na no -- bis pa -- cem.
  Do -- na no -- bis pa -- cem.
}


Layout = \layout {
  \context {
    \Score
    \override BarNumber.padding = #2

  }
}

\score {
  \new Staff {
    \new Voice {
      \Voce
    }
  }
  \addlyrics {
    \VoceLyrics
  }
  \Layout
}
