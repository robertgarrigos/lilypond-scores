\version "2.24.3"
\language "english"

#(set-global-staff-size 17.5)

\paper {
  set-paper-size = "a4"
  top-margin = 10
  indent = 10
  max-systems-per-page = 2
  system-system-spacing.basic-distance = 10
  % annotate-spacing = ##t
}

\header {
  title = "Aver Verum"
  subtitle = "Motet K. 618"
  composer = "W. A. Mozart"
  opus = "(1756-1791)"
  % piece = "Adagio"
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
  \key d \major
  \time 2/2

}

sottovoce = \markup { \italic "sotto voce" }

sopranonotes = \relative c'' {
  \compressMMRests {
    R1*2
    ^ \markup Adagio
  }
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.currentBarNumber = #3
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)
  a2^\sottovoce d4( fs,) |
  a (gs) g2 |
%5
  g4 (b) a (g) |
  g(fs) fs2 \breathe |
  e2. e4 |
  fs fs g g |
  g2( fs4) fs |
%10
  e1 \breathe
  e2. a4 |
  a( gs) gs2 |
  e4( gs2) b4 |
  b(a) a \breathe a |
%15
  d1~|
  d4( cs) b a
  a2( gs4) gs |
  a1 |
  \compressMMRests {
    R1*3
  }
  a2. a4 |
  \override Slur.positions = #'(3 . 2)
  a( bf) bf2 |
  \revert Slur.positions
  bf4( d) c( bf) |
%25
  bf4( a) a2 \breathe |
  g2. g4 |
  \override Slur.positions = #'(3 . 2)
  g( bf) a g |
  \revert Slur. positions
  g2( f8 e) f4 |
  e2 r |
%30
  fs?2. fs4 |
  fs( e) d( g)|
  g2. g4 |
  g( fs) e a |
  a1~ |
%35
  a4( g) a b |
  fs2( e4.) fs8 |
  g2 \breathe g |
  d'1~|
  d2( ds |
%40
  e4 b cs? d |
  cs b8 a) d4 \breathe g,4 |
  fs2( e4.) e8 |
  d1 |
\compressMMRests {
  R1*3 \bar "|."
  }
}

sopranowords = \lyricmode {
  A -- ve, a -- ve ve -- rum cor -- pus,
  na -- tum de Ma -- ri -- a Vir -- gi -- ne,
  ve -- re pas -- sum, im -- mo -- la -- tum
  in cru -- ce pro ho -- mi -- ne
  cu -- jus la -- tus per -- fo -- ra -- tum
  un -- da flu -- xit et san -- gui -- ne:
  es -- to no -- bis prae -- gus -- ta -- tum
  in mor -- tis ex -- a -- mi -- ne.
  in mor -- tis ex -- a -- mi -- ne.
}

altonotes = \relative c' {
  \compressMMRests {
    R1*2
  }
  fs2^\sottovoce fs |
  e e |
%5
  e4( g) fs( e) |
  e( d) d2 \breathe |
  cs2. cs4 |
  d d e e |
  e2( d4) d |
%10
  cs1 \breathe |
  e2. e4 |
  e2 e2 |
  e2. gs4 |
  gs4( a) a2 |
%15
  r2 gs |
  a2 fs4 fs |
  e2. e4 |
  e1 |
  \compressMMRests {
    R1*3
  }
  e2. e4 |
  e2 e |
  e2. e4 |
%25
  e( f) f2 \breathe |
  d2. d4 |
  e( f?) e e |
  e2( d8 cs) d4 |
  cs2 r|
%30
  d2. d4 |
  d( cs) b( e) |
  e2. e4 |
  e( d) cs fs |
  fs1~ |
  fs4( g) fs e |
  d2( cs4. ) cs8 |
  d2 r|
  r fs |
  g( a |
%40
  e1~|
  e4 d8 cs) d4 \breathe d |
  d2( cs4.) cs8 |
  d1 |
  \compressMMRests {
  R1*3 \bar "|."
  }


}

altowords = \lyricmode {
  A -- ve, a -- ve ve -- rum cor -- pus,
  na -- tum de Ma -- ri -- a Vir -- gi -- ne,
  ve -- re pas -- sum, im -- mo -- la -- tum
  in cru -- ce pro ho -- mi -- ne
  cu -- jus la -- tus per -- fo -- ra -- tum
  un -- da flu -- xit et san -- gui -- ne:
  es -- to no -- bis prae -- gus -- ta -- tum
  in mor -- tis ex -- a -- mi -- ne.
  in mor -- tis ex -- a -- mi -- ne.
 }

