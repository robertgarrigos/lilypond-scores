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
  \key f \major
  \time 2/4
  \tempo ""
  \set Score.tempoHideNote = ##t
  \tempo 4=80

}


melody = \relative c' {
  \clef treble
  \global

    c8 a' g f
  | c4. c8
  | c a' g f
  | d4. d8
  | d bf' a g
  | e4. c'8
  | d c bf g
  | a4. c,8
  | c8 a' g f
  | c4. c8
  | c a' g f
  | d4. d8
  | d bf' a g
  | c c c c
  | d c bf g
  | f4 r4
  | a8 a a4
  | a8 a a4
  | a8 c f, g
  | a2
  | bf8 bf bf bf
  | bf a a a16 a
  | a8 g g a
  | g4 c
  | a8 a a4
  | a8 a a4
  | a8 c f, g
  | a2
  | bf8 bf bf bf
  | bf a a a16 a
  | c8 c bf g
  | f4 r4 \bar ":|."
}

chnames = {
  \chordmode{
    f1.
    bf1
    c2
    c2:7
    f2
    f1.
    bf1
    c2
    c2:7
    f4 c4:7
    f1
    s1
    bf2
    f2
    g2:7
    c2:7
    f1
    s1
    bf2
    f2
    c2:7
    f2
  }
}

catala = \lyricmode {
  <<
    {
      Per da -- munt la neu,
      lleu -- ger dalt d'un tri -- neu,
      pels camps cor -- ro ra -- bent,
      a -- le -- gre~i som -- ri -- ent,
      fent drin -- gar~els cas -- ca -- vells,
      com ar -- gen -- tins joi -- ells,
      res bo no tro -- ba -- reu
      com vi -- at -- jar dalt d'un tri -- neu.
    }
    \new Lyrics = "secondVerse" \with { alignBelowContext = "catala" }
    {
      Tot co -- bert de neu
      lle -- vat del nos -- tre cor
      per 'xò tots junts can -- tem
      la can -- çò del tri -- neu,
      i vo -- li la~il -- lu -- sió
      amb a -- ques -- ta can -- çó
      i~ai -- xí de molt bon grat
      s'a -- fer -- mi la nos -- tra~a -- mis -- tat.
    }
  >>
  Ding, dang, dong,
  Ding, dang, dong,
  drin -- gueu sens pa -- rar;
  'nar~amb tri -- neu és di -- ver -- tit
  tan de di -- a com de nit __ _
  Ding, dang, dong,
  Ding, dang, dong,
  drin -- gueu sens pa -- rar;
  'nar~amb tri -- neu és di -- ver -- tit
  tan de di -- a com de nit
}



titol = "El trineu"
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
      #(layout-set-staff-size 23)
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
    #'((minimum-distance . 10))
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
