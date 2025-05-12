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
  \time 6/8
  \tempo "Tranquil"
  \set Score.tempoHideNote = ##t
  \tempo 8=80

}


melody = \relative c'' {
  \clef treble
  \global

  g8. e16 g8 a8. f16 a8
  | g4 (f8) e4.
  | f8. g16 a8 d,8. g16 f8
  | e4. r4.
  | g8. e16 g8 a8. f16 a8
  | g4 (f8) e4.
  | f8. g16 a8 d,8. g16 f8
  | e4. r4.
  | e8. d16 e8 f8. e16 f8
  | g4. r4.
  | g8. f16 e8 g8. f16 e8
  | d4. r4.
  | g8. e16 g8 a8. f16 a8
  | g4 f8 e4.
  | f8. g16 a8 d,8. g16 f8
  | e4. r4 d8
  | e8 e16 d e f g8 e g
  | a a16 g f a g4 g8
  | a a a g8.( f16) e8
  | f8 e d e4 d8
  | e8 e16 d e f g8 e g
  | a a16 g f a g4 g8
  | a a a g8.( f16) e8
  | f8 e d e4.
  \bar ":|."
}

chnames = {
  \chordmode{
      c4. f4.
    | c2.
    | f4. g4.
    | c2.
    | c4. f4.
    | c2.
    | f4. g4.
    | c2.
    | c4. f4.
    | c2.
    | e2.:m
    | g2.:7
    | c4. f4.
    | c2.
    | f4. g4.
    | c2.
    | c2.
    | f4. c4.
    | f4. c4.
    | g4.:7 c4.
    | c2.
    | f4. c4.
    | f4. c4.
    | g4.:7 c4.
  }
}

catala = \lyricmode {
  <<
    {
      La pas -- to -- ra Ca -- te -- ri -- na
      per pre -- sent li va do -- nar
      tres ta -- ron -- ges de la xi -- na
      i~el pes -- se -- bre va~en -- ra -- mar.
    }
    \new Lyrics = "secondVerse" \with { alignBelowContext = "catala" }
    {
      Oh, bons pas -- tors jo di -- ri -- a
      que~en el por -- tal de Bet -- lem
      prop de Je -- sús i Ma -- ri -- a
      a dalt del cel ja si -- guem.
    }
    \new Lyrics = "therdVerse" \with { alignBelowContext = "catala" }
    {
      Sant Jo -- sep per la mun -- ta -- nya
      en -- ra -- mat por -- ta~el bu -- rret.
      Tam -- bé la Ver -- ge Ma -- ri -- a
      a -- bra -- ça~el seu __ _ fi -- llet.
    }

  >>
    A -- ra pas -- tors a -- nem junts
    cap al por -- tal que n'és nat
    un in -- fant com u -- na~es -- tre __ _ lla
    que~a mi me'n té~el cor ro -- bat.

    An -- ton, ti -- ro -- li -- ro -- li -- ro
    An -- ton, ti -- ro -- li -- ro -- rà
    Je -- sús al pes -- se -- bre~a -- nem -- lo~a -- do -- rar

    An -- ton, ti -- ro -- li -- ro -- li -- ro
    An -- ton, ti -- ro -- li -- ro -- rà
    Je -- sús al pes -- se -- bre~a -- nem -- lo~a -- do -- rar
}



titol = "La pastora Caterina"
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
      #(layout-set-staff-size 24)
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
    #'((basic-distance . 13)
       (minimum-distance . 13)
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
