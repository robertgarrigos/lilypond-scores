\version "2.24.3"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key df \major
  \time 3/4
  \tempo "Andante"
  \set Score.tempoHideNote = ##t
  \tempo 4=64
  \set PianoStaff.connectArpeggios = ##t


}


melody = \relative c'' {
  \clef treble
  \global

  | R2.
  | r8 af8^\p af af af af
  |  \set melismaBusyProperties = #'() \slurDashed \footnote "*"  #'(-0.5 . 0.5)\markup {\super "*" \italic "Molt suau"} (a8.
  f'16) \unset melismaBusyProperties f2
  | r8 bf,8 bf bf bf bf
  |  \set melismaBusyProperties = #'() (bff8.
  f'16) \slurSolid \unset melismaBusyProperties f2
  | r8 f8 ef df c df
  | f8. gf,16 gf2
  | r8 f' ef df c df
  | ef8. af,16 af2
  | R2.
  | r8 af af af af af
  | a 8. f'16 f2
  | r8 bf, bf bf bf bf
  | bff8. f'16 f2
  | r8 f ef^\markup {\italic cresc.} df c df
  | f8. gf,16^\markup {\italic cresc.} gf2
  | r8 f' ef df c df
  | ef8. af,16 af2
  | R2.
  | r8 e'^\pp^\markup {\italic "un poco mosso"} ds^\markup {\italic dolce} cs b4~
  | b8 e^\markup {\italic cresc.} ds ds d4~
  | d8 d cs^\< b a b\!
  | b8. e,16 e2^\>
  | r8\! c'^\p b a g4~
  | g8^\markup {\italic cresc.} c b b bf4~
  | bf8 bf a^\< g f g\!
  | g8.^\> c,16 c2\!
  | r8^\p c8^\markup {\italic "poco a poco stringendo e cresc."} bf'8. af16 af4
  | r8 df,8 bf'8. af16 af4
  | r8 ef f gf af bf
  | bf8. af16 ef'2~
  | ef4 r4 r4
  | r8 f, ef'8. df16 df4
  | r8 gf, ef'8. df16 df4
  | r8 af bf cf df ef
  | ef8. df16 af'2~
  | af4 r4 r4
  | r8^\markup {\italic "più cresc."} \phrasingSlurDashed bf, \( ef8.\) df16 df4
  | r8^\markup {\italic "poco ten."} bff \(ef8.\) df16 df4
  | r8^\f af ^\markup {\italic agitato}  af af af af
  | a8. f'16 f2
  | r8 bf, bf bf bf bf
  | bff8. f'16 f2
  | r4 f^\markup {\italic più \dynamic f} c8 df
  | f8.^> gf,16 gf8 gf gf4
  | r8 f' ef df c df
  | af'2~^\ff af8^\fermata af,
  | \tempo Allegro df2.~
  | df4 r4 r4
  | R2.
  | R2.
  | R2. \bar "|."
}

% versió de robert garrigos
% catala = \lyricmode {
%   Un jorn vaig te -- nir~un som -- ni bell:
%   l'a -- mor d'u -- na don -- ze __ _ lla;
%   a -- llí can -- ta -- va~el ca -- der -- nell,
%   en ple -- na pri -- ma -- ve __ _ ra:

%   tot e -- ra verd, co -- rri -- a~el riu,
%   so -- na -- ven les cam -- pa -- nes lluny,
%   sen -- tí -- em ple el cor jo -- liu,
%   sa -- dolls, plens de fe -- li -- ci -- tat.

%   Més bell en -- car que~el som -- ni bell,
%   va pa -- ssar~a ser re -- a -- li -- tat
%   a -- prop del verd bosc e -- ra jo
%   en ple -- na  pri -- ma -- ve -- _ ra:

%   co -- rri -- a~el riu, tot e -- ra verd,
%   de lluy so -- na -- ven les cam -- panes,
%   jo e -- ra~amb tu i tu amb mi
%   i es -- ta -- ri -- em sem -- pre junts! __

%   Sem -- pre junts!
%   Sem -- pre junts!

%   Quin goig el verd pri -- ma -- ve -- ral!
%   Se -- rem junts per l'e -- ter -- ni -- tat-
%   Bell es el som -- ni fet re -- al,
%   el som -- ni~és fet re -- a -- li -- tat!

% }

