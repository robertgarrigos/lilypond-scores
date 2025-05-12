\version "2.25.14"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key ef \major
  \time 2/4
  \tempo "Langsam."
  \set Score.tempoHideNote = ##t
  \tempo 4=40

}


melody_first = \relative c'' {
  \clef treble
  \global

  | r4 r8 r16 bf^\p
  | bf 8. bf16 bf 8 bf
  | c c f8. ef16
  | d8 c bf af
  | g( \stemUp bf16) \stemNeutral a bf8 r16 bf
  | bf8. bf16 bf8 bf
  | c c f8. ef16~
  | ef16 d8 c bf af16~
  | af16^\> g( bf) a g8\! b^\p
  | b8. a16 g8 b
  | b a g4
  | cf8 cf16 cf cf8 cf
  | cf8. cf16 cf( [ef df]) df
  | df8. df16 df8 df
  | ef ef ef gf
  | f8. ef16 df df cf cf
  | bf4 r8 bf
  | bf8. bf16 bf8 bf
  | c c f ef
  | d c bf af
  | g( \stemUp bf16) \stemNeutral a bf8 r16 bf
  | bf8. d,16 ef8. c'16
  | c8. e,16 f8 ef'
  | ef cf af f
  | bf4. d,8
  | ef2
  | R2
  | R2
  | R2
  | R2
  | R2 \bar "|."
}

% melody_second = \relative c'' {
%   \clef treble
%   \global

%   a b c d
% }

catala_first = \lyricmode {
  Ton ros -- tre bell i tan a -- mat,
  fa temps en som -- nis he mi -- rat,
  d'un àn -- gel sem -- bla sa dol -- çor,
  mes tor -- na'l pàl· -- lid la do -- lor.

  Els lla -- vis sols són d'un roig fort;
  pàl· -- lids vin -- drà~a be -- sar-l's la mort.
  Del cel la llum bri -- llant fi -- neix
  que l'in -- no -- cent es -- guard llu -- eix.

  Ton ros -- tre bell i tan a -- mat,
  fa temps en som -- nis he mi -- rat,
  d'un àn -- gel sem -- bla sa dol -- çor,
  mes tor -- na'l pàl· -- lid la do -- lor.
}

alemany_first = \lyricmode {
  Dein An -- ge -- sicht so lieb und schön,
  das hab' ich jüngst im Traum ge -- sehn,
  es ist so mild und en -- gel -- gleich,
  und doch so bleich, so schmer -- zen -- bleich.

  Und nur die Lip -- pen, die sind rot;
  bald a -- ber küßt sie bleich der Tod.
  Er -- lö -- schen wird das Him -- mels -- licht,
  das aus den from -- men Au -- gen bricht.

  Dein An -- ge -- sicht so lieb und schön,
  das hab' ich jüngst im Traum ge -- sehn,
  es ist so mild und en -- gel -- gleich,
  und doch so bleich, so schmer -- zen -- bleich.
}

% catala_second = \lyricmode {
%   Aaa Bee Cee Dee
% }

% alemany_second = \lyricmode {
%   Aaa Bee Cee Dee
% }

