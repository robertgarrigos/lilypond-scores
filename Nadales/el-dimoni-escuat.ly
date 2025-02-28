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
  \key e \major
  \time 2/4
  \tempo ""
  \set Score.tempoHideNote = ##t
  \tempo 8=80

}


melody = \relative c' {
  \clef treble
  \global
  \repeat volta 6 {
  \partial 8 b8
  | e e e e
  | e4 e8 gs
  | fs e ds cs
  | b8. b16 cs8. cs16
  | b4 r8 b8
  | e e e e
  | e4 e8 gs
  | fs e ds cs
  | b8. b16 cs8. cs16
  | b4 r8 gs'8
  | fs fs b a
  | gs8. [fs16] e8 fs
  | gs8. fs16 gs8. fs16
  | gs8. fs16 gs8. fs16
  | gs4 b4
  | gs8 e fs ds
  }
  \alternative {
    {| e4. \bar ":|."}
    {| e4. b8 | e r8 r4 \bar "|."}
  }


}

chnames = {
  \chordmode{
    s8
    e1
    a2
    e4 a4
    e2
    e1
    a2
    e4 a4
    e2
    b2:7
    e2
    e2
    e2
    e4 b4:7
    e4 b4:7
    e2
    e2
  }
}

catala = \lyricmode {
  \repeat volta 6 {
  <<
    {
      A -- llà so -- ta~u -- na pe -- nya n'és nat el je -- su -- set
      Nu -- et nu -- et
      A -- llà so -- ta~u -- na pe -- nya n'és nat el je -- su -- set
      Nu -- et nu -- et
      Que~és fill de ma -- re ver -- ge i~es -- tà mig mort de fred
      Nu -- et nu -- et
      I~es -- tà mig mort de fred
    }
    \new Lyrics = "secondVerse" \with { alignBelowContext = "catala" }
    {
      El bon Jo -- sep li de -- ia: Je -- sus que~es -- teu fre -- det
      fre -- det, fre -- det
      El bon Jo -- sep li de -- ia: Je -- sus que~es -- teu fre -- det
      fre -- det, fre -- det
      La ver -- ge res -- po -- ni -- a: per fal -- ta d'a -- bri -- guet
      Nu -- et nu -- et,
      per fal -- ta d'a -- bri -- guet
    }
    \new Lyrics = "thirdVerse" \with { alignBelowContext = "catala" }
    {
      Pas -- tors hi ar -- ri -- ba -- ren a prop de mi -- tja nit
      Cric -- cric cric -- cric
      Pas -- tors hi ar -- ri -- ba -- ren a prop de mi -- tja nit
      Cric -- cric cric -- cric
      Ve -- ient que tots hi~a -- na -- ven del gran fins al més xic
      Cric -- cric cric -- cric, del gran fins al més xic
    }
    \new Lyrics = "fourthVerse" \with { alignBelowContext = "catala" }
    {
      A prop d'a -- llí pas -- sa -- va un di -- mo -- ni~es -- cu -- at
      Pa -- trip pa -- trap
      A prop d'a -- llí pas -- sa -- va un di -- mo -- ni~es -- cu -- at
      Pa -- trip pa -- trap
      Sen -- tint tan -- ta ga -- tza -- ra a dins se n'és fi -- cat
      Pat -- rip pat -- rap, a dins se n'és fi -- cat
    }
    \new Lyrics = "fifthVerse" \with { alignBelowContext = "catala" }
    {
      Els pas -- to -- rets al veu -- re'l s'hi ti -- ren al da -- munt
      Pa -- tim pa -- tum
      Els pas -- to -- rets al veu -- re'l s'hi ti -- ren al da -- munt
      Pa -- tim pa -- tum
      I tan -- tes li me -- su -- ren que~el dei -- xen mig di -- funt
      Pa -- tim pa -- tum, que~el dei -- xen mig di -- funt
    }
    \new Lyrics = "sexthVerse" \with { alignBelowContext = "catala" }
    {
      La lle -- nya d'En Ba -- nye -- ta ha~es -- tat o -- li~en un llum
      Fe -- rum, fe -- rum
      La lle -- nya d'En Ba -- nye -- ta ha~es -- tat o -- li~en un llum
      Fe -- rum, fe -- rum
      Ja hi~ha no -- més el ras -- tre de so -- fre, foc i fum
      Fe -- rum, fe -- rum
      De so -- fre, foc i
    }
  >>
  }
  \alternative {
    {}
    { fum fe -- rum}
  }
}



titol = "El dimoni escuat"
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