%versió de joaquim pena
catala = \lyricmode {
 He~ha -- gut un som -- ni ben for -- mós:
 ro -- ssa don -- ze -- lla~a -- mor m'ha dit,
 e -- ra~al bell mig d'un bosc fron -- dós
 e -- ra pel mes de maig flo -- rit;

Bro -- ta -- va~el tany, co -- rri -- a~el flum,
del lluny ve -- ni -- a~un so~en -- dol -- cit
i~amb -- dós ru -- blerts de cla -- ra llum,
fru -- í -- em ce -- les -- tial de -- lit!

Que~el som -- ni~en -- ca -- ra més for -- mós
ha~es -- tat a -- prés ço que~ha se -- guit:
e -- ra~al bell mig d'un bosc fro -- ndós,
e -- ra pel mes de maig flo -- rit,

co -- rri -- a~el flum, bro -- ta -- va~el tany,
com si~un dolç so del lluny vin -- gués.
Jo~et prenc ben fort, amb viu a -- fany
i~et guar -- do~amb mi per sem -- pre més!

Per sem -- pre més! Per sem -- pre més!
Oh maig flo -- rit, oh bosc fron -- dós,
viu -- reu per sem -- pre dins mon pit.

Si la v'ri -- tat fou som -- ni~an -- siós,
del som -- ni la v'ri -- tat ha~ei -- xit!
}


alemany = \lyricmode {
  Mir träum -- te einst ein schö -- ner Traum:
  mich lieb -- te ei -- ne blon -- de Maid,
  es war am grü -- nen Wal -- des -- raum,
  es war zur war -- men Früh -- lings -- zeit:

  die Knos -- pe sprang, der Wald -- bach schwoll,
  fern aus dem Dor -- fe scholl Ge -- läut'
  wir wa --re gan -- zer Won -- ne voll,
  ver -- sun -- ken ganz in Se -- lig -- keit.

  Und schö -- ner noch, als einst der Traum,
  be -- gab es sich in Wirk -- lich -- keit:
  es war am grü -- nen Wal -- des -- raum,
  es war zur war -- men Früh -- lings -- zeit:

  der Wald -- bach schwoll, die Knos -- pe sprang,
  Ge -- läut' er -- scholl vom Dor -- fe her: __
  Ich hielt dich fest, ich hielt dich lang
  und las -- se dich nun nim -- mer -- mehr! __

  nim -- _ mer -- mehr!
  nim -- _ mer -- mehr!
  O früh -- lings -- grü -- ner Wal -- des -- raum,
  du lebst in mir durh al -- le Zeit!
  Dort ward die Wirk -- lich -- kei zum Traum,
  dort ward der Traum zur Wirk -- lich -- keit! __
}

