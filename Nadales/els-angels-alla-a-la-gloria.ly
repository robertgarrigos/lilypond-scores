\version "2.24.3"
\language "english"

% #(set-global-staff-size 30)
data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))

\include "predefined-guitar-fretboards.ly"

global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key d \major
  \time 4/4
  \tempo ""
  \set Score.tempoHideNote = ##t
  \tempo 8=80

}


melody = \relative c' {
  \clef treble
  \global

  | fs4 fs fs fs8[ a]
  | a4. g8 fs4 d
  | fs fs8[ e] fs4 fs8[ a]
  | a4. g8 fs4 r4
  | fs4 fs fs fs8[ a]
  | a4. g8 fs4 d
  | fs fs8[ e] fs4 fs8[ a]
  | a4. g8 fs4 r4
  \repeat volta 2 {
  | \bar ".|:" a2 b8 [a g fs]
  | g2 a8[ g fs e]
  | fs2 g8[ fs e d]
  | e4 e a,2
  | d4 e fs g}

  \alternative {
    {| fs2 e \bar ":|."}
    {| fs2 e}
  }
  | d1^\markup {\italic{" Da Capo"} } \bar "|."
}

chnames = {
  \chordmode{
    d1
    a2 d2
    d1
    a2 d2
    d1
    a2 d2
    d1
    a2 d2
    \repeat volta 2 {
    d1
    a1
    b1:m
    e2:7 a:7
    d1
    }
    \alternative {
      {a1:7}
      {a1:7}
    }

    d1
  }
}

catala = \lyricmode {
  <<
    {
      Els Àn -- gels a -- llà~a la Glò -- ria
      La no-va can -- ten __ amb __ _ goig
      i~el res -- só de __ les mun -- ta -- nyes,
      es -- par -- geix son __ cant d'a -- mor.
    }
    \new Lyrics = "secondVerse" \with { alignBelowContext = "catala" }
    {
      U -- na Ver -- ge~a l'Es -- ta -- bli -- a
      ha~in -- fan -- tat son fill di -- ví,
      ens ho diu amb a -- le -- gri -- a
      A -- quest cant de mit -- ja nit.
    }
    \new Lyrics = "thirdVerse" \with { alignBelowContext = "catala" }
    {
      Cor -- rem -- hi, pas -- tors cor -- rem -- hi
      a be -- sar son front de neu,
      bo~i dan -- sant, tots plens de jo -- ia
      d'a -- quest cant que so -- na~ar -- reu.
    }
  >>
  \repeat volta 2 {
  Glò __ _ _ _ _ _ _ ri -- a,
  in ex -- cel -- sis} \alternative { {De -- o.} {De __ _ o.}}
}



titol = "El àngels allà a la Glòria"
subtitol = ""
compositor = ""
lletrista = ""
traductor = ""


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% PDF %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  % \bookOutputSuffix ""
  \header {
    title = \titol
    subtitle = \subtitol
    composer = \compositor
    arranger = \lletrista
    poet = \traductor
    tagline = ##f
    copyright = \markup {
      \center-column { \small
        \line { "Gravat per Robert Garrigós" \with-url #"https://garrigos.cat" "https://garrigos.cat" \with-url #"https://creativecommons.org/licenses/by/4.0/deed.ca" "(CC BY 4.0)" }
        \line { "amb" \with-url #"https://lilypond.org" "Lilypond" "el" \data  }
      }
    }
  }
  \score {
    <<
      \new ChordNames {
        \set majorSevenSymbol = \markup { \whiteTriangleMarkup 7 }
        \chnames
      }
      % \new FretBoards {
      %   \chnames
      % }
      \new Voice = "mel" { \set Staff.midiInstrument = "voice oohs" \autoBeamOff \melody }
      \new Lyrics \with {
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
      }
      \lyricsto mel \catala
    >>
    \layout {
      #(layout-set-staff-size 30)
      \context {
        \Staff
        \RemoveEmptyStaves
      }
      \context {
        \Lyrics
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = #1.5
      }
    }
    \midi { }
  }
  \paper {
    set-paper-size = "a5"
    top-margin = 10
    left-margin = 15
    indent = 10
    max-systems-per-page = 6
    score-system-spacing =
    #'((basic-distance . 20)
       (minimum-distance . 10)
       (padding . 0)
       (stretchability . 14))

    % last-bottom-spacing =
    % #'((basic-distance . 15)
    %    (minimum-distance . 5)
    %    (padding . 0)
    %    (stretchability . 10))
    markup-system-spacing =
    #'((minimum-distance . 15))
    system-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 10)
       (padding . 3))
    % staff-staff-spacing =
    % #'((padding . 10))
    % default-staff-staff-spacing =
    % #'((basic-distance . 0)
    %    (minimum-distance . 0)
    %    (padding . 0)
    %    (stretchability . 10))
    % annotate-spacing = ##t
    % print-all-headers = ##t
    % print-first-page-number = ##t
    oddFooterMarkup = \markup {
      \center-column {
        % \line { \fromproperty #'header:title "- pàgina" \fromproperty #'page:page-number-string "de" \concat {\page-ref #'lastPage "0" "?"} }
        \fill-line { \fromproperty #'header:copyright }
      }
    }
    evenFooterMarkup = \markup {
      \center-column {
        % \line { \fromproperty #'header:title "- pàgina" \fromproperty #'page:page-number-string "de" \concat {\page-ref #'lastPage "0" "?"} }
        \fill-line { \fromproperty #'header:copyright }
      }
    }
  }
}
