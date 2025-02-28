
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
  \time 2/4
  \tempo "Lleuger"
  \set Score.tempoHideNote = ##t
  \tempo 4=80

}


melody = \relative c'' {
  \clef treble
  \global

  | g4. a8
  | g4. e8
  | g f e d
  | e4 r4 \break
  | g4. a8
  | g4. e8
  | g f e d
  | e4 c8 c \break
  | a' a a a
  | a c b a
  | g4. g8
  | fs4. fs8 \break
  | g4 \override NoteHead.style = #'cross \tuplet 3/2 4 { c8 c c }
  | c4 r4
  \bar ":|."
}

chnames = {
  \chordmode{
    c1
    g2:7
    c2
    c1
    g2:7
    c4 c4:7
    f1
    c2
    d2:7
    g4:7
    s2
    g4:7
  }
}

catala = \lyricmode {

  <<

    {
      A Bet -- lem me'n vull __ _ _ a -- nar
      A Bet -- lem me'n vull __ _ _ a -- nar
      Vols ve -- nir tu ra -- ba -- dà? __ _
      vols ve -- nir tu ra -- ba -- dà?
      —Vull es -- mor -- zar!
    }
    \new Lyrics = "secondVerse" \with { alignBelowContext = "catala" }
    {
      A Bet -- lem es -- mor __ - - za -- rem
      A Bet -- lem es -- mor __ - - za -- rem
      i~a Je -- sús a -- do -- ra -- rem __ _
      i~a Je -- sús a -- do -- ra -- rem.
      —Hi~ha mas -- sa neu!
    }
    \new Lyrics = "thirdVerse" \with { alignBelowContext = "catala" }
    {
      La __ _ neu que pel ca -- mí~hi __ _  ha
      La __ _ neu que pel ca -- mí~hi __ _  ha
      la ca -- lor ja la fon -- drà __ _
      la ca -- lor ja la fon -- drà.
      —Oi, la que fa!
    }
    \new Lyrics = "forthVerse" \with { alignBelowContext = "catala" }
    {
      Tu les te -- ies en __ - cen __ - dràs
      Tu les te -- ies en __ - cen __ - dràs
      i~el ca -- mí~il -- lu -- mi -- na -- ràs __ _
      i~el ca -- mí~il -- lu -- mi -- na -- ràs.
      —No~ho fa -- ré pas!
    }
    \new Lyrics = "fifthVerse" \with { alignBelowContext = "catala"  }
    {
      Que no saps que~a -- ques __ - ta __ _ nit
      Que no saps que~a -- ques __ - ta __ _ nit
      ha nas -- cut Déu in -- fi -- nit __ _
      ha nas -- cut Déu in -- fi -- nit?
      —Qui t'ho ha dit?
    }
  >>



}



titol = "El rabadà"
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
      #(layout-set-staff-size 26)
      \context {
        \Staff \RemoveEmptyStaves
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
       (minimum-distance . 15)
       (padding . 0)
       (stretchability . 20))

    last-bottom-spacing =
    #'((basic-distance . 30)
       (minimum-distance . 30)
       (padding . 0)
       (stretchability . 10))
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
