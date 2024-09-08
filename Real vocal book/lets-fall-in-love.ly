\version "2.25.18"
\language "english"
#(set-global-staff-size 18)
% #(ly:font-config-display-fonts)

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))

\include "jazzchords.ily"
\include "lilyjazz.ily"
\include "jazzextras.ily"




title = #"Let's fall in love"
composer = #"-Koheler/Arlen"
meter = #""

realBookTitle = \markup {
  \score {
    {
      \override TextScript.extra-offset = #'(0 . -4.5)
      s4
      s^\markup {
        \fill-line {
          \fontsize #1 \lower #1 \rotate #7 \concat { " " #meter }
          \fontsize #8
          \override #'(offset . 7)
          \override #'(thickness . 6)
          \underline \larger \larger #title
          \fontsize #1 \lower #1 \concat { #composer " " }
        }
      }
      s
    }
    \layout {
      \omit Staff.Clef
      \omit Staff.TimeSignature
      \omit Staff.KeySignature
      ragged-right = ##f
    }
  }
}



theNotes = \relative c' {
  \set Staff.midiInstrument = "flute"
  \key c \major
  % \time 4/4
  % \numericTimeSignature
  \showStartRepeatBar \bar "[|:"
  \repeat "volta" 2 {
    | c'2 g4 e
    | a2 g8 b d c~
    | c2 g4 e
    | a2 f8 e d g~
    | g g g4 e8 d c f~
    | f2 d8 c b e~
  }
  \alternative {
    {
      | e4. e8 e2~
      | e1
    }
    {
      | e4. \repeatTie e8 e2~
      | e1

    }
  }
  \bar "||"
  | e'1 \tuplet 3/2 { d4 c b } a4 e8 f
  | fs2 b~
  | b a
  | d1
  | \tuplet 3/2 { c4 b a } g e8 f
  | g2 bf
  | a b! \bar "||"
  | c2 g4 e
  | a2 g8 b d c~
  | c2 g4 e
  | a2 f8 e d g~
  | g g g4 \tuplet 3/2 { e4 d c }
  | a'2 f8 e d c'~
  | c1~
  | c2 r2 \bar "|."


  \label #'lastPage

}

theChords = \chordmode {

  \repeat "volta" 2 {
    c2:6 e:dim7 d:m7 g4:7 f:dim7
    c2:6 e:dim7 d:m7 g:7
    c a:m7 d:m7 g:7
  }
  \alternative {
    {
      e:7 a:7 d:7 d4:m7 g:7
    }
    {
      b1:m e:7
    }
  }
  a1:m7 a:m7 d:7 d2:7 c:m6 g1:6 g:6
  g2:6 ef:m7 d:m7 g:7 c:6 e:dim7 d:m7 g4:7 f:dim7
  c2:6 a:m7 d2:m7 g:7 c a:m7 d:m7 g:7 c1


}

lletra = \lyricmode {

  <<
    {
      E -- na -- mo -- rem-nos
    ves per -- què no ho~hem de fer?
    per es -- ti -- mar~es -- tem fets;
    'nem -- ho~a pro -- var sen -- se cap por de res?
    }

    \new Lyrics {
      \set associatedVoice = "lletra"
      Tan -- quem els ulls
      per som -- mi -- ar~el pa -- ra -- dís,
      ben poc sab -- em d'ell; _
      i mal -- grat tot
      po -- dem pro -- var~els _

      \repeat unfold 2 { \skip 1 }
        dos junts.
    }
  >>
  Qui sap _ __ si som l'un per l'al -- tre,
  De -- ixem que~els nos -- tres cors des -- co -- bre -- ixin l'a -- mor!
  E -- na -- mo -- rem-nos
    ves per -- què no ho~hem de fer?
    És ara o mai, no creus,
    jo -- ves com som?
    E -- na -- mo -- rem-nos!
}

theWords = \lyricmode {

  <<
    {
      Let's fall in love
      Why shoul -- dn't we fall in love?
      Our hearts are made of it; let's take a chance
      Why be a -- fraid of it?
    }

    \new Lyrics {
      \set associatedVoice = "theWords"
      Let's close our eyes
      And make our own pa -- ra -- dise
      Lit -- tle we know of it; still, we can try
      To make a go


      \repeat unfold 2 { \skip 1 }
      _ of it.
    }
  >>
  We might have been meant
  for each o -- ther
  To be or not to be
  let our hearts dis -- co -- ver
  Let's fall in love
  Why shoul -- dn't we fall in love?
  Now is the time for it, while we are young
  Let's fall in love


}

\book {
  \header {
    title = \realBookTitle
    tagline = ##f
    copyright = \markup {
      \center-column {
        \line { "Gravat musical i traducció per Robert Garrigós" \with-url #"https://garrigos.cat" "https://garrigos.cat" \with-url #"https://creativecommons.org/licenses/by/4.0/deed.ca" "(CC BY 4.0)" "amb" \with-url #"https://lilypond.org" "Lilypond" "el" \data }
        % \line { "Creative Commons Attribution 4.0 International (CC BY 4.0)" }
      }
    }
  }

  \score {
    <<
      \new ChordNames \theChords
      \new Voice = soloist \theNotes
      \new Lyrics \lyricsto soloist \lletra
      \new Lyrics \lyricsto soloist \theWords
    >>
    \layout {
      \override Score.Clef #'break-visibility = #'#(#f #f #f)  % make only the first clef visible
      \override Score.KeySignature #'break-visibility = #'#(#f #f #f)  % make only the first time signature visible
      \override Score.SystemStartBar #'collapse-height = #1  % allow single-staff system bars
    }
    \midi {
      \tempo 4 = 110
    }
  }

  \paper {
    #(set-paper-size "a4")
    %  paper-height = 11\in
    %  paper-width = 8.5\in
    indent = 0\mm
    between-system-space = 2.5\cm
    between-system-padding = #0
    %%set to ##t if your score is less than one page:
    ragged-last-bottom = ##f
    ragged-bottom = ##f
    markup-system-spacing = #'((basic-distance . 23)
                               (minimum-distance . 8)
                               (padding . 1))
    oddFooterMarkup = \markup \override #'(fonts . ((serif . "Linux Libertine O"))) {
      \center-column {
        \line { \title "- pàgina" \fromproperty #'page:page-number-string "de" \concat {\page-ref #'lastPage "0" "?"} }
        \fill-line { \fromproperty #'header:copyright }
      }
    }
    evenFooterMarkup = \markup \override #'(fonts . ((serif . "Linux Libertine O"))) {
      \center-column {
        \line {  \title "- pàgina" \fromproperty #'page:page-number-string "de" \concat {\page-ref #'lastPage "0" "?"} }
        \fill-line { \fromproperty #'header:copyright }
      }
    }
  }
}
