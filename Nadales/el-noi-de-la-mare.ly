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
  \key a \major
  \time 6/8
  \tempo ""
  \set Score.tempoHideNote = ##t
  \tempo 8=80

}


melody = \relative c' {
  \clef treble
  \global

  cs8. d16 e8 e8. fs16 gs8
  | a8. gs16 fs8 fs4 e8
  | cs8. d16 e8 e8. fs16 gs8
  | a8. gs16 fs8 e4.
  | cs8. d16 e8 e8. d16 cs8
  | b8. a16 b8 cs4 a8
  | cs8. d16 e8 e8. d16 cs8
  | b8. cs16 b8 a4.
  | r2 \bar ":|."

}

chnames = {
  \chordmode{
    a2.
    d4. e4.:7
    a2.
    d4. e4.:7
    a4. cs4.:m
    e4.:7 fs4.:m
    a4. cs4.:m
    e4.:7 a4.
    a2.
  }
}

catala = \lyricmode {
  <<
    {
      Què li da -- rem en el Noi de la Ma -- re?
      Què li da -- rem que li sà -- pi -- ga bo?
      Pan -- ses i fi -- gues i nous i o -- li -- ves,
      Pan -- ses i fi -- gues i mel i ma -- tó.
    }
    \new Lyrics = "secondVerse" \with { alignBelowContext = "catala" }
    {
      Què li  da -- rem al fi -- llet de Ma -- ri -- a?
      Què li da -- rem al for -- mós in -- fan -- tó?
      Li da -- rem pan -- ses amb u -- nes ba -- lan -- ces,
      li da -- rem fi -- gues amb un pa -- ne -- ró.
    }
    \new Lyrics = "thirddVerse" \with { alignBelowContext = "catala" }
    {
      Tam, pa -- tam -- tam, que les fi -- gues són ver -- des,
      Tam, pa -- tam -- tam, que ja ma -- du -- ra -- ran.
      Si no ma -- du -- ren el di -- a de Pas -- qua
      ma -- du -- ra -- ran en el di -- a de Ram.
    }
  >>
}



titol = "El noi de la Mare"
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
      \center-column {
        \small
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
      \new Voice = "mel" {
        \set Staff.midiInstrument = "voice oohs" \autoBeamOff \melody
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
      }
      \lyricsto mel \catala
    >>
    \layout {
      #(layout-set-staff-size 30)
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.staff-staff-spacing.minimum-distance = #30
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
    %    (minimum-distance . 30)
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
