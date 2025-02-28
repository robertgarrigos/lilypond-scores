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

  \partial 4. r8 cs cs
  | cs4 cs8 cs4 d8
  | e4. cs8 cs d
  | e4 e8 a4 fs8
  | e4 e8 a4 fs8
  | e4. r8 e8 e
  | fs4. d8 e fs
  | e4. cs8 cs cs
  | d4 d8 b4 b8
  | cs4. r8 e8 e
  | fs4. d8 e fs
  | e4. cs8 cs cs
  | d4 d8 b4 b8
  | cs4. cs8 cs d
  | e4 cs8 cs cs d
  | e4 cs8 cs cs d
  | e4 e8 a gs fs
  | e4. a8 gs fs
  | e4. a8 gs fs
  | e4. r8 e8 e
  | fs4. d8 e fs
  | e4. cs8 cs cs
  | d4 d8 b4 b8
  | cs4. r8 e8 e
  | fs4. d8 e fs
  | e4. cs8 cs cs
  | d4 d8 b4 b8
  | cs4. \bar ":|."
}

chnames = {
  \chordmode{
    s4.
    a2.
    cs2.:m
    a4.:7 d4.
    a4. d4.
    a2.
    d2.
    a2.
    e2.:7
    a2.
    d2.
    a2.
    e2.:7
    a2.
    a2.
    cs2.:m
    a4.:7 d4.
    a4. d4.
    a4. d4.
    a2.
    d2.
    a2.
    e2.:7
    a2.
    d2.
    a2.
    e2.:7
    a4.
  }
}

catala = \lyricmode {
  <<
    {
      Pas -- to -- rets de la mun -- ta -- nya
      que vi -- viu amb gran re -- cel,
      amb gran re -- cel,
      des -- per -- teu, ve -- niu de pre -- ssa
      que ja~és nat el Rei del cel.
      Des -- per -- teu, ve -- niu de pre -- ssa
      que ja~és nat el rei del cel.
    }
    \new Lyrics = "secondVerse" \with { alignBelowContext = "catala" }
    {
      Què~és a -- quest so -- roll que sen -- to
      a~a -- ques -- ta~ho -- ra~en el cor -- ral?
      en el cor -- ral?
      Es -- pe -- reu que si jo bai -- xo
      sa -- breu qui~és el Pas - qual.
      Es -- pe -- reu que si jo bai -- xo
      sa -- breu qui~és el Pas - qual.
    }
    \new Lyrics = "thirdVerse" \with { alignBelowContext = "catala" }
    {
      Ai Pas -- qual no t'hi en -- fa -- dis,
      car jo sóc l'àn -- gel del cel,
      l'àn -- gel del cel,
      que~a -- quí vinc a -- nun -- ci -- ar -- vos
      que ja~és nat el Rei del cel.
      Que~a -- quí vinc a -- nun -- ci -- ar -- vos
      que ja~és nat el Rei del cel.
    }
  >>
  Cap al mig -- di -- a can -- ta~i re -- fi -- la,
  to -- ca Pas -- qual, re -- pi -- ca~el -- tim -- bal,
  ram -- pa -- ta -- plam, ram -- pa -- ta -- plam!
  que són fes -- tes d'a -- le -- gri -- a,
  Pas -- qües san -- tes de Na -- dal,
  que són fes -- tes d'a -- le -- gri -- a,
  Pas -- qües san -- tes de Na -- dal.
}



titol = "L'àngel i els pastors"
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
      #(layout-set-staff-size 22)
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
