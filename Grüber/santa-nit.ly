\version "2.24.3"
\language "english"

#(set-global-staff-size 18)
data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


\paper {
  set-paper-size = "a4"
  top-margin = 10
  left-margin = 15
  indent = 10
  max-systems-per-page = 3
  score-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  markup-system-spacing =
    #'((minimum-distance . 20))
  system-system-spacing =
    #'((minimum-distance . 20))
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
  }}

\header {
  title = "Santa Nit"
  % subtitle = "localsubtitle"
  composer = "Franz Grüber (1787-1863)"
  % arranger = "localarranger"
  % instrument = "localinstrument"
  poet = "Trad. A. Martorell"
  % meter = "localmetre"
  % opus = "localopus"
  % piece = "localpiece"

  tagline = ##f
  copyright = \markup {
    \center-column {
      \line { "Gravat musical per Robert Garrigós" \with-url #"https://garrigos.cat" "https://garrigos.cat" \with-url #"https://creativecommons.org/licenses/by/4.0/deed.ca" "(CC BY 4.0)" "amb" \with-url #"https://lilypond.org" "Lilypond" "el" \data }
      % \line { "Creative Commons Attribution 4.0 International (CC BY 4.0)" }
    }
  }
}

global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key d \major
  \time 6/8
}

SopranoMusic = \relative c'' {
  \global
  \tempo "Tranquil"
  \repeat volta 3 {
  | a8.^\( b16 a8 fs4.
  | a8. b16 a8 fs4.\)
  | e'4^\( e8 cs4.
  | d4 d8 a4.\)
%5
  | b4^\( b8 d8. cs16 b8
  | a8. b16 a8 fs4.\)
  | b4^\( b8 d8. cs16 b8
  | a8. b16 a8 fs4.\)
  | e'4^\( e8 g8. e16 cs8
%10
  | d4. (fs4)\) r8
  | d8.^\( a16 fs8 a8. g16 e8
  | d2.\)\parenthesize\fermata   \bar ":|." }
}
% SopranoLyrics = \lyricmode {
%   Cla - ra nit! San - ta nit!
%   <<
%     {
%       Sòn pre -- gon pla -- na~al món,
%       no -- més vet -- lla la Ver -- ge~i l'es -- pòs,
%       con -- tem -- plant el dol -- cís -- sim re -- pòs
%       de Je -- sús a -- mo -- rós, __ de __ _ Je -- sús a -- mo -- rós.
%     }
%     \new Lyrics = "secondVerse" \with { alignBelowContext = "SopranoLyrics" }
%     {
%       Dalt del cel u -- na veu:
%       "\"Al·" -- le -- lu -- "ia!\"" els diu als pas -- tors,
%       "\"a" -- le -- greu -- vos i~al -- ceu vos -- tres cors,
%        que~és nat el Re -- demp -- tor, __  que~és __ _ nat el Re -- demp -- "tor.\""
%     }

%   >>
% }
AltoMusic = \relative c' {
  \global
  | fs8.\( fs16 fs8 d4.
  | fs8. fs16 fs8 d4.\)
  | a'4\( a8 g4.
  | fs4 fs8 fs4.\)
%5
  | g4\( g8 b8. a16 g8
  | fs8. g16 fs8 d4.\)
  | g4\( g8 es8. es16 es8
  | fs8. es16 fs8 d4.\)
  | a'4\( a8 a8. a16 a8
