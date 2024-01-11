\version "2.24.3"
\language "english"

#(set-global-staff-size 17.5)

\paper {
  set-paper-size = "a4"
  top-margin = 10
  indent = 10
  max-systems-per-page = 4
  system-system-spacing.basic-distance = 10
  system-system-spacing.score-markup-spacing = 10
  % system-system-spacing.minium-distance = 8
  % system-system-spacing.padding = 2
  system-system-spacing.stretchability = 12
  % annotate-spacing = ##t

}

\header {
  title = "Cantabo Domino"
  % subtitle = "Lorem ipsum"
  composer = "Alessandro Grandi"
  opus = "(1590-1630)"
  % piece = "Lorem ipsum"
  copyright = \markup {
    \center-column {
      \line { "Engraving by Robert Garrigós" \with-url #"https://garrigos.cat" "https://garrigos.cat"}
      \line { "Creative Commons Attribution 4.0 International (CC BY 4.0)" }
    }
  }
}


global = {
  \overrideTimeSignatureSettings
  3/4        % timeSignatureFraction
  1/4        % baseMomentFraction
  1,1        % beatStructure
  #'()       % beamExceptions
  \key f \major
  % Change the style permanently
  \override Staff.TimeSignature.style = #'single-digit
  \time 3/4

}

allelujaCantus = \relative c' {
%alleluja
  d'8 c bf c d bf |
  c4. bf8 a4 |
  c8 bf a bf c a |
  bf4. a8 g4 |
  d'4. c8 bf4 |
  \time 6/4
  a4. g8 f4 e e2 |
  \time 3/4
  d2.\fermata|
  %alleluja end
}

cantus = \relative c' {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  % \set Score.currentBarNumber = #3
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)
  d8 e f g a bf |
  \time 6/4
  c4. bf8 a4 bf8 a g4. f8 |
  \time 3/4
  f4 f r |
  d'8 c bf c d bf |
  %5
  c4. bf8 a4 |
  bf8 a g a bf g |
  \time 6/4
  a4. g8 f4 g8 f e4. d8
  \time 3/4
  d4 d r4 |
  d4 e f |
  %10
  g a bf |
  c a c |
  \time 6/4
  d4. c16 bf a4 bf a4. a8 |
  \time 3/4
  g2\fermata r4 |
  \allelujaCantus
  %21
  d4 e f |
  g a bf |
  c a c |
  \time 6/4
   d4. c16 bf a4 bf a4. a8 |
  %25
  \time 3/4
  bf2 r4 |
  d4. d8 c bf |
  c2 a4 |
  bf4. bf8 a g |
  a4 a f |
  %30
  \time 6/4
  g8 a bf a g4 f e4. d8
  \time 3/4
  d2 f4 |
  \time 6/4
  g8 a bf a g4 f4 e4. d8 |
  \time 3/4
  d2\fermata r4 |
  \allelujaCantus \bar "||"
  \time 4/4
  r2 r4 d4 |
  d d8 e f4 f8 g |
  a2. g8 f |
  g2 g |
  %45
  r2 r4 d4 |
  g4 g8 a bf4 bf8 c |
  d2. g,8 fs |
  a2 a2 |
  r4 d,8 e f g a bf |
  %50
  c2~ c8 d16 c bf a g f |
  e4 f8 g g4. f8 |
  f1 |
  r4 c8 d e f g a |
  bf g bf c d2 |
  %55
  d,16 e f g a bf c a bf4 c8 d |
  a8. bf16 c8. bf16 a4. g8 |
  g1\fermata \bar "||"
  \time 3/4
  \allelujaCantus
  %65
  \time 4/4
  r4 f8 g a f a bf |
  c4 c8 c c4. b8 |
  c4. c,8 e f g g |
  g4. fs8 g4 bf8 c |
  d4 d8 d d4. cs8 |
  %70
  d4 a bf8 a c bf |
  a2 g |
  r4 a4 bf8 a c bf |
  a2 g2 \bar "||"
  \time 3/4
  \allelujaCantus
  \allelujaCantus
  \bar "||"
  \time 4/4
  r2 r16 d e f g a bf c |
  d4. c8 bf4. a8 |
  %90
  g2~g8 r16 a bf a g f |
  e4 f16 g a d, e2 |
  d1 \bar "|."
}

allelujaCantusText = \lyricmode {
  %alleluja
  Al - le - lu - ja, __ _ _
  Al - le - lu - ja, __ _ _
  Al __ _ _ _ _ _ le -- lu -- ja,
  %alleluja end
}

cantusText = \lyricmode {
  Can - ta - bo _ do -- mi -- no in - vi -- ta me -- a
  Can - ta - bo _ Do -- mi -- no
  Can - ta - bo _ do -- mi -- no in - vi -- ta me -- a
  in vi -- ta me -- a can -- ta -- bo,
  can -- ta __ _ _ _ bo Do -- mi -- no.
  \allelujaCantusText
  in vi -- ta me -- a can -- ta -- bo
  can -- ta __ _ _ _ bo Do -- mi -- no
  psal -- lam De -- o me -- o
  psal -- lam De -- o me -- o,
  quam -- di __ _ _ _ _ u fu -- e -- ro,
  quam -- di __ _ _ _ _ u fu -- e -- ro.
  \allelujaCantusText
  Ju -- cun -- dum sit e -- i e -- lo -- qui -- um me -- um;
  Ju -- cun -- dum sit e -- i e -- lo -- qui -- um me -- um;
  e -- go ve -- ro de -- lec -- ta __ _ _ _ _ _ _ _ bor in Do -- mi -- no.
  e -- go ve -- ro de -- lec -- ta -- bor,
  de -- lec -- ta __ _ _ _ _ _ _ _ _ _ bor
  in Do __ _ _ _ _ mi -- no.
  \allelujaCantusText
  De -- lec -- ta -- bor, de -- lec -- ta -- bor in Do -- mi -- no,
  in De -- o Je -- su me -- o, __ _
  de -- lec -- ta -- bor in Do -- mi -- no,
  in De -- o Je -- su me -- o,
  in De -- o Je -- su me -- o.
  \allelujaCantusText
  \allelujaCantusText
  Al __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ le __ _ _ _ _ lu -- ja
}