tenornotes = \relative c {
  \clef "G_8"
  \compressMMRests {
    R1*2
  }
  a'2^\sottovoce a |
  b b |
%5
  a a |
  a a \breathe |
  a2. a4 |
  a a a a |
  a2. a4 |
%10
  a1 \breathe |
  cs2. cs4 |
  cs( d) d2 |
  b2. d4 |
  d( cs) cs2 |
%15
  r2 d |
  e d4 cs |
  b2. b4 |
  cs1 |
  \compressMMRests {
    R1*3
  }
  cs2. cs4 |
  cs2 cs4( c) |
  c( bf) a( g) |
  g( a) a2 \breathe |

%25
  b?2. b4 |
  cs?( d4) e cs |
  cs2( d4) b? |
  e,2 r |
%30
  r1 |
  b'2. b4 |
  b( a) g( cs) |
  cs2. cs4 |
  cs( b) a d |
  d2 d4 d |
  a2. a4 |
  g2 r |
  r c |
  d( c |
%40
  b4 d cs b|
  a2) a4 \breathe g |
  a2( g4.) g8 |
  fs1 |
  \compressMMRests {
  R1*3 \bar "|."
  }

}

tenorwords = \lyricmode {
  A -- ve, a -- ve ve -- rum cor -- pus,
  na -- tum de Ma -- ri -- a Vir -- gi -- ne,
  ve -- re pas -- sum, im -- mo -- la -- tum
  in cru -- ce pro ho -- mi -- ne
  cu -- jus la -- tus per -- fo -- ra -- tum
  un -- da flu -- xit et san -- gui -- ne:
  es -- to no -- bis prae -- gus -- ta -- tum
  in mor -- tis ex -- a -- mi -- ne.
  in mor -- tis ex -- a -- mi -- ne.
 }

bassnotes = \relative c {
  \clef bass
  \compressMMRests {
    R1*2
  }
  d2^\sottovoce d |
  d d |
%5
  cs cs |
  d d \breathe |
  a2. a4 |
  d d cs cs |
  d2. d4 |
%10
  a1 \breathe |
  a'2. a4 |
  a(b) b2 |
  r2 e,4 e |
  es (fs) fs2 |
%15
  r2 b,2 |
  cs2 d4 d |
  e2. e4 |
  a,1 |
  \compressMMRests {
    R1*3
  }
  a'2. a4 |
  a (g) g2 |
  c,2. c4 |
%25
  % \override Slur.eccentricity = -0.5
  \override Slur.positions = #'(1.8 . 2.3)
  c4( f) f2 | \breathe
  \revert Slur.positions
  % \revert Slur.eccentricity
  f2. f4 |
  e( d) cs a |
  bf2( a4) gs |
  a2 r2 |
%30
  r1 |
  g'2. g4 |
  g( fs) e( a) |
  a2. a4 |
  a( g) fs b |
%35
  b2 a4 gs |
  a2 a, |
  b2 r |
  r a' |
  bf (a |
%40
  gs1 |
  g?2) fs4 \breathe b,4 |
  a2. a4 |
  d1 |
  \compressMMRests {
  R1*3 \bar "|."
  }

}

basswords = \lyricmode {
  A -- ve, a -- ve ve -- rum cor -- pus,
  na -- tum de Ma -- ri -- a Vir -- gi -- ne,
  ve -- re pas -- sum, im -- mo -- la -- tum
  in cru -- ce pro ho -- mi -- ne
  cu -- jus la -- tus per -- fo -- ra -- tum
  un -- da flu -- xit et san -- gui -- ne:
  es -- to no -- bis prae -- gus -- ta -- tum
  in mor -- tis ex -- a -- mi -- ne.
  in mor -- tis ex -- a -- mi -- ne.
 }

\score {
  \new ChoirStaff <<
    \new Staff
    \with { instrumentName = S }
    <<
      \new Voice = "soprano" <<
        \global
        \sopranonotes
      >>
      \new Lyrics \lyricsto "soprano" \sopranowords
    >>
    \new Staff
    \with { instrumentName = C }
    <<
      \new Voice = "alto" <<
        \global
        \altonotes
      >>
      \new Lyrics \lyricsto "alto" \altowords
    >>
    \new Staff
    \with { instrumentName = T }
    <<
      \new Voice = "tenor" <<
        \global
        \tenornotes
      >>
      \new Lyrics \lyricsto "tenor" \tenorwords
    >>
    \new Staff
    \with { instrumentName = B }
    <<
      \new Voice = "bass" <<
        \global
        \bassnotes
      >>
      \new Lyrics \lyricsto "bass" \basswords
    >>
  >>

  \layout {
    \context {
      \Score
      \override BarNumber.padding = #2


    }
    \context {
      \Staff


    }
  }
  \midi {
    \tempo 4=106
  }
}
