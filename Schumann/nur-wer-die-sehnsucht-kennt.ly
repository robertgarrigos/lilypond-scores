\version "2.25.18"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key g \minor
  \time 3/4
  \tempo "A poc a poc, molt sostingut"
  \set Score.tempoHideNote = ##t
  \tempo 4=63

}

up = {
  \change Staff = "upper"
  \stemDown
}

down = {
  \change Staff = "lower"
  \stemUp
}


melody = \relative c'' {
  \clef treble
  \global

  | r4 bf4 a8 g
  | ef'8. d16 d4 r4
  | r4 c g8 bf
  | bf4 a r8 a
  | a4. a8 ef' ef
  | a,4. a8 bf8. d16
  | d4 c ef~^\f
  | ef^\> d\! bf
  | g8. a16 bf4 ef~^\f
  | ef^\> d\! bf
  | \after 16 ^\< \after 8. \> \after 4 \! a g r4
  | g^\markup{\italic{"Més ràpid."}}^\< g8 g c b\!
  | d4. c8 bf! af
  | g4 fs r8 g
  | d'8.^\markup {\italic{cresc.}} c16 c4 r8 c
  | af'4.^\f ef8^\> c8. af16\!
  | g4 fs r4
  | r4^\markup{\italic{"Més lent."}} f!^\< ef8 d\!
  | d'8.^\fp^\> c16 c4\! r4
  | r4 f,^\< ef8 d\!
  | d'4^\> c\! r4
  | r4 c^\p g8 bf
  | bf8. a16 a4 r8 a
  | a4. a8 ef'8. ef16
  | a,4. a8 bf d
  | d4 c ef~^\f^\>
  | ef d\! bf
  | g8. a16 bf4 ef~^\f^\>
  | ef d\! bf
  | a g r4
  | g^\markup {\italic{"Més ràpid."}} g8 g a8. a16
  | bf4.^\< bf8 c c\!
  | ef4^\> d\! r4
  | r4^\markup{\italic{"Més lent."}} d^\p g,8 a
  | c8. bf16 bf4 af~
  | af f4. fs8
  | \acciaccatura fs a4 g r4
  | R2.
  | R2.
  | R2.
  | R2. \bar "|."


}

catala = \lyricmode {
  Sols qui~el de -- ler co -- neix
  sap com so -- frei -- xo,
  tot sol a -- cí jo~em veig,
  cap goig no sen -- to,
  mi -- rant el fir -- ma -- ment
  de -- ba -- des cer -- co!
  Ah, qui per mi~es de -- leix,
  ben lluny deu és -- ser.
  Em ro -- da~el cap, i~amb foc
  dins meu em cre -- ma.

  Sols qui~el de -- ler co -- neix
  sap com so -- frei -- xo,
  sols qui~el de -- ler co -- neix;
  tot sol a -- cí jo~em veig,
  cap goig no sen -- to,
  mi -- rant el fir -- ma -- ment
  de -- ba -- des cer -- co!
  Ah, qui per mi~es de -- leix,
  ben lluny deu és -- ser.
  Sols qui~el de -- ler co -- neix
  sap com so -- frei -- xo.

}

alemany = \lyricmode {
  Nur wer die Sehn -- sucht kennt
  weiß, was ich lei -- de!
  Al -- lein und ab -- ge -- trennt
  von al -- ler Freu -- de
  seh' __ ich an's Fir -- ma -- ment
  nach je -- ner Sei -- te.
  Ach, der mich liebt und kennt,
  ist in der Wei -- te.
  Es schwin -- delt mir, es brennt
  mein Ein -- ge -- wei -- de.

  Nur wer die Sehn -- sucht kennt
  weiß, was ich lei -- de!
  Nur wer die Sehn -- sucht kennt;
  Al -- lein und ab -- ge -- trennt
  von al -- ler Freu -- de
  seh' __ ich an's Fir -- ma -- ment
  nach je -- ner Sei -- te.
  Ach, der mich liebt und kennt,
  ist in der Wei -- te.
  Nur wer die Sehn -- sucht kennt
  weiß, was ich lei -- de!
}

