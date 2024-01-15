\version "2.24.3"
\language "english"

#(set-global-staff-size 17)

\paper {
  set-paper-size = "a4"
  top-margin = 10
  indent = 10
  max-systems-per-page = 4
  system-system-spacing.basic-distance = 8
  system-system-spacing.score-markup-spacing = 10
  % system-system-spacing.minium-distance = 8
  % system-system-spacing.padding = 2
  system-system-spacing.stretchability = 12
  % annotate-spacing = ##t
}

\header {
  title = "El Cant de la Senyera"
  % subtitle = "Lorem ipsum"
  composer = \markup {
    \right-column {
    \line {"Música: Lluís Millet (1867-1941)"}
    \line {"Lletra: Joan Maragall (1860-1911)"}
    \line {"Arranjament per a dues veus: Robert Garrigós"}
    }

  }
  % opus = "(lorem-ipsum)"
  % piece = "Lorem ipsum"
  copyright = \markup {
    \center-column {
      \line { "Engraving by Robert Garrigós" \with-url #"https://garrigos.cat" "https://garrigos.cat"}
      \line { "Creative Commons Attribution 4.0 International (CC BY 4.0)" }
    }
  }
}

global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key e \major
  \time 3/4
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  % \set Score.currentBarNumber = #3
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)
  \set Score.tempoHideNote = ##t
}

majestuos  = {
  \tempo "Majestuós"
  \tempo 4 = 60
}

mesviu = {
  \tempo "Poc més viu"
  \tempo 4 = 96
}

moderat = {
  \tempo "Moderat"
  \tempo 4 = 62
}

SopranoMusic = \relative c' {
  \global
  \majestuos
  e4.\f fs8 gs a |
  fs8. e16 fs2 |
  e4. fs8 gs a |
  fs8.  e16 fs4 fs |
%5
  b8. gs16 gs4. e8 |
  fs8. e16 e4\fermata \bar "||" \key e \minor r4 \bar "|"
  R2. |
  r8 fs16\f fs b8. b16 b4 |
  r2 r8 e,8|
%10
  \time 2/4
  b'8 (a16 g) fs8 g |
  \time 3/4
  a4.\sf g16 (fs) e8 fs |
  \time 2/4
  e8 ds \breathe b8 cs16 (ds) |
  e8 fs g a |
  b4 r4 |
%15
  \time 3/4 R2. |
  r8 d16\f d d4 d4 |
  r8 d16 d d8 c b a |
  \time 2/4
  b8 (a16 g fs8 g)\breathe |
  e8^"rit."
  \tempo 4 = 95 ds
  \tempo 4 = 94 b8
  \tempo 4 = 93 cs16
  \tempo 4 = 92 ds |
%20
  \tempo 4 = 90 e8
  \tempo 4 = 88 fs
  \tempo 4 = 82 g
  \tempo 4 = 78 a |
  \tempo 4 = 65 b2 \breathe \bar "||"

  \key e \major
  \time 3/4 \majestuos
  e,4.\f fs8 gs a |
  fs8. e16 fs2 |
  e4. fs8 gs a |
%25
  fs8.  e16 fs4 fs |
  b8. gs16 gs4. e8 |
  fs8. e16 e4\fermata \bar "||"
  \time 2/4 \moderat ^\markup dolç
  gs8.\p fs16 gs8. fs16 |
  gs16 (b a) gs fs8 fs |
%30
  gs8. fs16 gs8. fs16 |
  gs16 (b a) gs fs8\< (gs)\! \breathe |
  a8. gs16 a8. gs16 |
  a16 (gs fs) e ds8 b8 |
  e fs gs16 a b gs |
%35
  fs4 r4 |
  gs8. fs16 gs8. fs16 |
  gs16 (b a) gs fs8 gs |
  a8. gs16 a8. gs16 |
  a16 (cs b) a gs8\< (as)\! \breathe |
