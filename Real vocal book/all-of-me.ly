\version "2.25.18"
\language "english"
#(set-global-staff-size 22)
% #(ly:font-config-display-fonts)

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))

\include "jazzchords.ily"
\include "lilyjazz.ily"
\include "jazzextras.ily"


title = #"All of me"
composer = #"-Simons & Marks"
meter = #" (Med. Swing)"

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
  \showStartRepeatBar \bar "[|:"
  \repeat "volta" 2 {
    c'4 g8 e ~ e2 ~
    e2 \times 2/3 { c'4 d c }
    b4 gs8  e ~ e2 ~
    e1 \break
    a4. g8 e2 ~
    e4 ds e8 bf' a4
    g2 f2 ~
    f1 \break
    e4. ef8 d2 ~
    d2  e8 gs c4
    d2 c2 ~
    c1 \break
    b4. bf8 a2 ~
    a2 a8 d b4
    a1
    b1 \bar "||" \break

    c4 g8 e ~ e2 ~
    e2 \times 2/3 { c'4 d c }
    b4 gs8  e ~e2 ~
    e1 \break
    a4. g8 e2 ~
    e4 ds e8 bf' a4
    g2 f2 ~
    f1 \break
  }
  \alternative {
    {
      d'2 c4 b
      d2. c4
      b2 e,4  g4
      b2. a4 \break
      c2 a4 c
      e2 e2
      c1 ~
      c1 \bar ":|][|:" \break
    }
    {
      d2 c4 b
      d2. c4
      b4 b4 e,4 g4
      b2. a4 \break
      c2 a4 c
      e2 e2
      c1
      ~c1
      \bar ":|]"
    }
  }
\label #'lastPage

}

theChords = \chordmode {

  \repeat "volta" 2 {
    c1:maj c1:maj e:7 e:7 |
    a:7 a:7 d:m7 d:m7 |
    e:7 e:7 a:m7 a:m7 |
    d:7 d:7 d:m7 g:7 |
    c1:maj c1:maj e:7 e:7 |
    a:7 a:7 d:m7 d:m7 |
  }
  \alternative {
    {
      f1 f:m c2:maj e:m7 a1:7 |
      d:m7 g:7 c2:6 ef:dim d2:m7 g:7 |
    }
    {
      f1 f:m c2:maj e:m7 a1:7 |
      d:m7 g:7 c1:6 c1:6 |
    }
  }


}

lletra = \lyricmode {

  Tot de mi,
  Per què no~em prens del tot?
  Que no veus?
  sen -- se tu no sóc res

  Pren -- me~els lla-vis
  Me'n vull des -- fer d'ells
  Pren -- me~els braços
  Ja no~en faig res d'ells

  Sen -- se tu
  Ja no sé com plo -- rar
  Sen -- se tu
  no sé com ti -- rar~en -- da-vant.

  % first repeat
  Vas pren -- dre~el tros
  que fou el meu cor,
  per què no~em prens tot de mi?

  % second repeat
  Prens el mi -- llor
  per què no~em prens del tot,
  per què no~em prens tot de mi?
}

theWords = \lyricmode {
  All of me
  Why not take all of me
  Can't you see
  I'm no good with -- out you

  Take my lips
  I want to lose them
  Take my arms
  I ne -- ver use them

  Your Good -- bye
  Left me with eyes that cry
  How can I go on dear with -- out you

  % first repeat
  You took the part
  That once was my heart
  So why not take all of me

  % second repeat
  You took the best
  So why not take the rest
  So Ba -- by take all of me.


}

\book {
  \header {
    title = \realBookTitle
    tagline = ##f
    copyright = \markup {
      \center-column {
        \line { "Gravat musical i traducció per Robert Garrigós" \with-url #"https://garrigos.cat" "https://garrigos.cat" \with-url #"https://creativecommons.org/licenses/by/4.0/deed.ca" "(CC BY 4.0)" "el" \data }
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
