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
  \key c \major
  \time 4/4
  \tempo ""
  \set Score.tempoHideNote = ##t
  \tempo 4=120

}


melody = \relative c'' {
  \clef treble
  \global
  | g8 g4 g g g8~
  | g8 f4 f4 f4 e8~
  | e8 d8( c4~c4) r4
  | R1
  | c'8 c4 c c b8~
  | b8 a4 a g8~g4
  | g e8 g4 g a8~
  | a8 r8 r4 r2
  | g8 g4 g g g8~
  | g8 f4 f4 f4 e8~
  | e8 d8 (c4~c4) r4
  | R1
  | c'8 c4 c c b8~
  | b8 a4 a g4 a8~~
  | a8 r8 r4 r2
  | R1
  | r4 r8 c8 c8 c4 b8~
  | b8 a4 a8 r4 r8 g8
  | g8 e4 r8 r2
  | R1
  | r4 r8 c'8 c8 c4 b8~
  | b8 a4 a4 g 4 g8~
  | g8 r8 r4 r2
  | r2 r4 r8 c,8
  | c'8 c4 c4 c4 b8~
  | b8 a4 a4 g4 r8
  | g8 e4 g4 g a8~
  | a8 r8 r4 r2
  | f4 e8 f4 e f8~
  | f4 e4 f4 g4
  | g1
  | r2 e4 d
  | c2 e8 g4 g8~
  | g4 r4 a8 b4 c8~
  | c8 b4 a4 g4 g8~
  | g8 e4 r8 a4 b8 c8~
  | c8 b4 a g a8~
  | a8 g4 r8 g4 g8 e8~
  | e8 d4 d c4 e8~
  | e4 r4 e4 d
  | c2 e8 g4 g8~
  | g4 r4 a8 b4 c8~
  | c8 b4 a4 g4 g8~
  | g8 e4 r8 a4 b8 c8~
  | c8 b4 a g a8~
  | a8 g4 r8 g4 g8 e8~
  | e8 d4 d c4 c8~
  | c4 r4 r2
  | R1
  | R1
  | R1
  | R1
  | R1
  | R1
  | R1
  | R1

  \bar ":|."
}

chnames = {
  \chordmode{
    c1
    f1
    c2. f4
    c1
    a1:m
    g1:7
    c1
    f1
    a:m
    g2 f2
    c2. f4
    c1
    a1:m
    g1
    f1
    f1
    f1
    g1:7
    c2 g:7
    a:m g:7
    f1
    g1:7
    c2 g:7
    a:m g:7
    f1
    g:7
    c1
    f1
    d1:m7
    d1:m7
    g1
    g1
    a:m
    g
    f
    c
    a:m
    f
    g:7
    c
    a:m
    g
    f
    c
    a:m
    f
    g:7
    c
    a:m
    g
    f
    c
    a:m
    f
    g:7
    c
  }
}

catala = \lyricmode {
  <<
    {
      A -- ra que la nit s'ha fet mes llar -- ga
      A -- ra que les fu -- lles ba -- llen dan -- ces al ra -- có
      A -- ra que~els ca -- rrers es -- tan de fes -- ta
      A -- vui que la fred du tants re -- cords

      A -- ra que so -- bren les pa -- rau -- les
      A -- ra que~el vent bu -- fa tan fort
      A -- vui que no fa fal -- ta veu -- re't ni tan sols par -- lar
      per sa -- ber que~es -- tàs al meu cos -- tat.

      És Na -- dal al meu cor
      quan som -- rius con -- tent de veu -- re'm
      quan la nit es fa més fre -- da
      quan t'a -- bra -- ces al meu cos
      I les llums de co -- lors
      m'il -- lu -- mi -- nen nit i di -- a
      les en -- cens amb el som -- riu -- re
      quan em par -- les amb el cor.
    }
    \new Lyrics = "secondVerse" \with { alignBelowContext = "catala" }
    {
      És el buit que de -- ixes quan t'a -- ixe -- ques
      És el buit que~es fa a ca -- sa quan no hi~ha nin -- gú
      són pe -- tits de -- talls tot el que~em que -- da,
      Com que -- da~al jer -- sei un ca -- bell llarg.

      Vas dir que mai més tor -- na -- ri -- es
      El temps pa -- cient ha~a -- nat pas -- sant
      - - Qui~ha -- via de dir que~a -- vui es-ta -- ri -- es es -- pe -- rant
      que~ens tro -- bes -- sim junts al teu cos -- tat.

      És Na -- dal al teu cor
      quan som -- ric con -- tent de veu -- re't
      quan la nit es fa més fre -- da
      quan m'a -- bra -- ço al teu cos
      I les llums de co -- lors
      m'il -- lu -- mi -- nen nit i di -- a
      les en -- cén el teu som -- riu -- re
      quan et par -- lo amb el cor.
    }
  >>
}



titol = "Quan somrius"
subtitol = ""
compositor = "Josep Thió"
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
      #(layout-set-staff-size 20)
      \context {
        \Staff
        \RemoveEmptyStaves
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
