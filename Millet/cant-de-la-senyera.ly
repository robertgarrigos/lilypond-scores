\version "2.24.3"
\language "english"

#(set-global-staff-size 17)
data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))

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
  % print-all-headers = ##t
  % print-first-page-number = ##t
  oddFooterMarkup = \markup {
    \center-column {
      \line { \fromproperty #'header:title " - pàgina" \fromproperty #'page:page-number-string "de" \concat {\page-ref #'lastPage "0" "?"} }
      \fill-line { \fromproperty #'header:copyright }
    }
  }
  evenFooterMarkup = \markup {
     \center-column {
      \line { \fromproperty #'header:title " - pàgina" \fromproperty #'page:page-number-string "de" \concat {\page-ref #'lastPage "0" "?"} }
      \fill-line { \fromproperty #'header:copyright }
    }
  }
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
      \line { "Gravat musical per Robert Garrigós" \with-url #"https://garrigos.cat" "https://garrigos.cat" \with-url #"https://creativecommons.org/licenses/by/4.0/deed.ca" "(CC BY 4.0)" " amb " \with-url #"https://lilypond.org" "Lilypond" " el" \data }
      % \line { "Creative Commons Attribution 4.0 International (CC BY 4.0)" }
    }
  }
  tagline = ##f
}

global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key f \major
  \time 3/4
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  % \set Score.currentBarNumber = #3
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)
  \set Score.tempoHideNote = ##t
  \set Score.printKeyCancellation = ##t
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
  f4.\f g8 a bf |
  g8. f16 g2 |
  f4. g8 a bf |
  g8.  f16 g4 g |
%5
  c8. a16 a4. f8 |
  g8. f16 f4\fermata \bar "||" \key f \minor r4 \bar "|"
  R2. |
  r8 g16\f g c8. c16 c4 |
  r2 r8 f,8|
%10
  \time 2/4
  c'8 (bf16 af) g8 af |
  \time 3/4
  bf4.\sf af16 (g) f8 g |
  \time 2/4
  f8 e \breathe c8 d16 (e) |
  f8 g af bf |
  c4 r4 |
%15
  \time 3/4 R2. |
  r8 ef16\f ef ef4 ef4 |
  r8 ef16 ef ef8 df c bf |
  \time 2/4
  c8 (bf16 af g8 af)\breathe |
  f8^"rit."
  \tempo 4 = 95 e
  \tempo 4 = 94 c8
  \tempo 4 = 93 d16
  \tempo 4 = 92 e |
%20
  \tempo 4 = 90 f8
  \tempo 4 = 88 g
  \tempo 4 = 82 af
  \tempo 4 = 78 bf |
  \tempo 4 = 65 c2 \breathe \bar "||"

  \key f \major
  \time 3/4 \majestuos
  f,4.\f g8 a bf |
  g8. f16 g2 |
  f4. g8 a bf |
%25
  g8.  f16 g4 g |
  c8. a16 a4. f8 |
  g8. f16 f4\fermata \bar "||"
  \time 2/4 \moderat ^\markup dolç
  a8.\p g16 a8. g16 |
  a16 (c bf) a g8 g |
%30
  a8. g16 a8. g16 |
  a16 (c bf) a g8\< (a)\! \breathe |
  bf8. a16 bf8. a16 |
  bf16 (a g) f e8 c8 |
  f g a16 bf c a |
%35
  g4 r4 |
  a8. g16 a8. g16 |
  a16 (c bf) a g8 a |
  bf8. a16 bf8. a16 |
  bf16 (d c) bf a8\< (b)\! \breathe |
%40
  c8. b16 c8 a |
  bf8. a16 bf8 g |
  a^"rit." g a16\> bf c a\! |
  g2 \breathe \bar "||"
  \time 3/4 \majestuos
  f4.\f g8 a bf |
  g8. f16 g2 |
  f4. g8 a bf |
  g8.  f16 g4 g |
  c8. a16 a4. f8 |
  g8. f16 f4\fermata \bar "||" \key f \minor r4 \bar "|"
  R2. |
  r8. g16\f c4 c4 |
  r2 r8 f,8|

  \time 2/4
  c'8 (bf16 af) g8 af |
  \time 3/4
  bf4. af16 (g) f8 g |
  \time 2/4
  f8 e \breathe c8 d16 (e) |
  f8 g af bf |
  c4 r4 |

  \time 3/4 R2. |
  r8. ef16\f ef4 ef4 |
  r8 ef16 ef ef8 df c bf |
  \time 2/4
  c8 (bf16 af g8 af) |
  f8 e c8 (d16 e |

  f8) \tempo 4 = 88 g^"rit." \tempo 4 = 80 af \tempo 4 = 70 bf \tempo 4 = 50|
  c2 \breathe \bar "||"
  \key f \major
  \time 3/4 \majestuos
  f,4.\f g8 a bf |
  g8. f16 g2 |
  f4. g8 a bf |

  g8.  f16 g4 g |
  c8. a16 a4. f8 |
  g8. f16 f2\fermata \bar "|."
  \label #'lastPage
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
  f4.\f c8 f bf, |
  c8. d16 c2 |
  f4. c8 f bf, |
  c8. d16 c4 c |
%5
  a'8. f16 f4. d8 |
  c8. f16 f4\fermata \bar "||"
  \key f \minor
  \mesviu
  af8.\f g16 \bar "|"
  f4. g8 af bf |
  c4 c4 af8. g16 |
  f4. g8 af bf |
%10
  \time 2/4
  c8 (bf16 af) g8 af |
  \time 3/4
  f4.\sf af16 (g) f8 g |
  \time 2/4
  f8 e \breathe c8 d16 (e) |
  f8 g af bf |
  c4 \breathe c8.\ff df16 |
%15
  \time 3/4
  ef4. df8 c bf |
  c4 c \breathe c8. df16 |
  ef4. df8 c bf |
  \time 2/4
  c8 (bf16 af g8 af)\breathe |
  f8^"rit." e c8 d16 e |
%20
  f8 g af bf |
  c2 \breathe \bar "||"
  \key f \major
  \time 3/4
  f,4.\f c8 f bf, |
  c8. d16 c2 |
  f4. c8 f bf, |
%25
  c8. d16 c4 c |
  a'8. f16 f4. d8 |
  c8. f16 f4\fermata \bar "||"
  \time 2/4
  f8.\p c16 f8. c16 |
  f8 a c c, |
%30
  f8. c16 f8. c16 |
  f8 a c\< a\! \breathe |
  g8. d16 g8. d16 |
  g,8 bf c e |
  f e f a, |
%35
  c \> \tempo 4 = 60  a \tempo 4 = 58 bf (\tempo 4 = 56 g) \tempo 4 = 48 \! \breathe | \tempo 4 = 62
  f'8. c16 f8. c16 |
  f8 a bf a |
  g8. d16 g8. d16 |
  g8 bf d\< (g,)\! \breathe |
%40
  c8. g16 c8 f, |
  bf8. f16 bf8 e, |
  f^"rit." \tempo 4 =60 c \tempo 4 = 56 f\> \tempo 4 = 50 a,\! \tempo 4 = 46 |
  c2 |
  \time 3/4
  f4.\f c8 f bf, |
  c8. d16 c2 |
  f4. c8 f bf, |
  c8. d16 c4 c |
  a'8. f16 f4. d8 |
  c8. f16 f4\fermata \bar "||" \key f \minor \mesviu af8.\f g16 \bar "|"
  f4. g8 af bf |
  c4 c4\breathe af8. g16 |
  f4. g8 af bf |

  \time 2/4
  c8 (bf16 af) g8 af |
  \time 3/4
  f4. af16 (g) f8 g |
  \time 2/4
  f8 e \breathe c8 d16 (e) |
  f8 g af bf |
  c4 \breathe c8.\ff df16 |

  \time 3/4
  ef4. df8 c bf |
  c4 c \breathe c8. df16 |
  ef4. df8 c bf |
  \time 2/4
  c8 (bf16 af g8 af) |
  f8 e c8 (d16 e |

  f8) g af bf |
  c2 \breathe \bar "||"
  \time 3/4
  \key f \major
  f,4.\f c8 f bf, |
  c8. d16 c2 |
  f4. c8 f bf, |
  c8. d16 c4 c |

  a'8. f16 f4. d8 |
  c8. f16 f2\fermata \bar "|."
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
