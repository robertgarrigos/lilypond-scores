\version "2.24.2"
\language "english"

\paper {
  #(set-paper-size "a5landscape")
  #(define top-margin (* 1 cm))
  #(define indent (* 0.5 cm))
}

\header {
  title = "The Castle of Dromore"
  composer = "Traditional Irish"
  %piece = "Hornpipe"
  copyright = \markup {
    \center-column {
      \line { "Engraving by Robert Garrigós https://garrigos.cat"}
      \line { "Creative Commons Attribution 4.0 International (CC BY 4.0)" }
    }
  }
}


global = {
  \overrideTimeSignatureSettings
        6/8        % timeSignatureFraction
        1/8        % baseMomentFraction
        2,1, 2, 1        % beatStructure
        #'()       % beamExceptions
  \key d \major
  \time 6/8
  \partial 8
  
}

tune = \relative d' {
  \global
  % Music follows here.
  fs16 (g) | a4 a8 a4 a8 b4 a8 a (b) cs d4 g,8 fs4 g8 a4.~ a4 b16 (cs) \break d4 d,8 d4 d8 e4 d8 d (e) fs
  g4 b8 a4 g8 fs4.~fs4 b16 (cs) \break d8 (e) d cs (d) cs b (cs) b a4 g8 fs4 a8 g (fs) e d4. fs4 (a8)
  \break g a g e4 g8 fs4 d8 fs4 a8 g a g e4 cs8 d4.~ d4
}

words = \lyricmode {
  Oc -- to -- ber winds la -- ment a -- round the cast -- le of Dro -- more. __
  Yet  peace is in its lof -- ty halls, \markup { \italic a } \markup { \italic pahis } -- \markup { \italic de } \markup { \italic ban } \markup { \italic a } \markup { \italic sór. } __  
  Though __ Au -- tumn kinds may droop and die a bud of springs are you.
  Sing __ hush -- a -- bye, lul lul, lo, lo, lan, sing hush -- a -- bye lul, lul, loo. __
}



\score {
  \new Staff {
    \new Voice {
      \tune
    }
    \addlyrics {
      \words
    }
  }
  \layout {
   }
  \midi {
    \tempo 4=104
  }
}