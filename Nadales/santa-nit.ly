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
  \key a \major
  \time 6/8
  \tempo ""
  \set Score.tempoHideNote = ##t
  \tempo 8=80

}


melody = \relative c' {
  \clef treble
  \global

  e8. [fs16] e8 cs4.
  | e8. fs16 e8 cs4.
  | b'4 b8 gs4.
  | a4 a8 e4.
  | fs4 fs8 a8. gs16 fs8
  | e8. fs16 e8 cs4.
  | fs4 fs8 a8. gs16 fs8
  | e8. fs16 e8 cs4.
  | b'4 b8 d8. b16 gs8
  | a4. cs
  | a8. e16 cs8 e8. d16 b8
  | a4. r4. \bar ":|."
}

chnames = {
  \chordmode{
    a2.
    a2.
    e2.
    a2.
    d2.
    a2.
    d2.
    a2.
    e2.
    fs2.:m
    a4. e:7
    a2.
  }
}

catala = \lyricmode {
  <<
    {
      San -- ta nit! Plà -- ci -- da nit!
      Els pas -- tors han sen -- tit
      l'al· -- le -- lu -- ia que~els àn -- gels can -- tant
      en  el món han es -- tat es -- cam -- pant:
      El Me -- ssi -- es és nat! __ _
      El __ _ Me -- ssi -- es és nat! __

      San -- ta nit! Plà -- ci -- da nit!
    }
    \new Lyrics = "secondVerse" \with {
      alignBelowContext = "catala"
      % \override VerticalAxisGroup .nonstaff-nonstaff-spacing .minimum-distance = ##f


      }
    {
      San -- ta nit! Plà -- ci -- da nit!
      Ja~es -- tà tot a -- dor -- mit
      vet -- lla sols en la cam -- bra bres -- sant
      dol -- ça Ma -- re que~al nin va can -- tant:
      dorm en pau i re -- pós __ _
      dorm __ _ en pau i re -- pós
    }
  >>
}



titol = "Santa Nit"
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
    #'((basic-distance . 13)
       (minimum-distance . 13)
       (padding . 3))
    % staff-staff-spacing =
    % #'((padding . 10))
    % default-staff-staff-spacing =
    % #'((basic-distance . 10)
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
