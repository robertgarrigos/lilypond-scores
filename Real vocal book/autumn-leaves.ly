\version "2.25.18"
\language "english"
#(set-global-staff-size 18)
% #(ly:font-config-display-fonts)

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))

\include "jazzchords.ily"
\include "lilyjazz.ily"
\include "jazzextras.ily"




title = #"Autumn leaves"
composer = #"-Johnny Mercer"
meter = #" (Med. Jazz)"

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
  \key e \minor

  | r4 e4 fs g
  | c2 c~
  | c4 d, e fs
  | b1~ \break
  | b4 c, d e
  | a2 a~
  | a4 b, cs ds
  | g1 \break
  | r4 e4 fs g
  | c2 c~
  | c4 d, e fs
  | b2 b~ \break
  | b4 c, d e
  | a1~
  | a4 fs a g
  | e2 e~ \break
  | e4 r4 ds e
  | fs b, fs'2~
  | fs4 fs e fs
  | g1~ \break
  | g4 g fs g
  | a1~
  | a4 d, d' c
  | b1~ \break
  | b4 r4 as b
  | c c a a
  | fs2. c'4
  | b2 b2~ \break
  | b2. e,4
  | a2. g4
  | fs2 g4 b,
  | e1 \bar ":|]"

\label #'lastPage

}

theChords = \chordmode {

  e1:m a:m7 d:7 g:maj7 c:maj7 fs:m7.5- b:7 e:m
  e:m a:m7 d:7 g:maj7 c:maj7 fs:m7.5- b:7 e:m
  e:m fs:m7.5- b:7.9- e:m e:m a:m7 d:7 g:maj7
  g:maj7 fs:m7.5- b:7.9- e2:m7 ef:7 d:m7 df:7
  c1:maj7 b:7.9- e:m


}

lletra = \lyricmode {

  Les fu -- lles mor -- tes
  de la tar -- dor
  ca -- uen ab -- sor -- tes
  sen -- se re -- mor.

  Veig els teus lla -- vis,
  tes gal -- tes be -- lles,
  les te -- ves mans
  en -- tre les me -- ves.

  Des que vas mar -- xar
  els dies són llargs
  i ben a -- viat
  l'hi -- vern vin -- drà.

  % I t'e -- nyo -- ro de no dir,
  Com em sen -- to e -- nyo -- rat
  a -- mor meu,
  quan la tar -- dor
  % ja~és a -- quí.
  ha tor -- nat.

}

theWords = \lyricmode {
  The fall -- ing leaves _
  drift by the win-dow,
  the au -- tumn leaves _
  of red and gold.


  I see your lips, _
  the sum -- mer kiss -- es,
  the sun -- burned hands
  I used to hold. _


  Since you went a -- way
  the days grow long.
  And soon I'll hear
  old wint -- ter's song.


  But I miss you most of all,
  my dar -- ling,
  when au -- tumn leaves
  start to fall.


}

\book {
  \header {
    title = \realBookTitle
    tagline = ##f
    copyright = \markup {
      \center-column {
        \line { "Gravat musical i text per Robert Garrigós" \with-url #"https://garrigos.cat" "https://garrigos.cat" \with-url #"https://creativecommons.org/licenses/by/4.0/deed.ca" "(CC BY 4.0)" "amb" \with-url #"https://lilypond.org" "Lilypond" "el" \data }
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