%10
  |fs4. (a4)\) r8
  | fs8.\( fs16 d8 b8. b16 a8
  | a2.\)\parenthesize\fermata \bar ":|."
}
AltoLyrics = \lyricmode {
  Cla - ra nit! San - ta nit!
  <<
    {
      Sòn pre -- gon pla -- na~al món,
      no -- més vet -- lla la Ver -- ge~i l'es -- pòs,
      con -- tem -- plant el dol -- cís -- sim re -- pòs
      de Je -- sús a -- mo -- rós, __ de _ Je -- sús a -- mo -- rós.
    }
    \new Lyrics = "secondVerse" \with { alignBelowContext = "AltoLyrics" }
    {
      \set associatedVoice = "AltoMusic"
      Dalt del cel u -- na veu:
      "\"Al·" -- le -- lu -- "ia!\"" els diu als pas -- tors,
      "\"a" -- le -- greu -- vos i~al -- ceu vos -- tres cors,
       que~és nat el Re -- demp -- tor, __ que~és __ _ nat el Re -- demp -- "tor.\""
    }
    \new Lyrics = "thirdVerse" \with { alignBelowContext = "secondVerse" }
    {
      \set associatedVoice = "AltoMusic"
      som -- ri -- ent dol -- ça -- ment
      Déu In -- fant cir -- cum -- dat de cla -- ror
      bai -- xa~al món a~a -- cla -- rir la fos -- cor,
      Al -- le -- lu -- ia Se -- nyor! __ Al __ _ le -- lu -- ia Se -- nyor!
    }

  >>
}
TenorMusic = \relative c' {
  \global
  | a8.^\( a16 a8 a4.
  | a8. a16 a8 a4.\)
  | cs4^\( cs8 a4.
  | a4 a8 d4.\)
%5
  | d4^\( d8 b8. cs16 d8
  | d8. d16 d8 a4.\)
  | d4^\( d8 b8. cs16 d8
  | d8. d16 d8 a4.\)
  | cs4^\( cs8 cs8. cs16 e8
%10
  | d4.~ d4\) r8
  | a8.^\( a16 a8 a8. a16 g8
  | fs2.\)\parenthesize\fermata \bar ":|."
}
% TenorLyrics = \lyricmode {
%   Cla - ra nit! San - ta nit!

%   <<
%     {
%       Sòn pre -- gon pla -- na~al món,
%       no -- més vet -- lla la Ver -- ge~i l'es -- pòs,
%       con -- tem -- plant el dol -- cís -- sim re -- pòs
%       de Je -- sús a -- mo -- rós, __ de __ _ Je -- sús a -- mo -- rós.
%     }
%     \new Lyrics = "secondVerse" \with { alignBelowContext = "TenorLyrics" }
%     {
%       Dalt del cel u -- na veu:
%       "\"Al·" -- le -- lu -- "ia!\"" els diu als pas -- tors,
%       "\"a" -- le -- greu -- vos i~al -- ceu vos -- tres cors,
%        que~és nat el Re -- demp -- tor, __  que~és __ _ nat el Re -- demp -- "tor.\""
%     }

%   >>
% }
BassMusic = \relative c {
  \global
  | d8.\( d16 d8 d4.
  | d8. d16 d8 d4.\)
  | a'4\( a8 e4.
  | d4 d8 d4.\)
%5
  | g4\( g8 g8. a16 b8
  | d,8. d16 d8 d4.\)
  | g4\( g8 gs8. gs16 gs8
  | a8. gs16 a8 d,4.\)
  | a'4\( a8 e8. a16 a8
%10
  | d,4.~d4\) r8
  | d8.\( d16 d8 e8. e16 cs8
  | d2.\)\parenthesize\fermata \bar ":|."

  \label #'lastPage
}
% BassLyrics = \lyricmode {
%   Cla - ra nit! San - ta nit!

%   <<
%     {
%       Sòn pre -- gon pla -- na~al món,
%       no -- més vet -- lla la Ver -- ge~i l'es -- pòs,
%       con -- tem -- plant el dol -- cís -- sim re -- pòs
%       de Je -- sús a -- mo -- rós, __ de __ _ Je -- sús a -- mo -- rós.
%     }
%     \new Lyrics = "secondVerse" \with { alignBelowContext = "BassLyrics" }
%     {
%       Dalt del cel u -- na veu:
%       "\"Al·" -- le -- lu -- "ia!\"" els diu als pas -- tors,
%       "\"a" -- le -- greu -- vos i~al -- ceu vos -- tres cors,
%        que~és nat el Re -- demp -- tor, __  que~és __ _ nat el Re -- demp -- "tor.\""
%     }

%   >>
% }
% PianoRHMusic = \relative { c' e g c }
% PianoDynamics = { s2\mp s4 s4 }
% PianoLHMusic = \relative { c e g c }

TwoVoicesPerStaff = ##t

Layout = \layout {
  \context {
    \Score
    \override BarNumber.padding = #2
  }
  \context {
    \Lyrics
    \override LyricSpace.minimum-distance = #1.0
  }
}


\include "satb.ly"