upper = \relative c'' {
  \clef treble
  \global
  \omit TupletBracket
  \omit TupletNumber

  | s2.
  | r8 af,(\> af' d, b af)\!
  | r8 g( g' c, bf' <bf,! e>)
  | r8 a( a' fs d a)
  | r8 a( <g' a>_\markup { \italic {cresc.} } e <a, fs'> ef')
  | <<
    { r4 a( bf) }
    \\
    {
      r8 a, gf' ef \stemUp \acciaccatura bf \stemDown \tuplet 3/2 { gf' ef bf }
    }
  >>
  | <<
    { r4 c'2 }
    \\
    {  \omit TupletBracket
      \omit TupletNumber \tuplet 3/2 4 { r8 c,( ef gf f ef gf\tweak Y-offset #1 ^\prall \tweak font-size #-2 ^\markup { \flat } f ef) } }
  >>
  | \tuplet 3/2 4 { r8 ef(<f c' ef>) r8 d(<f bf d>) r8 bf,(<f' bf>)}
  | \tuplet 3/2 4 { r8 g!(<c, gf' a>) r8 <f bf>( bf,)}
  <<
    {
      \omit TupletBracket
      \omit TupletNumber \once \override Tie.control-points = #'((1.5 . 3) (4 . 4) (6 . 4) (8 . 3)) ef'4~ | \tuplet 3/2 4 {ef8 <gf, c ef>[_( f)] b8\rest <bf d>_( f) b8\rest <f bf>_(bf,)}
    }
    \\
    { \omit TupletBracket \omit TupletNumber ef4~\f\> | \tuplet 3/2 4 { ef8 }\! }
    \\
    { \override Beam.positions = #'(2.5 . 3.5) <f a>8. bf16  |}
  >>
  | \tuplet 3/2 4 { r8 g,!(bf <ef g!> g, bf <ef g> g, bf) }
  | \tuplet 3/2 4 { r8\<^\markup{\italic{"Més ràpid."}} g(bf <ef g> g, bf <f' g> g, b)\! }
  | \tuplet 3/2 4 { r8 c( ef <g c> c, ef bf' c, af') }
  | \tuplet 3/2 4 { r8 a,!( d <fs a!> a, d <f g> g, d')}
  | \tuplet 3/2 4 { r8 d(_\markup{\italic{cresc.}}<g d'>) r8 c,(<g' c>) r8 f,!(<c' f!>)}
  | \tuplet 3/2 4 { r8 ef,(af\< c ef af c af' g\!) }
  | <<
    { r4 fs, fs }
    \\
    { \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 { r8 a,!(\p c ef a, c ef a, c) } }
  >>
  | <<
    { r4^\markup{\italic{"Més lent."}} f f }
    \\
    { \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 { r8 f,(af d\< f, af d f, af)\! } }
  >>
  | <<
    { r4 c' c }
    \\
    { \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 { r8 d,(fs g\> c, ef g c, ef\!) } }
  >>
  | <<
    { r4 f! f }
    \\
    { \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 { r8 f,(af d\< f, af d f, af)\! } }
  >>
  | <<
    { r4 c' c }
    \\
    { \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 { r8 d,(fs g\> c, ef g c, ef\!) } }
  >>
  | <<
    { r4 c'( bf!) }
    \\
    { \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 { r8 c,\p ef g c, ef g bf, e } }
  >>
  | <<
    { r4 a a }
    \\
    { \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 { r8 a, d fs a, d fs a, d } }
  >>
  | <<
    { r4 a'( ef'!) }
    \\
    { \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 { r8 a,, e' g a,_\markup{\italic{cresc.}} e' a ef fs } }
  >>
  | <<
    { r4 a (bf) }
    \\
    { \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 { r8 a, ef' gf a, ef' gf bf, ef } }
  >>
  | <<
    { r4 c'2 }
    \\
    { \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 { r8 c,( ef gf f ef gf f ef) } }
  >>
  | \tuplet 3/2 4 { r8 ef( <f c' ef>) r8 d(<f bf d>) r8 bf,(<f' bf>)}
  | \tuplet 3/2 4 { r8 g!(<c, gf' a>) r8 <f bf>( bf,) }
  <<
    {\once \override Tie.staff-position = 6 ef'4~ | \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 { ef8} }
    \\
    { ef,4~ | \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 {ef8 } }
    \\
    { \override Beam.positions = #'(1.5 . 2.5) <f a>8. bf16 }
  >>
  \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 { <gf c ef>8( f) r8 <bf d>(f) r8 <f bf>( bf,)}
  | \tuplet 3/2 4 { r8 g!(bf <ef g!> g, bf <ef g> g, bf) }
  | <<
    { r4^\markup{\italic{"Més ràpid."}} g'(a) }
    \\
    { \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 { r8 g, bf ef g, bf g' a, c } }
  >>
  | <<
    { r4 bf'( c) }
    \\
    { \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 { r8 bf, d g bf, d a'_\markup{\italic{cresc.}} c, ef } }
  >>
  | <<
    { r4 d'2~ | d4^\markup{\italic{"Més lent."}} d( g,8 a!) }
    \\
    { \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 { r8 ef f af\> d, f af d, f\! | r8 d g d' d, g~ g g, a! } }
  >>
  | <<
    { r4 bf'( af)~ | af f~f8 fs }
    \\
    { \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 { r8 bf, d g bf, d ef af, c | ef af, c d a! c d a c} }
  >>
  | <<
    { r4 g'( ef~ | ef c d~ | d8 c bf!4 a) }
    \\
    { \omit TupletBracket \omit TupletNumber \tuplet 3/2 4 { r8 g bf d g, bf ef g, bf } }
  >>
  | s2.
  | s2.

}

lower = \relative c {
  \clef bass
  \global

  | <<
    { r8 bf(^\p^\< bf' g d bf)\! }
    \\
    { <g, g'>2.\sustainOn }
  >>
  | <f f'>2.
  | <ef' ef'>2( <cs cs'>4)
  | <d d'>2.
  | <cs cs'>2 <c~ c'~>4(
  | <c c'> <cf cf'> <bf bf'>
  | <a a'>2.)
  | a'4(^\p bf d
  | ef d) c8. bf16
  | a4( bf d
  | ef2.)
  | <ef, ef'>2 <d d'>4
  | <c c'>2.
  | <d d'>2 <b~ b'~>4
  | <b b'> <ef ef'> <d d'>
  | <c~ c'~>2.^\f
  | <c\=1( c'\=2^( >2.
  | <b\=1) b'\=2^) >2.
  | <<
    { fs''4(^\sf g2) }
    \\
    { ef2. }
  >>
  | <b, b'>2.
  | <<
    { fs''4(\sf\> g2~)\! | g4}
    \\
    { ef2.~ | ef4}
  >>
  | <ef, ef'>( <cs cs'>
  | <d d'>2.)
  | <cs cs'>2 <c~ c'~>4(
  | <c c'>4 <cf cf'> <bf bf'>
  | <a a'>2.)
  | a'4(^\p bf d
  | ef d) c8.^\f^\> bf16\!
  | a4( bf d
  | ef2.)
  | <ef, ef'>2.
  | <d d'>2 <c c'>4
  | <b b'>2.(^\f
  | <ef ef'>2.)^\p
  | <d d'>2 <c~ c'~>4 |
  | <c c'> <d d'>2
  | <<
    { r4 d'( ef) }
    \\
    {   \once \override Slur.direction = #UP \acciaccatura {\stemUp g,,8} \stemDown g'2. }
  >>
  | <<
    {
      \omit TupletBracket
      \omit TupletNumber
      \tuplet 3/2 4 {
        b'8\rest ef, a c, ef a d, af' b |
        r8 c, g' \up bf \down d, g \up a \down d, fs
      }
    }
    \\
    { fs,2( f4 | ef d2) }
    \\
    { d'4\rest \stemDown c4 \once \override NoteColumn.horizontal-shift = #-1 d }
  >>
  | <<
    { d'4\rest d2~| <bf d>4 r4 r4 \fermata }
    \\
    { <g,,~ g'~>2.\sustainOn | <g g'>4\sustainOff r4 r4 \fermata }
    \\
    { \omit TupletBracket
      \omit TupletNumber
      \tuplet 3/2 4 { e''8\rest d g \stemDown bf d, g bf d, g }
       }
  >>


  \label #'lastPage
}

titol = "Nur wer die Sehnsucht kennt, Op. 48, n. 3"
subtitol = "Sols qui el deler coneix"
compositor = "R. Schumann (1810 - 1856)"
lletrista = "J. W. von Goethe(1797 - 1856)"
traductor = ""



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% PDF %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  % \bookOutputSuffix ""
  \header {
    title = \titol
    subtitle = \subtitol
    composer = \compositor
    arranger = \lletrista
    poet = \traductor
    tagline = ##f
    copyright = \markup {
      \center-column {
        \line { "Gravat per Robert Garrigós" \with-url #"https://garrigos.cat" "https://garrigos.cat" \with-url #"https://creativecommons.org/licenses/by/4.0/deed.ca" "(CC BY 4.0)" "amb" \with-url #"https://lilypond.org" "Lilypond" "el" \data }
        % \line { "Creative Commons Attribution 4.0 International (CC BY 4.0)" }
      }
    }
  }
  \score {
    <<
      \new Voice = "mel" { \set Staff.midiInstrument = "voice oohs" \autoBeamOff \melody }
      \new Lyrics \lyricsto mel \catala
      \new Lyrics \with {
        \override LyricText.font-shape = #'italic
      } \lyricsto mel \alemany
      \new PianoStaff \with { \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #0 } <<
        \new Staff = "upper" \upper
        \new Staff = "lower" \lower
      >>
    >>
    \layout {
      #(layout-set-staff-size 17.5)
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #3
      }
    }
    \midi { }
  }
  \paper {
    set-paper-size = "a4"
    top-margin = 10
    left-margin = 15
    indent = 10
    max-systems-per-page = 6
    score-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 5)
       (padding . 0)
       (stretchability . 14))

    last-bottom-spacing =
    #'((basic-distance . 15)
       (minimum-distance . 5)
       (padding . 0)
       (stretchability . 10))
    % markup-system-spacing =
    % #'((minimum-distance . 0))
    % system-system-spacing =
    % #'((minimum-distance . 15))
    % staff-staff-spacing =
    % #'((padding . 10))
    % default-staff-staff-spacing =
    % #'((basic-distance . 0)
    %    (minimum-distance . 0)
    %    (padding . 0)
    %    (stretchability . 10))
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
}
