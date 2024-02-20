\version "2.24.3"
\language "english"

#(set-global-staff-size 17.5)
data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


\paper {
  set-paper-size = "a4"
  top-margin = 10
  left-margin = 15
  indent = 10
  max-systems-per-page = 6
  score-system-spacing =
  #'((basic-distance . 12)
     (minimum-distance . 6)
     (padding . 1)
     (stretchability . 12))
  markup-system-spacing =
  #'((minimum-distance . 20))
  system-system-spacing =
  #'((minimum-distance . 20))
  % annotate-spacing = ##t
  % print-all-headers = ##t
  % print-first-page-number = ##t
  oddFooterMarkup = \markup {
    \center-column {
      \line { \fromproperty #'header:title "- pàgina" \fromproperty #'page:page-number-string "de" \concat {\page-ref #'lastPage "0" "?"} }
      \fill-line { \fromproperty #'header:copyright }
    }
  }
  evenFooterMarkup = \markup {
    \center-column {
      \line { \fromproperty #'header:title "- pàgina" \fromproperty #'page:page-number-string "de" \concat {\page-ref #'lastPage "0" "?"} }
      \fill-line { \fromproperty #'header:copyright }
    }
  }
}

\header {
  title = "Dereinst, Gedanke mein, Op. 48 nº 2"
  subtitle = "Un dia, pensament"
  composer = "E. Grieg (1843-1907)"
  arranger = "E. von Geibel (1815-1884)"
  % instrument = "localinstrument"
  % meter = "localmetre"
  % opus = "localopus"
  % piece = "localpiece"
  poet = "Trad. Robert Garrigós"
  tagline = ##f
  copyright = \markup {
    \center-column {
      \line { "Gravat musical per Robert Garrigós" \with-url #"https://garrigos.cat" "https://garrigos.cat" \with-url #"https://creativecommons.org/licenses/by/4.0/deed.ca" "(CC BY 4.0)" "amb" \with-url #"https://lilypond.org" "Lilypond" "el" \data }
      % \line { "Creative Commons Attribution 4.0 International (CC BY 4.0)" }
    }
  }
}

global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key gs \minor
  \time 4/4
  \tempo "Molto Andante"
  \set Score.tempoHideNote = ##t
  \tempo 4=60
  \set PianoStaff.connectArpeggios = ##t

}


melody = \relative c' {
  \clef treble
  \global

  | R1
  | R1
  | r4 ds4^\p fs4. fs8
  | gs4^\< b b2\!
  | r4 as gs4.^\> gs8\!
  | fs2 r4 gs^\markup {\italic "cresc. ed agitato"}
  | fs8.^\<\! es16^\> es4\! r8 e!8^\< e fs
  | \time 2/4 \!e4 ds
  | \time 4/4 r8 css8^\f^\markup {\italic "motlo ten."} css\( as'\) as4^\dim\( ds,\)
  | r4 as'^\> as4. as8\!
  | as2^\pp r8 b^- b^- cs^-^\>
  | cs2^- r8 b b\! b
  | as2~^\ppp as4. as8
  | << as4.\( {s8^\<^\markup {\italic " ben ten."} s8 \!s8^\>}>> ds,8\)\! ds2
  | R1
  | R1
  | r4 ds4^\p fs4. fs8
  | gs4^\<( b) b2\!
  | r4 as^> r4 gs8^\> gs8\!
  | <<
    { \voiceOne fs2 }
    \new Voice = "split1" { \voiceTwo \tweak font-size -3 fs4 \tweak font-size -4 fs}
  >>
  \oneVoice
  r8 fs8^\markup {\italic "cresc. ed agitato"} fs ^\<gs
  | fs4\! ^\> es4\! r8 e!8^\< e8. fs16
  | \time 2/4 \!e4^\( ds\)
  | \time 4/4 r8 css8^\f^\markup {\italic "molto ten."} css\( as'\) as4^\dim\( ds,\)
  | r4 as'^\> as4. as8\!
  % | as2^\pp r8 b^- b^- cs^-^\>
  | | <<
    { \voiceOne as2^\pp }
    \new Voice = "split1" { \voiceTwo \tweak font-size -3 as4 \tweak font-size -4 as}
  >>
  \oneVoice
  r8 b^- b^- cs^-^\>
  | cs4^- cs4 r8 b b\! b
  | as2~^\ppp as4. as8
  | << as4.\( {s8^\<^\markup {\italic " ben ten."} s8 \!s8^\>}>> ds,8\)\! ds2
  | R1
  | R1
  | R1
}

catala = \lyricmode {
  Un di -- a,
  pen -- sa -- ment,
  tran -- quil se -- ràs.

  L’a -- mor ar -- dent
  no~et deix re -- pòs, __ _
  en fre -- da ter -- ra
  des -- can -- sa -- ràs,
  man -- cat d’a -- mor
  sen -- se do -- lor,
  en pau se -- ràs.

  A -- llò que~en vi -- da
  mai vas tro -- bar,
  a -- llò que~en vi -- da
  mai vas tro -- bar, __ _
  quan si -- gui fo -- sa,
  se’t do -- na -- rà,
  sen -- se fe -- ri -- des
  sen -- se do -- lor,
  en pau se -- ràs.
}

alemany = \lyricmode {
  Der -- einst,
  Ge -- dan -- ke mein,
  wirst ru -- hig sein.

  Läßt Lie -- bes -- glut
  dich still nicht wer -- den,
  in küh -- ler Er -- den,
  da schläfst du gut,
  dort oh -- ne Lieb'
  und oh -- ne Pein
  wirst ru -- hig sein.

  Was du im Le -- ben
  nicht hast ge -- \once \override LyricText.self-alignment-X = #LEFT "fun - den,"
  was du im Le -- ben
  nicht hast ge -- fun -- den,
  wenn es ent -- schwun -- den,
  wird's dir ge -- \once \override LyricText.self-alignment-X = #LEFT "ge - ben,"
  sann oh -- ne Wun -- den
  und oh -- ne Pein
  wirst ru -- hig sein.
}

upper = \relative c'' {
  \clef treble
  \global
  % \stemNeutral
  | <<
    \new Voice
    { \voiceOne  <b ds>2 (\once \override NoteColumn.force-hshift = #-1 fs'2 | \once \override NoteColumn.force-hshift = #-1 gs2  <ds b'>)}
    { \voiceTwo   s2 \once \override NoteColumn.force-hshift = #-1.5 cs4\< ds\! | \once \override NoteColumn.force-hshift = #-1.4 e4\> cs\!}
  >>
  | <<
    {ds,2 fs | gs2 b}
    \\
    {b,2\p cs4\< ds4 | e2\! ds4 es}
  >>
  | <<
    \new Voice
    { \voiceOne as2 gs | fs1~\( | fs4 es\) e!2~^>\(\arpeggio | e4 ds4\) }
    { \voiceTwo fs2 e!~ | e4 ds <b d!>2_>\arpeggio | <gs cs>2 <a! c!>2\arpeggio\< | <fs b>2\! }
  >>
  | \time 4/4 \stemUp <fss as! css>2^> <fss as ds>2_\dim
  | e'2\> ds\!
  | \once \override DynamicText.X-offset = #-1.7 css2^\=1(\pp ds4^(\< es)\=1)\!_\markup {\italic poco}
  | fs2^\=1(\> es4^\=2( ds\=2)\=1)\!
  | ds2^~^(\ppp ds4 css)
  | <<
    {ds2 \change Staff = "lower" <ds, b'>4( <es cs'>4)}
    \\
    {s2 \change Staff = "lower" gs2}
  >>
  %15
  | <<
    {
      \change Staff = "lower" <fss as ds>2_\markup {\italic "m.d."}
      \change Staff = "upper" \once \override NoteColumn.force-hshift = #.5 <ds'' b'>4(^\markup{\italic "m.d."} <es cs'>4)
    }
    \\
    {s2 gs2}
  >>
  | <fss as ds>2 <fss,, as ds>2
  | <<
    {ds'2 fs | gs2 b}
    \\
    {b,2\p cs4\< ds4 | e2\! ds4 es}
  >>
  | <<
    \new Voice
    { \voiceOne as2 gs | fs1~\( | fs4 es\) e!2~^>\(\arpeggio | e4 ds4\) }
    { \voiceTwo fs2 e!~ | e4 ds <b d!>2_>\arpeggio | <gs cs>2 <a! c!>2\arpeggio\< | <fs b>2\! }
  >>
  | \time 4/4 \stemUp <fss as! css>2^> <fss as ds>2_\dim
  | e'2\> ds\!
  | \once \override DynamicText.X-offset = #-1.7 css2^\=1(\pp ds4^(\< es)\=1)\!_\markup {\italic poco}
  | fs2^\=1(\> es4^\=2( ds\=2)\=1)\!
  | ds2^~^(\ppp ds4 css)
  | <<
    {ds2 \change Staff = "lower" <ds, b'>4( <es cs'>4)}
    \\
    {s2 \change Staff = "lower" gs2}
  >>
  | <<
    {
      \change Staff = "lower" <fss as ds>2_\markup {\italic "m.d."}
      \change Staff = "upper" \once \override NoteColumn.force-hshift = #.5 <ds'' b'>4(^\markup{\italic "m.d."} <es cs'>4)
    }
    \\
    {s2 gs2}
  >>
  | <fss as ds>2  <fss,, as ds>2^-^(
  | \once \override Script.Y-offset = #1.5 <fss as ds>1^-) \bar "|."

}

lower = \relative c {
  \clef bass
  \global

  | \change Staff = "upper" \stemDown gs''2\pp  <fs as>
  | \change Staff = "upper" \stemDown <e b'> <b fs' b>
  | \change Staff = "lower" gs2 <fs as>
  | <e b'~>2 <gs b>2
  %5
  | <<
    \new Voice
    { \voiceOne cs2~ cs4 b | as2 }
    { \voiceTwo fs2 cs | ds2 }
  >>

  \stemUp <gs, d'!>2_>\arpeggio^\markup{\whiteout \italic "cres. ed agitato"}
  | cs2 <fs, c'!>2\arpeggio_>
  | \time 2/4 b2
  | \time 4/4 <e, as!>2^>\f^\markup {\italic "molto ten."} <ds as'>2
  %10
  | <<
    {\crossStaff {<fss' as>2 <fss as>2}}
    \\
    {<css, as'>2 <ds as'>2}
  >>
  | <<
    { \crossStaff { <es' as>2 } <gs b>2 }
    \\
    { <as,, as'>2( <gs gs'>2) }
  >>
  | <<
    {<as'' cs>2 <gs b>2}
    \\
    {<fs,, fs'>2( <gs gs'>2)}
  >>
  | <<
    {<fss'' as>2( <es as>2)}
    \\
    {<as, as,>1}
  >>
  |<<
    {\crossStaff {<fss' as>2} s2}
    \\
    {<ds,, ds'>1}
  >>
  %15
  | <<
    {
      \change Staff = "upper" as''''4.^-(^\markup{\italic "m.s."} ds,8^-)  \stemDown \once \override NoteColumn.force-hshift = #.1 b'4 <es, cs'>4
      | s1
    }
    \\
    { s2 \change Staff = "upper" \once \override NoteColumn.force-hshift = #.5 gs2 | s1}
    \\
    { s2 \change Staff = "upper" \stemDown \once \override NoteColumn.force-hshift = #.8 ds2_~ | \change Staff ="upper" \stemDown <ds fss as ds>2 \change Staff = "lower" \stemUp <ds,, as' ds>2}
  >>
  | \change Staff = "lower" gs'2 <fs as>
  | <e b'~>2 <gs b>2
  %20
  | <<
    \new Voice
    { \voiceOne cs2~ cs4 b | as2 }
    { \voiceTwo fs2 cs | ds2 }
  >>

  \stemUp <gs, d'!>2_>\arpeggio^\markup{\whiteout \pad-markup #0.5 \italic "cres. ed agitato"}
  | cs2 <fs, c'!>2\arpeggio_>
  | \time 2/4 b2
  | \time 4/4 <e, as!>2^>\f^\markup {\italic "molto ten."} <ds as'>2
  | <<
    {\crossStaff {<fss' as>2 <fss as>2}}
    \\
    {<css, as'>2 <ds as'>2}
  >>
  %25
  | <<
    { \crossStaff { <es' as>2 } <gs b>2 }
    \\
    { <as,, as'>2( <gs gs'>2) }
  >>
  | <<
    {<as'' cs>2 <gs b>2}
    \\
    {<fs,, fs'>2( <gs gs'>2)}
  >>
  | <<
    {<fss'' as>2( <es as>2)}
    \\
    {<as, as,>1}
  >>
  |<<
    {\crossStaff {<fss' as>2} s2}
    \\
    {<ds,, ds'>1}
  >>
  | <<
    {
      \change Staff = "upper" as''''4.^-(^\markup{\italic "m.s."} ds,8^-)  \stemDown \once \override NoteColumn.force-hshift = #.1 b'4 <es, cs'>4
      | s1 | s1
    }
    \\
    { s2 \change Staff = "upper" \once \override NoteColumn.force-hshift = #.5 gs2 | s1 | s1}
    \\
    { s2 \change Staff = "upper" \stemDown \once \override NoteColumn.force-hshift = #.8 ds2_~ | \change Staff ="upper" \stemDown <ds fss as ds>2 \change Staff = "lower" \stemUp <ds,, as' ds>2_-_( <ds as' ds>1_-)}
  >>


  \label #'lastPage
}

\score {
  <<
    \new Voice = "mel" { \autoBeamOff \melody }
    % \new Lyrics \lyricsto mel \text
    \new Lyrics \lyricsto "mel" \catala
    \new Lyrics \lyricsto "mel" \alemany
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
    \context { \PianoStaff \consists "Span_stem_engraver"}
  }
  \midi { }
}
