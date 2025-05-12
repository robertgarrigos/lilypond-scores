\version "2.24.3"
\language "english"

#(set-global-staff-size 17.5)
data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


\paper {
  set-paper-size = "a4"
  top-margin = 10
  indent = 10
  max-systems-per-page = 3
  system-system-spacing.basic-distance = 20
  system-system-spacing.score-markup-spacing = 10
  % system-system-spacing.minium-distance = 8
  % system-system-spacing.padding = 2
  system-system-spacing.stretchability = 12
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

\header {
  title = "Benedicat Vobis"
  % subtitle = "Lorem ipsum"
  composer = "G. F. Haendel (1685-1759)"
  % opus = "(1685-1759)"
  % piece = "Lorem ipsum"
  copyright = \markup {
    \center-column {
      \line { "Gravat per Robert Garrigós" \with-url #"https://garrigos.cat" "https://garrigos.cat" \with-url #"https://creativecommons.org/licenses/by/4.0/deed.ca" "(CC BY 4.0)" "amb" \with-url #"https://lilypond.org" "Lilypond" "el" \data }
      % \line { "Creative Commons Attribution 4.0 International (CC BY 4.0)" }
    }
  }
}

global = {
  % \overrideTimeSignatureSettings
  % 2/4        % timeSignatureFraction
  % 1/16        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key d \major
  \time 2/4
  \dynamicUp
  \set Score.tempoHideNote = ##t
  \tempo "Allegro"
  \tempo 4 = 106
}

SopranoMusic = \relative c'' {
  \global
  \repeat volta 2 { d4 \f cs8. b16 |
  a4. g8 |
  fs4 e |
  d4. \breathe a'8 |
%5
  b4. b8 |
  cs4. cs8  |
  d2 ~ |
  d4. d8 \p  | \break
  d8 (cs b a) |
%10
  a8. (g16 fs8) \breathe d'8 \p |
  d8 (cs b a) |
  a8. (g16 fs8) \breathe \mf fs8  |
  fs \cresc  fs fs (fs16 g) |
  a4. g16 (fs) |
%15
  e8 e e (e16 fs) |
  g4. \breathe \f fs16 (e)  |
  d8 d'4 b8  |
  a8. (g16) fs8 g8 |
  fs4 (e)}
%20
  \alternative {
    {d4. r8}
    {d4. \breathe d'8 |
    d4. d8 d2 \bar "|."}
    }
}

SopranoLyrics = \lyricmode {
  Al -- le -- lu -- ia, al -- le -- lu -- ia,
  be -- ne -- di -- cat vo -- bis, __
  Do -- mi -- nus, __ Do -- mi -- nus, __
  qui fe -- cit coe -- lum qui fe -- cit coe -- lum,
  qui fe - cit  coe -- lum et te -- ra.   ra.
  Al -- le -- lu -- ia.
  }

AltoMusic = \relative c' {
  \global
  \repeat volta 2 { \f fs4 a8. g16 |
  fs4. e8 |
  d4 cs |
  d4. \breathe  fs8 |
%5
  g4. g8 |
  g4. a16 (g) |
  fs2 ~ |
  fs4. \breathe \p fs8 |
  fs (a g fs) |
%10
  fs8. (d16 d8) \breathe fs8 |
  fs (a g fs) |
  fs8. (d16 d8) \breathe \mf d8 |
  d \cresc d d (d16 e) |
  fs4. e16 (d) |
%15
  cs8 cs cs (cs16 d) |
  e4. \breathe \f d16 (cs) |
  d8 fs4 g8 |
  fs8. (e16) d8 e |
  d4 (cs)}
%20
  \alternative {
    {d4. r8}
    {d4. \breathe fs8 |
    g4. g8 |
    fs2 \bar "|."}
    }
}

AltoLyrics = \lyricmode {
Al -- le -- lu -- ia, al -- le -- lu -- ia,
be -- ne -- di -- cat vo -- bis, __
Do -- mi -- nus, __ Do -- mi -- nus, __
qui fe -- cit coe -- lum qui fe -- cit coe -- lum,
qui fe - cit  coe -- lum et te -- ra.   ra.
Al -- le -- lu -- ia.
}

TenorMusic = \relative c {
  \global
  \clef "G_8"
  \repeat volta 2 {\f d'4 d8. d16 |
  d4. b8 |
  a4 a8 (g) |
  fs4. \breathe d'8 |
%5
  d4. d8 |
  e4. a,8 |
  a2 ~ |
  a4. r8 |
  r2 |
%10
  r2 |
  r2 |
  r2 |
  r4 r8 \mf a8 |
  a \cresc a a a |
%15
  a2 ~|
  a4. \breathe \f a8 |
  fs8 a4 d8 |
  d4 d8 b8 |
  a4 (a8 g)}
%20
  \alternative {
    {<\parenthesize d fs>4. r8}
    {d4. \breathe fs8 |
    g4. g8 |
    fs2 \bar "|."}
    }
}

TenorLyrics = \lyricmode {
Al -- le -- lu -- ia, al -- le -- lu -- ia,
be -- ne -- di -- cat vo -- bis, __
qui fe -- cit coe - lum,
qui fe - cit  coe -- lum et te -- ra.  ra.
Al -- le -- lu -- ia.}

BassMusic = \relative c {
  \global
  \clef bass
  \repeat volta 2 {d4 d8. d16 |
  d4. g8 |
  a4 a, |
  d4. \breathe d8 |
%5
  g4. g8 |
  a4. a,8 |
  d2 ~ |
  d4. r8 |
  r2 |
%10
  r2 |
  r2 |
  r2 |
  r4 r8 \mf d8 |
  d \cresc d d d |
%15
  a4. a8 |
  a a a \f a |
  d4. d8 |
  d4. g8 a4 |
  (a,)}|
%20
  \alternative {
    {d4. r8}
    {d4. \breathe d8 |
    g4. g8 |
    d2 \bar "|."}
    \label #'lastPage
    }
}

BassLyrics = \lyricmode {
  Al -- le -- lu -- ia, al -- le -- lu -- ia,
  be -- ne -- di -- cat vo -- bis, __
  qui fe -- cit coe - lum,
  qui fe -- cit  coe - lum, coe -- lum et te -- ra. ra.
  Al -- le -- lu -- ia.
}

Layout = \layout {
  \context {
    \Score
    \override BarNumber.padding = #2
  }
}

\include "satb.ly"