upper = \relative c' {
  \clef treble
  \global

  | <ef g bf>16(\p bf <ef g bf>16 bf <ef g bf>16 bf <ef g bf>16 bf)
  | <ef g bf>16( bf <ef g bf>16 bf <ef g bf>16 bf <ef g bf>16 bf)
  | <g' bf c>( c, <g' bf c> c, <f af c> [c]) <f af c>^( [ef]
  | <<
    { <f af bf>\arpeggio d af' c, g' bf, <d f> af}
    \\
    { s8 ef'^~ ef s8 }
  >>
  | \change Staff = "lower" \stemUp <c ef>16 g <bf ef f> a <bf d f> [f]) \change Staff = "upper" <f' af! bf>( d)
  | <ef g bf>16( bf <ef g bf>16 bf <ef g bf>16 bf <ef g bf>16 bf)
  | <g' bf c> (c, <g' bf c> c, <f af c> [c]) <f af c>^( [ef!]
  | <f af bf>\arpeggio d <ef af> c <d g> bf <d f> af
  | \change Staff = "lower" <c ef>^\>^\markup {\raise #5.5 \italic ritard.} g <bf! d> <fs a>\! <b d> [g]) <b d>^(^\p g
  | <b d> fs b <a c> b [g]) <b d>^( g
  | <b d> fs b <a c> b [g]) \change Staff = "upper"
  <<
    { d'8^>~ d d4 ef8~ | ef f!~ f\noBeam f16 df'}
    \\
    { cf,16( af! | cf af cf af) cf( af cf af) | cf( af cf af cf)_\markup {\italic ritard.} <ef cf'>( <df bf'> <cf af'>)}
  >>
  | \set Staff.connectArpeggios = ##t
  <<
    { df'2\arpeggio }
    \\
    { <bf, gf'>16\arpeggio( bf gf' bf, gf' df gf df)}
  >>
  | <<
    { ef'8. ef16 af8 gf }
    \\
    { <gf, df'>16(_\< ef gf ef cf' af cf gf)\! }
  >>
  | <<
    { f'8^( ef df cf }
    \\
    { cf16\< f,_\markup {\italic ritardando} cf' f, bf f af f\! }
  >>
  | <<
    { bf4.) bf8 }
    \\
    { af16(\> f af ef g! d! f d)\! }
  >>
  | <ef g! bf>16( bf <ef g bf>16 bf <ef g bf>16 bf <ef g bf>16 bf)
  | <g' bf c>( c,<g' bf c> c, <f af c> c <f af c> c)
  | <<
    { <f af bf> d af' c, g' bf, <d f> af}
    \\
    { s8 ef'^~ ef s8 }
  >>
  | <<
    { ef8 f~ f4 }
    \\
    { ef16( g, <bf! ef>a! <bf d> f bf d)}
  >>
  | <<
    { bf'2~ }
    \\
    { ef,16( bf ef bf ef bf ef g)}
  >>
  | <<
    { bf8 c4 <af~ cf~>8 | <af cf>8 af4 f8}
    \\
    { af16( c, e! c f c) f( cf | f cf f cf f cf f cf)}
  >>
  | <<
    { g'8( gf f d) }
    \\
    { ef!16 bf ef a,! ef' af,bf af }
  >>
  | <<
    { ef'16\=1( g, df' af c a ef' bf  | d b f' c ef d af' ef | g gf\=2_( ef'8\=1) gf,8\=2)^\markup {\italic ritardando } <f~ bf~>8 | <f bf>4( ef)}
    \\
    { ef16 g,8 af a bf16~ | bf16 b8 c d ef16 | g \once \override NoteColumn.force-hshift = -0.5  gf8. r16 af,!8.~ |af8. g!16~ \stemUp g4}
  >>
  | r4 < g bf ef>4
  | < g bf ef>2

}

lower = \relative c {
  \clef bass
  \global

  | ef,2~
  | ef2
  | <af, af'>2
  | <bf bf'>4._( <b b'>8
  | \stemDown <c c'> <f f'> <bf,! bf'!>4) \stemNeutral
  |
  | <<
    {<ef ef'>2( | e'4 f) }
    \\
    { s2 | af,}
  >>
  | \stemDown <bf, bf'>4._( <b b'>8 | <c c'> <d d'> <g, g'>4)
  | <d' d'>_( <g, g'>4)
  | <d' d'>4_( <g, g'>8) \stemNeutral <f!~ f'!~>8\noBeam_>
  | <f f'> <ff ff'>4 <ef~ ef'~>8
  | <ef ef'>8 <df df'>4 <df' df'>8
  | <gf, gf'>4( <bf bf'>
  | <cf cf'>2
  | <df df'>4. <ef ef'>8
  | <d! d'!>8 [<c! c'!> <bf bf'> <af af'>])
  | <g! g'!>4( <ef ef'>)
  | <af af'>2
  | <bf bf'>4._( <b b'>8)
  | <c c'>( <f f'> <bf,!~ bf'!~>4)
  | <bf bf'>8 <af! af'!>4 <g~ g'~>8
  | <g g'>8 <bf bf'>4 <af~ af'~>8
  | <af af'>2
  | <<
    { r8 <bf bf'~>4. | bf'8 bf (af c | bf d! c) f | ef4.}
    \\
    { s2 | ef,2~ | ef4. cf'8 | bf8 <a!\=1( c'>4 <bf\=1)~ d^~ bf'^~>8 | <bf\=1( d bf'^~>4 <ef\=1) bf'>4}
  >>
  | r4 <ef, bf' ef>4
  | <ef bf' ef>2

  \label #'lastPage
}

titol = "Dein Angesicht, Op. 127, n. 2"
subtitol = "Ton rostre"
compositor = "R. Schumann (1810 - 1856)"
lletrista = "H. Heine (1797 - 1856)"
traductor = "Antoni Colomé Bosomba (1870 - 1952)"


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
      \new Voice = "mel_f" { \autoBeamOff \melody_first }
      \new Lyrics \lyricsto mel_f \catala_first
      \new Lyrics \with {
        \override LyricText.font-shape = #'italic
      } \lyricsto mel_f \alemany_first
      % \new Voice = "mel_s" { \autoBeamOff \melody_second }
      % \new Lyrics \lyricsto mel_s \catala_second
      % \new Lyrics \lyricsto mel_s \alemany_second
      \new PianoStaff <<
        \new Staff = "upper"
        \with {
          \consists "Span_arpeggio_engraver"
        } \upper
        \new Staff = "lower" \with {
          \consists "Span_arpeggio_engraver"
        } \lower
      >>
    >>
    \layout {
      #(layout-set-staff-size 16.4)
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
