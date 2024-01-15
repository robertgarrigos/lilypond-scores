\version "2.24.3"
\language "english"

#(set-global-staff-size 18)
data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


\paper {
  set-paper-size = "a4"
  top-margin = 10
  indent = 10
  max-systems-per-page = 2
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
  title = "Bona nit a tot el món"
  subtitle = "Hänsel i Gretel"
  composer = \markup {
    \center-column {
      \line {"H. Humperdinck (1854-1921)"}
      \line {"Arr. Robert Garrigós"}
    }
  }
  % opus = "Arr. Robert Garrigós"
  % piece = "Lorem ipsum"
  copyright = \markup {
    \center-column {
      \line { "Gravat musical per Robert Garrigós" \with-url #"https://garrigos.cat" "https://garrigos.cat" \with-url #"https://creativecommons.org/licenses/by/4.0/deed.ca" "(CC BY 4.0)" " amb " \with-url #"https://lilypond.org" "Lilypond" " el" \data }
      % \line { "Creative Commons Attribution 4.0 International (CC BY 4.0)" }
    }
  }
}

global = {
  \overrideTimeSignatureSettings
  4/4        % timeSignatureFraction
  1/4        % baseMomentFraction
  1,1        % beatStructure
  #'()       % beamExceptions
  \key d \major
  \time 4/4
  % \set Score.tempoHideNote = ##t
  \tempo 4 = 60
  % \set melismaBusyProperties = #'()

}

ppsub = \markup { \dynamic pp \italic subito}

SopranoMusic = \relative c'{
  \global
  \set Staff.midiInstrument = #"voice oohs"
  % R1 |
  % R1 |
  \p d4 fs fs a |
  b a a2 |
  d4 a a fs |
  fs e8( d) e4. r8|
  g4 g fs fs |
  e2 d4 r4 |
  a' a a g |
  g4. (fs8) e2 |
  bf'4 bf a4. g8 |
  c2 b?4 r4 |
  d4^\markup cresc d cs4. d8 |
  e2\< d2\! |
  g,4^\ppsub b b d |
  d2 a4 r |
  a c c e |
  e2 b4 r4 |
  b\< d d fs\! |
  fs\> e d\! \breathe gs, |
  a\< b cs d\! |
  g?2\> (fs4.) e8\! |
  d2 r2 \bar "|."

}
SopranoLyrics = \lyricmode {
  Bo -- na nit a tot al món,
  àn -- gels tinc al meu en -- torn,
  dos al cap que~em be -- sen,
  dos als peus que~'m re -- sen,
  dos a -- quí~a la dre -- ta,
  dos a -- quí~a l'es -- que -- rra,
  al -- tres dos que~em vet -- llen,
  al -- tres que~em des -- vet -- llen,
  dos que~em fam me -- mò -- ri -- a
  del cel i l'al -- ta glò -- ri -- a
}
AltoMusic = \relative c' {
  \global
  \set Staff.midiInstrument = #"voice oohs"
  % R1 |
  % R1 |
  \p d4 d d fs |
  g g fs( e) |
  d fs fs d |
  d cs8( b) cs4. r8 |
  e4 e d d |
  d (cs) d r4 |
  fs4 fs fs e |
  e (ds) e2 |
  R1 |
  a4 a a g |
  b2. a4 |
  cs4\< cs cs b8\! (a) |
  g2^\ppsub d4 r4 |
  d fs fs a |
  a2 e4 r|
  e\< g g b |
  b2.\! a4 |
  a gs fs \breathe e |
  \<a2. gs4\! |
  \(g? \>a b cs |
  d2\)\! r2 |

  }
AltoLyrics = \lyricmode {
   Bo -- na nit a tot al món,
  àn -- gels tinc al meu en -- torn,
  dos al cap que~em be -- sen,
  dos als peus que~'m re -- sen
  dos a -- quí~a la dre -- ta,
  dos a -- quí~a l'es -- que -- rra,
  al -- tres dos que~em vet -- llen,
  al -- tres que~em des -- vet -- llen,
  dos que~em fam me -- mò -- ri -- a
   glò -  ri -- a
  }
TenorMusic = \relative {
  \global
  \set Staff.midiInstrument = #"voice oohs"
  % d4( fs) fs( a) |
  % fs (a) a (d) |
  \p fs2 a |
  g4 e fs( g) |
  a1 |
  a4 (g) g4 . a8 |
  b4 g a2 |
  b4() a8 g fs4) fs8 g |
  a4 (c) b~ b8 (d) |
  c4 (b8 a) g4 (b) |
  c2. f8 e |
  d2 d4 g,8 a |
  b4 e,4 e8 (gs a b) |
  cs4\< g'? fs8 (e) d\! (c) |
  b4^\ppsub d4 b b |
  b4 (a8 g) a4 fs |
  fs (e8 ds) e4 a~ |
  a g8 (fs) g4 g4|
  g fs8 (e) b'2~|
  b4. a8 gs4 \breathe d' |
  \<cs4 d e2~ |
  e8\! d8 \>cs (b a4) g4 |
      fs2\! r2 |
  % <<
  %   {
  %     \voiceOne
  %     % \stemUp
  %     e4. d8 cs b a g |
  %     fs2 r2 |
  %   }
  % \\
  % % {
  % %   \voiceTwo
  % %   % \stemDown
  % %   b,  4 cs8 b8 a4 g4 |
  % %   fs2 r2 |
  % % }
  % >>
  }
TenorLyrics = \lyricmode {
  Bo -- na nit al món,
  àn -- gels,
  dos al cap que~em be -- sen, __
  dos als peus que~em re -- sen,
  dos a la dre -- ta,
  dos a -- quí~a l'es -- que -- rra, l'es -- que -- rra,
  al -- tres dos que~em vet -- llen, que~em vet -- llen,
  al -- tres dos que~em fan me -- mò -- ri -- a,
  del cel me -- mò -- ria, glò -- ri -- a.
  }
BassMusic = \relative {
  \global
  \set Staff.midiInstrument = #"voice oohs"
  % d1~ |
  % d1 |
  \p d1 |
  d1 |
  d2 fs |
  a,2 a'4 g8( fs) |
  e2 fs2 |
  g4 (a) b a8 g |
  fs2 g2 |
  a4 (b,) e2 |
  e4 g c, f8 g |
  a4 (fs?) g4 g,8 g|
  g4 gs  a2 |
  a4\< as b d\! |
  g2.^\ppsub b4 |
  d,2. cs4 |
  c?2. c4 |
  e2. g,4 |
  b2. b4 |
  e4 e b2 |
  \<a1~ |
  a2.\! \>a4 |
  d2\! r2 |
  \label #'lastPage
  }
BassLyrics = \lyricmode {
  Bo -- na nit al món,
  dos al cap que~em be -- sen,
  dos als peus que~em re -- sen,
  dos a -- quí a la dre -- ta,
  dos a -- quí~a l'es -- que -- rra, l'es -- que -- rra,
  al -- tres dos que~em vet -- llen,
  dos que~em fan me -- mò -- ri -- a,
  glò -- ri -- a.
  }
% PianoRHMusic = \relative { c' e g c }
% PianoDynamics = { s2\mp s4 s4 }
% PianoLHMusic = \relative { c e g c }

% TwoVoicesPerS taff = ##t

Layout = \layout {
  \context {
    \Score
    \override BarNumber.padding = #2
  }


}
\midi {
  \tempo 4=120 % Set tempo to 120 quarter notes per minute
}



\include "satb.ly"
