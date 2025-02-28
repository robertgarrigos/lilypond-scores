\version "2.24.3"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))

\include "predefined-guitar-fretboards.ly"


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key e \minor
  \time 6/8
  \tempo ""
  \set Score.tempoHideNote = ##t
  \tempo 8=120

}


melody = \relative c' {
  \clef treble
  \global
  \partial 4 b8 b
  | e4 e8 fs4 g8
  | fs8 e4(e8) g a
  | b4 c8 b4 a8
  | b4. (b8) g[ a]
  | b4 b8 b a g
  | a4 a8 b4 a8
  | g4 e8 fs4 ds8
  | e4. (e8) b8 b
  | e e e e fs g
  | fs8 e4 (e8) g a
  | b b b b d c
  | b4. (b8) g a
  | b b b b a g
  | a4 a8 b4 a8
  | g4 e8 fs4 ds8
  | e4.(e8) \bar ":|."
}

chnames = {
  \chordmode{
    s4
    | e4.:m b:7
    | e2.:m
    | e4.:m b:7
    | e2.:m
    | g2.
    | d4. g4.
    | e4.:m b:7
    | e2.:m
    | e4.:m b:7
    | e2.:m
    | g4. d4.
    | g2.
    | e2.:m
    | a2.:m
    | e4.:m b:7
    | e2.:m
  }
}

catala = \lyricmode {
  <<
    {
      Jo sóc el pe -- tit vai -- let __ _
      can -- sa -- det de molt ca -- mí,
      vinc  amb el meu ga -- ia -- tet __ _
      per veu -- re Je -- sús di -- ví.


    }
    \new Lyrics = "secondVerse" \with { alignBelowContext = "catala" }
    {
      He por -- tat la car -- ma -- nyo -- la
      to -- ta ple -- na de vi blanc
      a -- met -- lles, mel i for -- ma -- tge
      per Je -- sús, el di -- ví~in -- fant.
    }
  >>
  Xer -- ram -- pim, Xer -- ram -- pim, Xer -- ram -- pi -- a,
      Xer -- ram -- pim, Xer -- ram -- pim, Xer -- ram -- pó,
      Xer -- ram -- pim, que Jo -- sep i Ma -- ri -- a
      te -- nen un pe -- tit mi -- nyó.
}



titol = "El petit vailet"
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
        \line { "Gravat musical per Robert Garrigós" \with-url #"https://garrigos.cat" "https://garrigos.cat" \with-url #"https://creativecommons.org/licenses/by/4.0/deed.ca" "(CC BY 4.0)" }
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
        % \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #3
      }
      \context {
        \Lyrics
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = #1
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
       (stretchability . 10))

    % last-bottom-spacing =
    % #'((basic-distance . 15)
    %    (minimum-distance . 5)
    %    (padding . 0)
    %    (stretchability . 10))
    markup-system-spacing =
    #'((minimum-distance . 15))
    system-system-spacing =
    #'((basic-distance . 20)
       (minimum-distance . 10)
       (padding . 4))
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
