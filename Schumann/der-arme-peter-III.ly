\version "2.24.3"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key e \minor
  \time 3/4
  \tempo "Lent"
  \set Score.tempoHideNote = ##t
  \tempo 4=80

}


melody = \relative c'' {
  \clef treble
  \global

  \partial 4 b4
  | b8. g16 e8 e \tuplet 3/2 { fs( [e]) fs }
  | g2 gs4
  | a8. b16 c8 b a g
  | fs2 b4
}

catala = \lyricmode {
  El po -- bre Pe -- re va fent tombs
  sens es -- ma, pàl· -- lid com un mort.
  La gent que tro -- ba pel car -- rer
  s'a -- tu -- ra per mi -- rar- -- lo bé.

  Les no -- ies fan amb trist po -- sar:
  "Si sem -- bla~un mort res -- sus -- ci -- tat!"
  No, no -- ies, no ve del fos -- sar,
  és que~a -- ra~el po -- bre se n'hi va.

  Ell ha per -- dut la se -- va~a -- mor,
  per ço~és la tom -- ba~el lloc mi -- llor
  on pu -- gui jau -- re~i quiet dor -- mir
  fins ser el di -- a del ju -- í.
}

alemany = \lyricmode {
  Der ar -- me Pe -- ter wankt vor -- bei,
  Gar lang -- sam, lei -- chen -- blaß und scheu.
  Es blei -- ben fast, wie sie ihn sehn,
  Die Leu -- te auf der Stra -- ße stehn.

  Die Mäd -- chen flüs -- tern sich ins Ohr:
  "Der stieg wohl aus dem Grab her -- vor?"
  Ach nein, ihr lie -- ben Jung -- fräu -- lein,
  Der steigt erst ins Grab hin -- ein.

  Er hat ver -- lo -- ren sei -- nen Schatz,
  Drum ist das Grab der bes -- te Platz,
  Wo er am bes -- ten lie -- gen mag
  Und schla -- fen bis zum jüng -- sten Tag.
}

upper = \relative c'' {
  \clef treble
  \global

  a4 b c d
}

lower = \relative c {
  \clef bass
  \global

  a2 c

  \label #'lastPage
}

titol = "Der arme Peter (III), Op. 53, n. 3"
subtitol = "El pobre Pere (III)"
compositor = "R. Schumann (1810 - 1856)"
lletrista = "H. Heine (1797 - 1856)"
traductor = "Joaquim Pena (1873 - 1944)"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% REMARKABLE %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \bookOutputSuffix "remarkable"
  \header {
    title = \titol
    subtitle = \subtitol
    composer = \compositor
    arranger = \lletrista
    poet = \traductor
    tagline = ##f
  }
  \score {
    <<
      \new Voice = "mel" { \autoBeamOff \melody }
      \new Lyrics \lyricsto mel \catala
      \new Lyrics \lyricsto mel \alemany
      \new PianoStaff <<
        \new Staff = "upper" \upper
        \new Staff = "lower" \lower
      >>
    >>
    \layout {
      #(layout-set-staff-size 16)
      \context {
        \Staff
        % \RemoveEmptyStaves
        % \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #3
      }
    }
  }

  \paper {
    #(set-paper-size '(cons (* 155 mm) (* 210 mm)))
    indent = 0\mm
    top-margin = #10
    bottom-margin = #0
    left-margin = #0
    right-margin = #0

    max-systems-per-page = 3
    score-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 10))
    % markup-system-spacing =
    % #'((minimum-distance . 20))
    % system-system-spacing =
    % #'((minimum-distance . 15))
    % annotate-spacing = ##t

  }
}

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
        \line { "Gravat musical per Robert Garrigós" \with-url #"https://garrigos.cat" "https://garrigos.cat" \with-url #"https://creativecommons.org/licenses/by/4.0/deed.ca" "(CC BY 4.0)" "amb" \with-url #"https://lilypond.org" "Lilypond" "el" \data }
        % \line { "Creative Commons Attribution 4.0 International (CC BY 4.0)" }
      }
    }
  }
  \score {
    <<
      \new Voice = "mel" { \autoBeamOff \melody }
      \new Lyrics \lyricsto mel \catala
      \new Lyrics \lyricsto mel \alemany
      \new PianoStaff \with { \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #0 } <<
        \new Staff = "upper" \upper
        \new Staff = "lower" \lower
      >>
    >>
    \layout {
      #(layout-set-staff-size 16.4)
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #3
      }
    }
    \midi { }
  }
  \paper {
    set-paper-size = "a4"
    top-margin = 10
    left-margin = 15
    indent = 10
    max-systems-per-page = 6
    score-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 5)
       (padding . 0)
       (stretchability . 14))

    last-bottom-spacing =
    #'((basic-distance . 15)
       (minimum-distance . 5)
       (padding . 0)
       (stretchability . 10))
    % markup-system-spacing =
    % #'((minimum-distance . 0))
    % system-system-spacing =
    % #'((minimum-distance . 15))
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
        \line { \fromproperty #'header:title "- pàgina" \fromproperty #'page:page-number-string "de" \concat {\page-ref #'lastPage "0" "?"} }
        \fill-line { \fromproperty #'header:copyright }
      }
    }
    evenFooterMarkup = \markup {
      \center-column {
        \line { \fromproperty #'header:title "- pàgina" \fromproperty #'page:page-number-string "de" \concat {\page-ref #'lastPage "0" "?"} }
        \fill-line { \fromproperty #'header:copyright }
      }
    }
  }
}
