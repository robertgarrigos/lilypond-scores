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
  \tempo ""
  \set Score.tempoHideNote = ##t
  \tempo 8=80

}


melody = \relative c' {
  \clef treble
  \global

  \partial 8 e16 f
  | g8 g c a
  | g4. f16 e
  | d8 e f g
  | e4 c8 e16 f
  | g8 g c a
  | g4. f16 e
  | d8 e f g
  | c,4 g'8 a
  | g4. e8
  | g( f) e( d)
  | e( f) g a
  | g4. e8
  | g( f) e( d)
  | e4 c8 c
  | a' a a a
  | a a16 b c8 b16 a
  | g8 a16 b c8 a
  | g f16 e f8 d
  | c4. \bar ":|."
}

chnames = {
  \chordmode{
    s8
    c4 f
    c2
    g:7
    c2.
    f4
    c2
    g:7
    c2
    g1
    c2
    g1
    c2
    f1
    c4 f4
    c4 g:7
    c4.
  }
}

catala = \lyricmode {
      A Bet -- lem me'n vull a -- nar,
      vols ve -- nir, tu, ga -- lli -- ne -- ta?
      A Bet -- lem me'n vull a -- nar,
      vols ve -- nir, tu, ra -- ba -- dà?
  <<
    {

      Un xiu -- let li vull com -- prar
      Un xiu -- let li vull com -- prar:
      xiu, xiu, xiu fa -- rà~el xiu -- let,
    }
    \new Lyrics = "secondVerse" \with { alignBelowContext = "catala" }
    {

      Un ta -- bal li vull com -- prar
      Un ta -- bal li vull com -- prar:
      tam, tam, tam fa -- rà~el ta -- bal,
    }
    \new Lyrics = "thirdVerse" \with { alignBelowContext = "catala" }
    {

      Un po -- llet li vull com -- prar
      Un po -- llet li vull com -- prar:
      piu, piu, piu fa -- rà~el po -- llet,

    }
  >>

    xi -- ri -- bit, xi -- ri -- bet,
    a Bet -- lem, au, au!
    a Bet -- lem, sius -- plau!
}



titol = "A betlem me'n vull anar"
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