allelujaBassus = \relative c {
  %alleluja
  bf2 bf4 |
  f'2 f4 |
  f,2 f4 |
  g2 g4 |
  g2 g4 |
  \time 6/4
  d'2 d4 g,4 a2 |
  \time 3/4
  d2.\fermata |
  %alleluja end
}

allelujaBassus_bis = \relative c {
  %alleluja
  bf2 bf4 |
  f2 f4 |
  f2 f4 |
  g2 g4 |
  g2 g4 |
  \time 6/4
  d'2 d4 g,4 a2 |
  \time 3/4
  d2.\fermata |
  %alleluja end
}

bassus = \relative c {
  d2 d4 |
  \time 6/4
    a2 d4 bf4 c2 |
  \time 3/4
  f,2 f4 |
  bf2 bf4 |
  %5
  f'2 f4 |
  g2 g4 |
  \time 6/4
  d2 d4 bf g a |
  \time 3/4
  d2 d4 |
  d2 d4 |
  %10
  g,2 g4 |
  f2 f4 |
  \time 6/4
  bf4. c8 d4 g, d'2 |
  \time 3/4
  g,2.\fermata
  \allelujaBassus
  %21
  d'2 d4 |
  g,2 g4 |
  f2 f4 |
  \time 6/4
  bf2 f'4 d ef f |
  %25
  \time 3/4
  bf,2 r4 |
  bf2 bf4 |
  f'2 f4 |
  g2 g4 |
  d2 d4 |
  %30
  \time 6/4
  bf4 g a bf g a |
  \time 3/4
  d2 bf4 |
  \time 6/4
  bf4 g a bf g a |
  \time 3/4
  d2.\fermata |
  \allelujaBassus_bis
  %41
  \time 4/4
  d1~ |
  d1~ |
  d1 |
  c2. bf8 a |
  %45
  g1~ |
  g1~ |
  g1 |
  d'1 |
  d1 |
  %50
  a2 f2 |
  c'1 |
  f2. e8 d |
  c1 |
  g2 bf4 a8 g |
  d'2 g,2 |
  d'1 |
  g,1\fermata \bar "||"
  \time 3/4
  \allelujaBassus
  \time 4/4
  d'1 |
  a4 f g2 |
  c1 |
  d2 g, |
  g a |
  %70
  d bf4 g4 |
  d'2 bf4 g4 |
  d'2 g, |
  d' g, |
  \time 3/4
  \allelujaBassus
  \allelujaBassus
  \bar "||"
  \time 4/4
  d'1 |
  fs2 g |
  %90
  g,1 |
  a1 |
  d1 \bar "|."
}

allelujaXifrat = \figuremode {
  %alleluja
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  \time 6/4
  s2 s2 <4>4 <_+>4 |
  \time 3/4
  <_+>2. |
  %alleluja end
}

xifrat = \figuremode {
  \set figuredBassAlterationDirection = #RIGHT
  s2. |
  \time 6/4
  s2. s4 <4>4 <3>4 |
  \time 3/4
  s2. |
  s2. |
  %5
  s2. |
  s2. |
  \time 6/4
  s2. <6>4 <6>4 <_+>4
  \time 3/4
  s2. |
  s2. |
  %10
  s2. |
  s2. |
  \time 6/4
  s1 <4>4 <3+>4
  \time 3/4
  s2. |
 \allelujaXifrat
 %21
  s2. |
  s2. |
  s2. |
  \time 6/4
  s2. <6>4 s2 |
  %25
  \time 3/4
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  %30
  \time 6/4
  <6>4 s4 <_+>4 s4 s4 <_+>4 |
  \time 3/4
  s2. |
  \time 6/4
  s2 <_+>4 s2. |
  \time 3/4
  <_+>2. |
  \allelujaXifrat
  \time 4/4
  <_!>1 |
  s1 |
  s2 <6>2 |
  s1 |
  %45
  s1 |
  s1 |
  s2 <6>2 |
  <_+>1 |
  <_!>1 |
  %50
  s1 |
  <3>4 <4>2 <3>4 |
  s1 |
  s1 |
  s2 <6>2 |
  %55
  s1 |
  <_+>4 <4>2 <_+>4 |
  <_!>1 |
  \time 3/4
  \allelujaXifrat
  %65
  \time 4/4
  <_!>1 |
  s2 <4>4 <_+>4 |
  s1 |
  <4>4 <_+>4 s2 |
  s2 <4>4 <_+>4 |
  %70
  <_+>2 <6>4 s4 |
  <4>4 <_+>4 <6>4 s4 |
  <4>4 <_+>4 s2 |
  <4>4 <_+>4 <_!>2 |
  \time 3/4
  \allelujaXifrat
  \allelujaXifrat
  <_!>1 |
  <6>2 s2 |
  %90
  s2 <6>2 |
  <_+>4 <4>2 <_+>4 |
  <_+>1
}

\score {
  <<

    \new Staff {

      \global

      \cantus
    }
    \addlyrics \cantusText

    \new Staff {
      \global
      \clef bass
      \bassus
    }

    \new FiguredBass \xifrat

  >>

}

\layout {
  \context {
    \Score
  }
  \context {
    \Staff
  }
}
