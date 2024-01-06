\version "2.24.2"
\language "english"

\paper {
  #(set-paper-size "a4")
  #(define top-margin (* 0.4 in))
  #(define indent (* 0.2 in))
}

\header {
  title = "The fields of Athenry"
  composer = "Traditional Irish"
  piece = ""
  copyright = \markup {
    \center-column {
      \line { "Engraving by Robert Garrigós" \with-url #"https://garrigos.cat" "https://garrigos.cat"}
      \line { "Creative Commons Attribution 4.0 International (CC BY 4.0)" }
    }
  }
}

global = {
  \overrideTimeSignatureSettings
        4/4        % timeSignatureFraction
        1/4        % baseMomentFraction
        2,2        % beatStructure
        #'()       % beamExceptions
  \key g \major
  \time 4/4
  \partial 4

}

tune = \relative c' {
  \global
  % Music follows here.
  d8 d | d4. d8 g4 a | b2. b4 | c4. c8 c4 d | b2~ b8( c b g) | a2. r4 | d4 d d b | c4. d8 c4 b | a1~| a4 r4 b c | 4. d8 d4 b | c2. d8 c | b4. a8 g( a) b( c) | a2. d,8 d | a'4. a8 b4 c | b4 a g4. fs8 | g1~ | g2 r2| d'1 | e2. d4 | g,2~ g8 d g a | b2. a4 | g4. d8 g4 a | b2 c4 d | a1~| a4 r b( c) | d4. d8 d4 b | c2. d8 c | b4. a8 g( a~ a) b | a2. d,8 d | a'4. a8 b4 c | b4. a8 g4 fs | g1~| g2. \bar "|."

}

words = \lyricmode {
  By a lone -- ly pri -- son wall
I heard a young girl ca -- lling
Mi -- chael, they have ta -- ken you a -- way
For you stole Tre -- ve -- lyans corn
So the young might see the morn
Now a pri -- son ship lies wai -- ting in the bay

Low lie the fields of A -- then -- ry
Where once we watched the small free birds fly
Our love was on the wing
We had dreams and songs to sing
It's so lone -- ly round the fields of A --then -- ry
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
    \tempo 4=140
  }
}

\markup {
  \vspace #4
  % \fill-line {
    \hspace #30 % mou la columna a fora del marge esquerra;
    \fontsize #2
    \column {
      "By a lonely prison wall"
      "I heard a young man calling"
      "Nothing matters, Mary, when you're free"
      "Against the famine and the crown"
      "I rebelled; they cut me down"
      "Now you must raise our child with dignity"
      \vspace #2
      "By a lonely harbour wall"
      "She watched the last star falling"
      "As the prison ship sailed out against the sky"
      "For she'll live and hope and pray"
      "For her love in Botany Bay"
      "It's so lonely round the fields of Athenry"
    }
    % \hspace #1 % afegeix espai horitzontal entre les columnes;

  % }
}