%40
  b8. as16 b8 gs |
  a8. gs16 a8 fs |
  gs^"rit." fs gs16\> a b gs\! |
  fs2 \breathe \bar "||"
  \time 3/4 \majestuos
  e4.\f fs8 gs a |
  fs8. e16 fs2 |
  e4. fs8 gs a |
  fs8.  e16 fs4 fs |
  b8. gs16 gs4. e8 |
  fs8. e16 e4\fermata \bar "||" \key e \minor r4 \bar "|"
  R2. |
  r8. fs16\f b4 b4 |
  r2 r8 e,8|

  \time 2/4
  b'8 (a16 g) fs8 g |
  \time 3/4
  a4. g16 (fs) e8 fs |
  \time 2/4
  e8 ds \breathe b8 cs16 (ds) |
  e8 fs g a |
  b4 r4 |

  \time 3/4 R2. |
  r8. d16\f d4 d4 |
  r8 d16 d d8 c b a |
  \time 2/4
  b8 (a16 g fs8 g) |
  e8 ds b8 (cs16 ds |

  e8) \tempo 4 = 88 fs^"rit." \tempo 4 = 80 g \tempo 4 = 70 a \tempo 4 = 50|
  b2 \breathe \bar "||"
  \key e \major
  \time 3/4 \majestuos
  e,4.\f fs8 gs a |
  fs8. e16 fs2 |
  e4. fs8 gs a |

  fs8.  e16 fs4 fs |
  b8. gs16 gs4. e8 |
  fs8. e16 e2\fermata \bar "|."
}
SopranoLyrics = \lyricmode {
  Al da -- munt dels nos -- tres cants
  ai -- xe -- quem u -- na se -- nye -- ra
  que~els fa -- rà més tri -- om -- fants.
  Au, com -- panys, com -- panys,
  com -- panys, au, ger -- mans al vent des -- fem -- la
  en se -- nyal de lli -- ber -- tat!
  Que vo -- le -- i!
  en sa dol -- ça ma -- jes -- tat! __
  con -- tem -- plem -- la~en sa dol -- ça ma -- jes -- tat! __
  Al da -- munt dels nos -- tres cants
  ai -- xe -- quem u -- na se -- nye -- ra
  que~els fa -- rà més tri -- om -- fants.
  Oh ban -- de -- ra ca -- ta -- la -- na!
  Nos -- tre cor t'és ben fi -- del!
  Vo -- la -- ràs com au ga -- la -- na
  pel da -- munt del nos -- tre~a -- nhel.
  Per mi -- rar -- te so -- bi -- ra -- na
  al -- ça -- rem els ulls al cel, __
  Per mi -- rar -- te so -- bi -- ra -- na
  al -- ça -- rem els ulls al cel.
  Al da -- munt dels nos -- tres cants
  ai -- xe -- quem u -- na se -- nye -- ra
  que~els fa -- rà més tri -- om -- fants.
  en  lai -- re, du -- ràs,
  vo -- le -- iant al grat de l'ai --re,
  el ca -- mí~as -- se -- nya -- la -- ràs.
  can -- tai -- re,
  llum als ulls i for -- ça~al braç __
  llum als ulls __ i for -- ça~al braç.
  Al da -- munt dels nos -- tres cants
  ai -- xe -- quem u -- na se -- nye -- ra
  que~els fa -- rà més tri -- om -- fants.
}
% AltoMusic = \relative { d'4\f d d d }
% AltoLyrics = \lyricmode { Al -- to ly -- rics }
% TenorMusic = \relative { a4\p a a a }
% TenorLyrics = \lyricmode { Te -- nor ly -- rics }
BassMusic = \relative {
  \global
  e4.\f b8 e a, |
  b8. cs16 b2 |
  e4. b8 e a, |
  b8. cs16 b4 b |
%5
  gs'8. e16 e4. cs8 |
  b8. e16 e4\fermata \bar "||"
  \key e \minor
  \mesviu
  g8.\f fs16 \bar "|"
  e4. fs8 g a |
  b4 b4 g8. fs16 |
  e4. fs8 g a |
%10
  \time 2/4
  b8 (a16 g) fs8 g |
  \time 3/4
  e4.\sf g16 (fs) e8 fs |
  \time 2/4
  e8 ds \breathe b8 cs16 (ds) |
  e8 fs g a |
  b4 \breathe b8.\ff c16 |
%15
  \time 3/4
  d4. c8 b a |
  b4 b \breathe b8. c16 |
  d4. c8 b a |
  \time 2/4
  b8 (a16 g fs8 g)\breathe |
  e8^"rit." ds b8 cs16 ds |
%20
  e8 fs g a |
  b2 \breathe \bar "||"
  \key e \major
  \time 3/4
  e,4.\f b8 e a, |
  b8. cs16 b2 |
  e4. b8 e a, |
%25
  b8. cs16 b4 b |
  gs'8. e16 e4. cs8 |
  b8. e16 e4\fermata \bar "||"
  \time 2/4
  e8.\p b16 e8. b16 |
  e8 gs b b, |
%30
  e8. b16 e8. b16 |
  e8 gs b\< gs\! \breathe |
  fs8. cs16 fs8. cs16 |
  fs,8 a b ds |
  e ds e gs, |
%35
  b \> \tempo 4 = 60  gs \tempo 4 = 58 a (\tempo 4 = 56 fs) \tempo 4 = 48 \! \breathe | \tempo 4 = 62
  e'8. b16 e8. b16 |
  e8 gs a gs |
  fs8. cs16 fs8. cs16 |
  fs8 a cs\< (fs,)\! \breathe |
%40
  b8. fs16 b8 e, |
  a8. e16 a8 ds, |
  e^"rit." \tempo 4 =60 b \tempo 4 = 56 e\> \tempo 4 = 50 gs,\! \tempo 4 = 46 |
  b2 |
  \time 3/4
  e4.\f b8 e a, |
  b8. cs16 b2 |
  e4. b8 e a, |
  b8. cs16 b4 b |
  gs'8. e16 e4. cs8 |
  b8. e16 e4\fermata \bar "||" \key e \minor \mesviu g8.\f fs16 \bar "|"
  e4. fs8 g a |
  b4 b4\breathe g8. fs16 |
  e4. fs8 g a |

  \time 2/4
  b8 (a16 g) fs8 g |
  \time 3/4
  e4. g16 (fs) e8 fs |
  \time 2/4
  e8 ds \breathe b8 cs16 (ds) |
  e8 fs g a |
  b4 \breathe b8.\ff c16 |

  \time 3/4
  d4. c8 b a |
  b4 b \breathe b8. c16 |
  d4. c8 b a |
  \time 2/4
  b8 (a16 g fs8 g) |
  e8 ds b8 (cs16 ds |

  e8) fs g a |
  b2 \breathe \bar "||"
  \time 3/4
  \key e \major
  e,4.\f b8 e a, |
  b8. cs16 b2 |
  e4. b8 e a, |
  b8. cs16 b4 b |

  gs'8. e16 e4. cs8 |
  b8. e16 e2\fermata \bar "|."
}
BassLyrics = \lyricmode {
  Al da -- munt dels nos -- tres cants
  ai -- xe -- quem u -- na se -- nye -- ra
  que~els fa -- rà més tri -- om -- fants.
  Au, com -- panys, e -- nar -- bo -- rem -- la
  en se -- nyal de ger -- man -- dat!
  Au, ger -- mans, al vent des -- fem -- la
  en se -- nyal de lli -- ber -- tat!
  Que vo -- le -- i! con -- tem -- plem -- la
  en sa dol -- ça ma -- jes -- tat! __
  con -- tem -- plem -- la~en sa dol -- ça ma -- jes -- tat! __
  Al da -- munt dels nos -- tres cants
  ai -- xe -- quem u -- na se -- nye -- ra
  que~els fa -- rà més tri -- om -- fants.
  Oh com -- panys en -- ar -- bo -- rem -- la!
  Oh com -- panys al vent des -- fem -- la!
  Vo -- la -- ràs com au ga -- la -- na
  pel da -- munt del nos -- tre~a -- nhel. __
  Per mi -- rar -- te so -- bi -- ra -- na
  al -- ça -- rem els ulls al cel, __
  Per mi -- rar -- te so -- bi -- ra -- na
  al -- ça -- rem al cel.
  Al da -- munt dels nos -- tres cants
  ai -- xe -- quem u -- na se -- nye -- ra
  que~els fa -- rà més tri -- om -- fants.
  I~et du -- rem ar -- reu en -- lai -- re,
  et du -- rem i tu~ens du -- ràs,
  vo -- le -- iant al grat de l'ai --re,
  el ca -- mí~as -- se -- nya -- la -- ràs.
  Dó -- na veu al teu can -- tai -- re,
  llum als ulls i for -- ça~al braç __
  llum als ulls __ i for -- ça~al braç.
  Al da -- munt dels nos -- tres cants
  ai -- xe -- quem u -- na se -- nye -- ra
  que~els fa -- rà més tri -- om -- fants.

 }
% PianoRHMusic = \relative { c' e g c }
% PianoDynamics = { s2\mp s4 s4 }
% PianoLHMusic = \relative { c e g c }

% TwoVoicesPerStaff = ##t

Layout = \layout {
  \context {
    \Score
    \override BarNumber.padding = #2

  }
}


\include "satb.ly"
