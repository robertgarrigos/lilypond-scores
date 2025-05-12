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

  \partial 4 r8 a8
  | d4. cs8 e4. d8
  | b2. r8 b
  | e8. fs16 e8 d cs a b cs
  | d [e fs g] e4. a8
  | fs4. a8 g4. a8
  | fs8 a b g fs4( e)
  | fs8 a b g fs4( e)
  | d2 r4 \bar ":|."
}

chnames = {
  \chordmode{
    s4
    d1
    g1
    e2:m a2
    d2 a2
    d2 g2
    d4 g d a
    d4 g d a
    d2.
  }
}

catala = \lyricmode {
  <<
    {
      Les dot -- ze van to -- cant,
      ja~és nat el Déu in -- fant,
      fill de Ma -- ri -- a,
      ja~és nat, el Déu in -- fant,
      fill de Ma -- ri -- a,
      fill de Ma -- ri -- a.
    }
    \new Lyrics = "secondVerse" \with { alignBelowContext = "catala" }
    {
      El cel és es -- tre -- llat,
      el món és tot gla -- çat,
      ne -- va~i ven -- te -- ja,
      el món és tot gla -- çat,
      ne -- va ~i ven -- te -- ja,
      ne -- va ~i ven -- te -- ja.
    }
    \new Lyrics = "thirdVerse" \with { alignBelowContext = "catala" }
    {
      Sa ma -- re i~es fi -- llet
      es -- tan mig morts de fred
      i~el vell tre -- mo -- la,
      es -- tan mig morts de fred
      i~el vell tre -- mo -- la,
      i~el vell tre -- mo -- la.
    }
    \new Lyrics = "fourthVerse" \with { alignBelowContext = "catala" }
    {
      Jo -- sep a poc a poc
      en -- cén a -- llà~un gran foc
      i~els àn -- gels can -- ten,
      en -- cén allà un gran foc
      i~els àn -- gels can -- ten,
      i~els àn -- gels can -- ten.
    }
    \new Lyrics = "fifthVerse" \with { alignBelowContext = "catala" }
    {
      En -- mig de fred i neu
      el foc d'a -- mor d'un Déu
      els cors des -- gla -- ça,
      el foc d'a -- mor d'un Déu
      els cors des -- gla -- ça,
      els cors des -- gla -- ça.
    }
    \new Lyrics = "sexthVerse" \with { alignBelowContext = "catala" }
    {
      Per~a -- ixò tots van can -- tant:
      Ja~és nat el Déu in -- fant,
      fill de Ma -- ri -- a,
      ja~és nat el Déu in -- fant,
      fill de Ma -- ri -- a,
      fill de Ma -- ri -- a.
    }
  >>
}



titol = "Les dotze van tocant"
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
      \new Voice = "mel" { \set Staff.midiInstrument = "voice oohs" \autoBeamOff \melody }
      \new Lyrics \with {
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
      }
      \lyricsto mel \catala
    >>
    \layout {
      #(layout-set-staff-size 25)
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
    % score-system-spacing =
    % #'((basic-distance . 20)
    %    (minimum-distance . 10)
    %    (padding . 0)
    %    (stretchability . 14))
    markup-system-spacing =
    #'((minimum-distance . 15))
    system-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 0)
       (padding . 3))
    last-bottom-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 34)
       (padding . 4))
    % staff-staff-spacing =
    % #'((padding . 10))
    % default-staff-staff-spacing =
    % #'((basic-distance . 0)
    %    (minimum-distance . 0)
    %    (padding . 0)
    %    (stretchability . 10))
    % annotate-spacing = ##t
    oddFooterMarkup = \markup {
      \center-column {
        \fill-line { \fromproperty #'header:copyright }
      }
    }
    evenFooterMarkup = \markup {
      \center-column {
        \fill-line { \fromproperty #'header:copyright }
      }
    }
  }
}