upper = \relative c'' {
  \clef treble
  \global
  | s2.
  | f,2.
  | f2.
  | f2.
  | f2.
  | f2.
  | f2.
  | f2 g!4
  | af2.
  | \stemUp \tuplet 3/2 { ^([g'8.^>^\markup {\italic dolce} \grace {f16 g}  f16 ef c]} af2)
  | f'2.
  | f2.
  | f2.
  | f2.
  | f2.
  | f2.
  | f2 g4
  | af2.
  | \stemUp \tuplet 3/2 { ^([g'8.^>^\markup {\italic dolce} \grace {f16 g}  f16 ef c]} af2)
  | e2.^~\pp^\markup {\italic "un poco mosso"}
  | e4^\markup {\italic cresc.} ^(ds d)^>^~
  | d2.^~
  | d4 ^(cs c)
  | c2.^~\pp
  | c4-\markup  { \whiteout \halign #0.5 \italic  cresc.} ^(b bf^~)^>
  | bf2.^~
  | bf4 ^(a af)
  |  \stemNeutral \tuplet 3/2 {r8_\p_\markup {\whiteout \italic "poco a poco stringendo e cresc."} <c, gf' af>8 <c gf' af>8} \tuplet 3/2 {<c gf' af>8 <c gf' af>8 <c gf' af>8} \tuplet 3/2 {<c gf' af>8 <c gf' af>8 <c gf' af>8}
  |  \tuplet 3/2 {r8 <df gf af>8 <df gf af>8} \tuplet 3/2 {<df gf af>8 <df gf af>8 <df gf af>8} \tuplet 3/2 {<df gf af>8 <df gf af>8 <df gf af>8}
  |  \tuplet 3/2 {r8 <ef gf af>8 <ef gf af>8} \tuplet 3/2 {<ef gf af>8 <ef gf af>8 <ef gf af>8} \tuplet 3/2 {r8 <ef gf af>8 <ef gf af>8}
  |  \tuplet 3/2 {r8 <c gf' af>8\< <c gf' af>8} \tuplet 3/2 {<c gf' af>8 <c gf' af>8 <c gf' af>8} \tuplet 3/2 {<c gf' a>8 <c gf' a>8 <c gf' a>8\!}
  | \tuplet 3/2 {r8 <c gf'>8 <c gf'>8 r8 <c gf'>8 <c gf'>8 <c gf'>8 <c gf'>8 <c gf'>8}
  | \tuplet 3/2 {r8 <f cf' df> <f cf' df> <f cf' df> <f cf' df> <f cf' df> <f cf' df> <f cf' df> <f cf' df>}
  | \tuplet 3/2 {r8 <gf cf df> <gf cf df> <gf cf df> <gf cf df> <gf cf df> <gf cf df> <gf cf df> <gf cf df>}
  | \tuplet 3/2 {r8 <af cf df> <af cf df> <af cf df> <af cf df> <af cf df> r8 <af cf df> <af cf df>}
  | \tuplet 3/2 {r8 <f cf' df>\< <f cf' df> <f cf' df> <f cf' df> <f cf' df> <f cf' d> <f cf' d> <f cf' d>\!}
  | \tuplet 3/2 {r8 <f cf'> <f cf'> r8 <f cf'> <f cf'> <f cf'> <f cf'> <f cf'> }
  | \tuplet 3/2 { r8-\markup {\italic "più cresc."} <ff bf df> <ff bf df> <ff bf df> <ff bf df> <ff bf df> <ff bf df> <ff bf df> <ff bf df>}
  | \tuplet 3/2 { r8_\markup {\italic "poco ten."} <ff bff df> <ff bff df> <ff bff df> <ff bff df> <ff bff df> <ff bff df> <ff bff df> <ff bff df>}
  | \tuplet 3/2 {r8\f <f! af df f!>-\markup {\italic agitato} <f af df f> <f af df f> <f af df f> <f af df f> <f af df f> <f af df f> <f af df f>}
  | \tuplet 3/2 {r8 <gf a df f!> <gf a df f> <gf a df f> <gf a df f> <gf a df f> <gf a df f> <gf a df f> <gf a df f>}
  | \tuplet 3/2 {r8 <g bf df f!> <g bf df f> <g bf df f> <g bf df f> <g bf df f> <g bf df f> <g bf df f> <g bf df f>}
  | \tuplet 3/2 {r8 <gf bff df f!> <gf bff df f> <gf bff df f> <gf bff df f> <gf bff df f> <gf bff df f> <gf bff df f> <gf bff df f>}
  | \tuplet 3/2 {r8-\markup {\italic più \dynamic f}<f af df f!> <f af df f> <f af df f> <f af df f> <f af df f> r8 <f af df f> <f af df f>}
  | \tuplet 3/2 {r8 <gf df' f> <gf df' f> <gf df' f> <gf df' f> <gf df' f> <gf df' f> <gf df' f> <gf df' f>}
  | \tuplet 3/2 {r8 <g df' f> <g df' f> <g df' f> <g df' f> <g df' f> <g df' f> <g df' f> <g df' f>}
  | \tuplet 3/2 {r8-\ff <gf! c f af> <gf c f af> <gf c f af> <gf c f af> <gf c f af>~} <gf c f af>4^\fermata
  | \tuplet 3/2 {r8 <df f>8 [<df f>8] <df f>8-\markup {\italic strepitoso} <df f>8<df f>8 <f af df f>8 <f af df f>8 <f af df f>8}
  | \tuplet 3/2{<f bff df f>8 <f bff df f>8 <f bff df f>8 <f' af df f>8 <f af df f>8 <f af df f>8 <f bff df f>8 <f bff df f>8 <f bff df f>8}
  | \ottava #1 <f' af df f>2 \ottava #0 r4
  | \arpeggio <af,, df f df'>2 r4
  | \arpeggio <af, df f df'>2 r4

}

lower = \relative c' {
  \clef bass
  \global

  | <<
    {
      \tuplet 3/2 {_(af,8^\p df \change Staff = "upper" \stemDown f) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {_(af,8 df \change Staff = "upper" \stemDown f) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {_(af,8 df \change Staff = "upper" \stemDown f) }  \stemUp \change Staff = "lower"
    }
    \\
    {df,2.}
  >>
  | <<
    {
      \tuplet 3/2 {_(af'8 df \change Staff = "upper" \stemDown f) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {_(af,8 df \change Staff = "upper" \stemDown f) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {_(af,8 df \change Staff = "upper" \stemDown f) }  \stemUp \change Staff = "lower"
    }
    \\
    {df,2.}
  >>
  | <<
    {
      \tuplet 3/2 {_(a'8 df \change Staff = "upper" \stemDown gf) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {_(a,8 df \change Staff = "upper" \stemDown gf) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {_(a,8 df \change Staff = "upper" \stemDown gf) }  \stemUp \change Staff = "lower"
    }
    \\
    {df,2.}
  >>
  | <<
    {
      \tuplet 3/2 {_(bf'8 df \change Staff = "upper" \stemDown g) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {_(bf,8 df \change Staff = "upper" \stemDown g) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {_(bf,8 df \change Staff = "upper" \stemDown g) }  \stemUp \change Staff = "lower"
    }
    \\
    {df,2.}
  >>
  | <<
    {
      \tuplet 3/2 {_(bff'8 df \change Staff = "upper" \stemDown gf!) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {_(bff,8 df \change Staff = "upper" \stemDown gf) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {_(bff,8 df \change Staff = "upper" \stemDown gf) }  \stemUp \change Staff = "lower"
    }
    \\
    {df,2.}
  >>
  | <<
    {
      \tuplet 3/2 {_(af'8 df \change Staff = "upper" \stemDown f) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {_(af,8 df \change Staff = "upper" \stemDown f) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {_(af,8 df \change Staff = "upper" \stemDown f) }  \stemUp \change Staff = "lower"
    }
    \\
    {df,2.}
  >>
  | <<
    {
      \tuplet 3/2 {_(ef8 df' \change Staff = "upper" \stemDown gf) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {_(ef,8 df' \change Staff = "upper" \stemDown gf) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {_(ef,8 df' \change Staff = "upper" \stemDown gf) }  \stemUp \change Staff = "lower"
    }
    \\
    {bf,,2.}
  >>
  | <<
    {
      \tuplet 3/2 {_(bf'8 ef \change Staff = "upper" \stemDown g!) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {_(bf,8 ef \change Staff = "upper" \stemDown g) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {_(bf,8 ef \change Staff = "upper" \stemDown g) }  \stemUp \change Staff = "lower"
    }
    \\
    {ef,2.}
  >>
  | <<
    {
      \tuplet 3/2 {(ef'8 af \change Staff = "upper" \stemDown df) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(ef,8 af \change Staff = "upper" \stemDown df) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(ef,8 af \change Staff = "upper" \stemDown df) }  \stemUp \change Staff = "lower"
    }
    \\
    {af,2.~}
  >>
  | <<
    {
      \tuplet 3/2 {(ef'8 af \change Staff = "upper" \stemDown c) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(ef,8 af \change Staff = "upper" \stemDown c) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(e,8 af \change Staff = "upper" \stemDown c) }  \stemUp \change Staff = "lower"
    }
    \\
    {af,2.}
  >>
  | <<
    {
      \tuplet 3/2 {(af'8 df \change Staff = "upper" \stemDown f) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(af,8 df \change Staff = "upper" \stemDown f) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(af,8 df \change Staff = "upper" \stemDown f) }  \stemUp \change Staff = "lower"
    }
    \\
    {df,2.}
  >>
  | <<
    {
      \tuplet 3/2 {(a'8 df \change Staff = "upper" \stemDown gf) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(a,8 df \change Staff = "upper" \stemDown gf) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(a,8 df \change Staff = "upper" \stemDown gf) }  \stemUp \change Staff = "lower"
    }
    \\
    {df,2.}
  >>
  | <<
    {
      \tuplet 3/2 {(bf'8 df \change Staff = "upper" \stemDown g) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(bf,8 df \change Staff = "upper" \stemDown g) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(bf,8 df \change Staff = "upper" \stemDown g) }  \stemUp \change Staff = "lower"
    }
    \\
    {df,2.}
  >>
  | <<
    {
      \tuplet 3/2 {(bff'8 df \change Staff = "upper" \stemDown gf!) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(bff,8 df \change Staff = "upper" \stemDown gf) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(bff,8 df \change Staff = "upper" \stemDown gf) }  \stemUp \change Staff = "lower"
    }
    \\
    {df,2.}
  >>
  | <<
    {
      \tuplet 3/2 {(af'8 df \change Staff = "upper" \stemDown f^\markup {\italic cresc.}) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(af,8 df \change Staff = "upper" \stemDown f) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(af,8 df \change Staff = "upper" \stemDown f) }  \stemUp \change Staff = "lower"
    }
    \\
    {df,2.}
  >>
  | <<
    {
      \tuplet 3/2 {^(ef8 df' \change Staff = "upper" \stemDown gf^\markup {\italic cresc.}) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {^(ef,8 df' \change Staff = "upper" \stemDown gf) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {^(ef,8 df' \change Staff = "upper" \stemDown gf) }  \stemUp \change Staff = "lower"
    }
    \\
    {bf,,2.}
  >>
  | <<
    {
      \tuplet 3/2 {^(bf'8 ef \change Staff = "upper" \stemDown g) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {^(bf,8 ef \change Staff = "upper" \stemDown g) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {^(bf,8 ef \change Staff = "upper" \stemDown g) }  \stemUp \change Staff = "lower"
    }
    \\
    {ef,2.}
  >>
  | <<
    {
      \tuplet 3/2 {^(ef'8 af \change Staff = "upper" \stemDown df) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {^(ef,8 af \change Staff = "upper" \stemDown df) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {^(ef,8 af \change Staff = "upper" \stemDown df) }  \stemUp \change Staff = "lower"
    }
    \\
    {af,2.~}
  >>
  | <<
    {
      \tuplet 3/2 {^(ef'8 af\> \change Staff = "upper" \stemDown c) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {^(ef,8 af \change Staff = "upper" \stemDown c) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {^(ef,8 af \change Staff = "upper" \stemDown c\!) }  \stemUp \change Staff = "lower"
    }
    \\
    {af,2.}
  >>
  | <<
    {
      \tuplet 3/2 {(gs8 b \change Staff = "upper" \stemDown e) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(gs,8 b \change Staff = "upper" \stemDown e) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(gs,8 b \change Staff = "upper" \stemDown e) }  \stemUp \change Staff = "lower"
    }
    \\
    {b,2.}
  >>
  | <<
    {
      \tuplet 3/2 {(fs'8 b \change Staff = "upper" \stemDown e) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(fs,8 b \change Staff = "upper" \stemDown ds) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(fs,8 bf \change Staff = "upper" \stemDown d) }  \stemUp \change Staff = "lower"
    }
    \\
    {b,2 (bf4)}
  >>
  | <<
    {
      \tuplet 3/2 {(fs'8 a \change Staff = "upper" \stemDown d) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(fs,8 a \change Staff = "upper" \stemDown d) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(fs,8 a \change Staff = "upper" \stemDown d) }  \stemUp \change Staff = "lower"
    }
    \\
    {a,2.}
  >>
  | <<
    {
      \tuplet 3/2 {(e'8 a \change Staff = "upper" \stemDown d) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(e,8 a \change Staff = "upper" \stemDown cs) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(e,8 af \change Staff = "upper" \stemDown c) }  \stemUp \change Staff = "lower"
    }
    \\
    {a,2 (af4)}
  >>
  | <<
    {
      \tuplet 3/2 {(e'8 g \change Staff = "upper" \stemDown c) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(e,8 g \change Staff = "upper" \stemDown c) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(e,8 g \change Staff = "upper" \stemDown c) }  \stemUp \change Staff = "lower"
    }
    \\
    {g,2.}
  >>
  | <<
    {
      \tuplet 3/2 {(d'8 g \change Staff = "upper" \stemDown c) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(d,8 g \change Staff = "upper" \stemDown b) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(d,8 gf \change Staff = "upper" \stemDown bf) }  \stemUp \change Staff = "lower"
    }
    \\
    {g,2 gf4}
  >>
  | <<
    {
      \tuplet 3/2 {(d'8 f \change Staff = "upper" \stemDown bf^\<) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(d,8 f \change Staff = "upper" \stemDown bf) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(d,8 f \change Staff = "upper" \stemDown bf\!) }  \stemUp \change Staff = "lower"
    }
    \\
    {f,2.}
  >>
  | <<
    {
      \tuplet 3/2 {(c'8 f \change Staff = "upper" \stemDown bf) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(c,8^\> f \change Staff = "upper" \stemDown a) } \stemUp \change Staff = "lower"
      \tuplet 3/2 {(c,8 ff \change Staff = "upper" \stemDown af\!) }  \stemUp \change Staff = "lower"
    }
    \\
    {f,2 ff4}
  >>
  | \tuplet 3/2 {<ef ef'>8 <gf' af>8 <gf af>8} \tuplet 3/2 {<gf af>8 <gf af>8 <gf af>8} \tuplet 3/2 {<gf af>8 <gf af>8 <gf af>8}
  | \tuplet 3/2 {<df, df'>8 <gf' af>8 <gf af>8} \tuplet 3/2 {<gf af>8 <gf af>8 <gf af>8} \tuplet 3/2 {<gf af>8 <gf af>8 <gf af>8}
  | \tuplet 3/2 {<c,, c'>8 <gf'' af>8 <gf af>8} \tuplet 3/2 {<gf af>8 <gf af>8 <gf af>8} \tuplet 3/2 {<bf,, bf'>8 <gf'' af>8 <gf af>8}
  | \tuplet 3/2 {<af,, af'>8 <gf'' af>8 <gf af>8} \tuplet 3/2 {<gf af>8 <gf af>8 <gf af>8} \tuplet 3/2 {<gf a>8 <gf a>8 <gf a>8}
  | \clef treble
  <bf bf'>8. <af! af'!>16 <ef' ef'>2
  | \clef bass
  \tuplet 3/2 {<af,, af'>8 <cf' df> <cf df> <cf df> <cf df> <cf df> <cf df> <cf df> <cf df>}
  | \tuplet 3/2 {<gf, gf'>8 <cf' df> <cf df> <cf df> <cf df> <cf df> <cf df> <cf df> <cf df>}
  | \tuplet 3/2 {<f,, f'>8 <cf'' df> <cf df> <cf df> <cf df> <cf df> <ef,, ef'> <cf'' df> <cf df>}
  | \tuplet 3/2 {<df,, df'>8 <cf'' df> <cf df> <cf df> <cf df> <cf df> <cf d> <cf d> <cf d>}
  | \clef treble <ef ef'>8. <df! df'!>16 <af' af'>2
  | \clef bass \stemDown \tuplet 3/2 {<gf,,, gf'>8 <ff'' bf df> <ff bf df> <ff bf df> <ff bf df> <ff bf df> <ff bf df> <ff bf df> <ff bf df>}
  | \tuplet 3/2 {<g,, g'>8 <ff'' bff df> <ff bff df> <ff bff df> <ff bff df> <ff bff df> <ff bff df> <ff bff df> <ff bff df>}
  | \tuplet 3/2 {<af,, af'>8 <f''! af df> <f af df> <f af df> <f af df> <f af df> <f af df> <f af df> <f af df>}
  | \tuplet 3/2 {<af,, af'>8 <gf'' a df f> <gf a df f> <gf a df f> <gf a df f> <gf a df f> <gf a df f> <gf a df f> <gf a df f>}
  | \tuplet 3/2 {<af,, af'>8 <g'' bf df f> <g bf df f> <g bf df f> <g bf df f> <g bf df f> <g bf df f> <g bf df f> <g bf df f>}
  | \tuplet 3/2 {<af,, af'>8 <gf'' bff df f> <gf bff df f> <gf bff df f> <gf bff df f> <gf bff df f> <gf bff df f> <gf bff df f> <gf bff df f>}
  | \tuplet 3/2 {<af,, af'>8^> <f'' af df> <f af df> <f af df> <f af df> <f af df> <cf, cf'>8^> <f' af df> <f af df>}
  | \tuplet 3/2 {<bf,, bf'>8^> <gf'' df' f> <gf df' f> <gf df' f> <gf df' f> <gf df' f> <gf df' f> <gf df' f> <gf df' f>}
  | \tuplet 3/2 {<ef,, ef'>8^> <g'' df' f> <g df' f> <g df' f> <g df' f> <g df' f> <g df' f> <g df' f> <g df' f>}
  | \tuplet 3/2 {<af,, af'>8^> <gf''! c f> <gf c f> <gf c f> <gf c f> <gf c f>~ } <gf c f>4_\fermata
  | <<
    {
      \autoBeamOff
      \crossStaff {
        \tuplet 3/2 {
          r8 <f af>8 <f af >8 <f bff>8 <f bff>8<f bff>8
        }
      }
      \autoBeamOn

    }
    \\
    {\tuplet 3/2 {\autoBeamOff \stemUp <df,, df'>8_\sustainOn \autoBeamOn \stemDown <df' af' df>8 <df af' df>8 <df bff' df>8 <df bff' df>8 <df bff' df>8 }}
  >>
    \tuplet 3/2 {<df' af' df>8 <df af' df>8 <df af' df>8}
  | \tuplet 3/2 {<df bff' df>8 <df bff' df>8 <df bff' df>8 \clef treble <df' af' df>8 <df af' df>8 <df af' df>8 <df bff' df>8 <df bff' df>8 <df bff' df>8}
  | <df' af' df>2\sustainOn r4 \clef bass
  | \arpeggio <df,, af' df f>2 r4
  | \arpeggio <df, af' df f>2 r4\sustainOff


  \label #'lastPage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% REMARKABLE %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \bookOutputSuffix "remarkable"
  \header {
    title = "Ein Traum, Op.48 nº 6"
    subtitle = "Un somni"
    composer = "E. Grieg (1843-1907)"
    arranger = "F. M. von Bodenstedt (1819-1892)"
    poet = "Trad. Joaquim Pena"
    tagline = ##f
  }
  \score {
    <<
      \new Voice = "mel" { \autoBeamOff \melody }
      \new Lyrics \lyricsto mel \catala
      \new Lyrics \lyricsto mel \alemany
      \new PianoStaff <<
        \new Staff = "upper" \upper
        \new Staff = "lower" \lower
      >>
    >>
    \layout {
      #(layout-set-staff-size 16)
      \context {
        \PianoStaff
        \consists #Span_stem_engraver
      }
      \context {
        \Staff
        % \RemoveEmptyStaves
        % \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #3
        \override TupletNumber.text = ##f
        \override TupletBracket.bracket-visibility = ##f
      }
    }
  }

  \paper {
    #(set-paper-size '(cons (* 155 mm) (* 210 mm)))
    indent = 0\mm
    top-margin = #10
    bottom-margin = #0
    left-margin = #0
    right-margin = #0

    max-systems-per-page = 3
    score-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 10))
    % markup-system-spacing =
    % #'((minimum-distance . 20))
    % system-system-spacing =
    % #'((minimum-distance . 15))
    % annotate-spacing = ##t

  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% PDF %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  % \bookOutputSuffix ""
  \header {
    title = "Ein Traum, Op.48 nº 6"
    subtitle = "Un somni"
    composer = "E. Grieg (1843-1907)"
    arranger = "F. M. von Bodenstedt (1819-1892)"
    poet = "Trad. Joaquim Pena"
    tagline = ##f
    copyright = \markup {
      \center-column {
        \line { "Gravat musical per Robert Garrigós" \with-url #"https://garrigos.cat" "https://garrigos.cat" \with-url #"https://creativecommons.org/licenses/by/4.0/deed.ca" "(CC BY 4.0)" "amb" \with-url #"https://lilypond.org" "Lilypond" "el" \data }
        % \line { "Creative Commons Attribution 4.0 International (CC BY 4.0)" }
      }
    }
  }
  \score {
    <<
      \new Voice = "mel" { \autoBeamOff \melody }
      \new Lyrics \lyricsto mel \catala
      \new Lyrics \lyricsto mel \alemany
      \new PianoStaff \with { \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #0 } <<
        \new Staff = "upper" \upper
        \new Staff = "lower" \lower
      >>
    >>
    \layout {
      #(layout-set-staff-size 16.5)
      \context {
        \PianoStaff
        \consists #Span_stem_engraver
      }
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance
        = #3
        \override TupletNumber.text = ##f
        \override TupletBracket.bracket-visibility = ##f
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
       (stretchability . 20))

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
