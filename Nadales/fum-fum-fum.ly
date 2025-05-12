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
  \key e \minor
  \time 2/4
  \tempo ""
  \set Score.tempoHideNote = ##t
  \tempo 8=80

}


melody = \relative c' {
  \clef treble
  \global

  | e8. ds16 e8 g
  | fs e ds b
  | e4 ds
  | e2
  | e8. ds16 e8 g
  | fs e ds b
  | e4 ds
  | e4. \bar ".|:"d16 d
  | g8 g fs fs
  | g8 g fs fs
  | g8 g fs fs
  | g4. fs16 g
  | a8. g16 fs8 e
  | ds b e ds
  | e g fs e
  \time 3/4
  | ds b e4 ds4
  \time 2/4 e2 \bar ":|."

}

chnames = {
  \chordmode{
    e2:m b2:7
    e4:m b4:7
    e1:m b2:7
    e4:m b4:7
    e2:m
    g4 d4
    g4 d4
    g4 d4
    g2
    a2:m
    b2:7
    a2:m
    b4:7 e4:m b4:7
    e2:m
  }
}

catala = \lyricmode {
  <<
    {
      A vint -- i -- cinc de de -- sem -- bre
      fum, fum, fum.
      A vint -- i -- cinc de de -- sem -- bre
      fum, fum, fum.
      Ha nas -- cut un mi -- nyo -- net,
      ros i blan -- quet, ros i blan -- quet,
      fill de la ver -- ge Ma -- ri -- a,
      n'és nat en u -- na~es -- ta -- bli -- a,
      fum, fum, fum.
    }
    \new Lyrics = "secondVerse" \with { alignBelowContext = "catala" }
    {
      A -- llà dalt de la mun -- ta -- nya,
      fum, fum, fum.
      A -- llà dalt de la mun -- ta -- nya,
      fum, fum, fum.
      si n'hi ha dos pas -- to -- rets
      a -- bri -- ga -- dets, a -- bri -- ga -- dets
      amb la pell i la sa -- ma -- rra,
      men -- gen ous i bo -- ti -- fa -- rra,
      fum, fum, fum.
    }
    \new Lyrics = "thirdVerse" \with { alignBelowContext = "catala" }
    {
      Qui di -- rà més gran men -- ti -- da?,
      fum, fum, fum.
      Qui di -- rà més gran men -- ti -- da?,
      fum, fum, fum.
      Ja res -- pon el ma -- jo -- ral,
      el gran ta -- bal, el gran ta -- bal:
      Jo~en fa -- ré deu mil ca -- ma -- des,
      amb un salt to -- tes ple -- ga -- des,
      fum, fum, fum.
    }
    \new Lyrics = "fourthVerse" \with { alignBelowContext = "catala" }
    {
      Dé mos do~u -- nes san -- tes fes -- tes,
      fum, fum fum.
      Dé mos do~u -- nes san -- tes fes -- tes,
      fum, fum fum.
      Fa -- ci fred, fa -- ci ca -- lor,
      se -- rà~el mi -- llor, se -- rà~el mi -- llor
      de Je -- sús fer gran me -- mò -- ria
      per -- què~ens vul -- gui dar la glò -- ria,
      fum, fum, fum.
    }
  >>
}



titol = "Fum, fum, fum"
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
        % \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #0
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
