\version "2.25.23"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key bf \major
  \time 6/4
  \tempo "Molt lentament"
  \set Score.tempoHideNote = ##t
  \tempo 2.=50
  % \set PianoStaff.connectArpeggios = ##t

}


melody_first = \relative c' {
  \clef treble
  \global

  | R1.
  | r2. r4 r f^\p
  | f2.~2 f4\tweak to-barline ##f^\<
  | fs2.~2 d'4
  | c2.\! bf
  | r2. r4 r bf
  | bf2.~bf2 bf4
  | c2.~^\< c2~ c8 c8\!
  | f1.~
  | f2 r4 r4 r4 bf,
  | bf2.~bf2 bf4\tweak to-barline ##f ^\<
  | b2.~2 g'4
  | f2. \! ef2.~
  | ef2 r4 r r ef
  | ef2.~ef2 g,4
  | c2.^\<~c2^\markup{\italic ritard.}~c8\! bf8
  | bf1.\tweak to-barline ##f ^\>~
  | bf2.\! r4 r4 bf4^\p
  | bf2.~bf2 bf4
  | af2.~^\< af4(bf) cf\!
  | ef2.^\> df2.\!
  | r2. r4 r4 af4
  | bf2.~bf2 bf4
  | af2.~^\< af4( bf) cf
  | df1.~\!
  | df2. r4 r4 df4
  | df2.~ df2 df4
  | cf2.~ cf4^\<( df) eff\!
  | gf2. ff2.
  | r2. r4 r4 cf4
  | df2.~ df2^\< df4
  | ef!2.~ ef2~\! ef8 bf8
  | ef1.~\tweak to-barline ##f^\>
  | ef4\! r4 r4 r4 r4 af,^\p
  | af2.~ af2 af4
  | a!2.~^\< a2 f'4
  | ef2. df2.\!
  | r2. r4 r4 df4
  | df2.~^\< df2 df4
  | ef2.~ ef2 ef4\!
  | <f af>1.~ <f af>4 r4 r4 r4 r4 df4
  | df2.~ df2 df4
  | d!2.~ d2~ d8 bf8
  | f'2. ef2.~
  | ef2 r4 r2.
  | d!2.^>^\f c2~c8 d8
  | ef2.~ ef2~ef8 a,!8
  | ^\>bf1.
  | R1.\!
  | R1.\!
  | R1.\!
  | R1.\!
  | R1.\!
  | R1.\!
  | r2. r4 r4 bf4
  | bf2.~ bf2 bf4
  | b2.~ b2 g'4
  | f2. ef2.~
  | ef2. r2.
  | d2.^>^\f c2~c8 d8
  | ef2.~ ef2(a,8) a8
  | ^\>bf2.~ bf4\! r4 r4
  | R1.
  | R1.
  | R1.
  | R1.
  | R1.
  | R1.
  | R1.^\fermata \bar "|."

}

% melody_second = \relative c'' {
%   \clef treble
%   \global

%   a b c d
% }

catala_first = \lyricmode {
  E -- ixint __ del son __ dol -- cí -- ssim
  te'n vas __ pel prat __ flai -- rós __
  i~en -- dalt __ l'es -- pai __ sens lí -- mit __
  lluu~el cel -- se -- rè~i for -- mós. __

  En tant __ que sens __ cap àn -- sia
  tot dorm __ en san -- ta pau __
  del cel __ quan tren -- ca l'al -- ba
  com plor ro -- sa -- da cau. __

  So -- vint __ la nit se -- cre -- ta
  de molts __ a -- ma -- ga~el plor __
  i l'en -- de -- mà __ hom pen -- sa __
  que~és sem -- pre gai __ llur cor,
  i l'en -- de -- mà __ hom pen -- sa __
  que~és sem -- pre gai __ llur cor.
}

alemany_first = \lyricmode {
  Du bist __ vom Schlaf __ er -- stan -- den
  und wan -- delst durch __ die Au. __
  Da liegt __ ob al -- len Lan -- den __
  der Him -- mel wun -- der -- blau. __

  So lang __ du oh -- ne Sor -- gen
  ge -- schlum -- mert schmerz -- en -- los, __
  der Him -- mel bis __ zum Mor -- gen
  viel Trä -- nen nie -- der -- goß. __

  In stil -- len Näch -- ten wei -- net
  oft man -- cher aus dem Schmerz, __
  und mor -- gens dann, __ ihr mei -- net, __
  stets fröh -- lich sei __ sein Herz,
  und mor -- gens dann, __ ihr mei -- net, __
  stets fröh -- lich sei __ sein Herz.

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
  \override Script.X-offset = 0.4
  \override Script.Y-offset = 2.5
  | \change Staff = "lower" g4\rest^\p \stemUp <d f>4^. ^(<d f>4^. <d f>4^. <d f>4^. <d f>4^.)
  | g4\rest <d f>4^. ^(<d f>4^. <d f>4^. <d f>4^. <d f>4^.)
  | g4\rest <d f>4^. ^(<d f>4^. <d f>4^. <d f>4^.^\< <d f>4^.)
  | g4\rest <d fs>4^. ^(<d fs>4^. <d fs>4^. <d fs>4^. <d fs>4^.)
  \override Script.Y-offset = 3
  | g4\rest <d g>4^. ^(<d g>4^. <d g>4^. <d g>4^. <d g>4^.)\!
  \override Script.Y-offset = 4
  | g4\rest <d fs bf>4^. ^(<d fs bf>4^. <d fs bf>4^. <d fs bf>4^. <d fs bf>4^.)
  | g4\rest <d g bf>4 <d g bf>4 <d g bf>4 <d g bf>4 <d g bf>4
  | g4\rest <f af c>4^\< <f af c>4 <f af c>4 <f af c>4 <f af c>4\!
  \change Staff = "upper"
  | r4 <af bf d f> <af bf d f><af bf d f><af bf d f><af bf d f>
  | r4 <af bf>^\> <af bf> <af bf> <af bf> <af bf>\!
  | r4 <g bf> <g bf> <g bf> <g bf>\< <g bf>
  | r4 <g b> <g b> <g b> <g b> <g b>
  | r4 <g c> <g c>\! <g c> <g c> <g c>
  | r4 <g b ef> <g b ef> <g b ef> <g b ef> <g b ef>
  | r4 <g c ef> <g c ef> <g c ef> <g c ef> <g c ef>
  \change Staff = "lower"
  | g4\rest <ef f a c>^\< <ef f a c> <ef f a c> <ef f a c> <ef f a c>\!
  | g4\rest <d f bf> <d f bf>^\> <d f bf> <d f bf> <d f bf>
  | g4\rest <d f bf> <d f bf> <d f bf> <d f bf> <d f bf>\!
  \override Script.Y-offset = 3.8
  | g4\rest^\pp <df gf bf>^. ^(<df gf bf>^. <df gf bf>^. <df gf bf>^. <df gf bf>^.)
  | g4\rest <df f af>^.^\< ^(<df f af>^. <df f af>^.  <df gf bf>^. \override Script.Y-offset = 4 <df af' cf>^.)\!
  \override Script.Y-offset = 4.5
  | g4\rest <df bf' df>^. ^(<df bf' df>^. <df bf' df>^. <df bf' df>^. <df bf' df>^.)
  | g4\rest <df f af>^.^\< ^(<df f af>^. <df f af>^.  <df gf bf>^. \override Script.Y-offset = 4 <df af' cf>^.)\!
  | g4\rest <df cf' ef>^( <df bf' df>) <df bf' df><df bf' df><df bf' df>
  | g4\rest <df f af>^\< <df f af> <df f af>  <df gf bf> \override Script.Y-offset = 4 <df af' cf>\!
  | g4\rest <df bf' df> <df bf' df> <df bf' df> <df bf' df> <df bf' df>
  \change Staff = "upper"
  | r4 <ff bff df> <ff bff df> <ff bff df> <ff bff df> <ff bff df>
  | r4 <ff bff df> <ff bff df> <ff bff df> <ff bff df>\< <ff bff df>
  | r4 <ff af cf> <ff af cf> <ff af cf> <ff bff df> <ff cf' eff>
  | r4 <ff df' ff> <ff df' ff>\! <ff df' ff> <ff df' ff> <ff df' ff>
  | r4 <ff af cf>\< <ff af cf> <ff af cf> <ff bff df> <ff cf' eff>\!
  | r4 <ff bff df> <ff bff df>\< <ff bff df> <ff bff df> <ff bff df>
  | r4 <g! bf! df ef!> <g bf df ef> <g bf df ef> <g bf df ef> <g bf df ef>\!
  | r4 <gf af c ef> <gf af c ef> <gf af c ef> <gf af c ef> <gf af c ef>
  | r4 <gf af c ef>\> <gf af c ef> <gf af c e> <gf af c e> <gf af c e>\!
  | r4 <af df f> <af df f> <af df f> <af df f> <af df f>
  | r4 <a! df f>\< <a df f> <a df f> <a df f> <a df f>
  | r4 <bf df f> <bf df f> <bf df f> <bf df f> <bf df f>\!
  | r4 <a! df f> <a df f> <a df f> <a df f> <a df f>
  | r4 <bf df f>\< <bf df f> <bf df f> <bf df f> <bf df f>
  | r4 <cf ef af> <cf ef af> <cf ef af> <cf ef af> <cf ef af>\!
  | r4 <cf df f af> <cf df f af> <cf df f af> <cf df f af> <cf df f af>
  | r4 <cf df f a!> <cf df f a> <cf df f a> <cf df f a> <cf df f a>
  | r4 <bf gf' bf> <bf gf' bf> <bf gf' bf> <bf gf' bf> <bf gf' bf>
  | r4 <bf f' bf>\< <bf f' bf> <bf f' bf> <bf f' bf> <bf f' bf>\!
  | r4 <bf af' bf> <bf af' bf> <bf gf' bf> <bf gf' bf> <bf gf' bf>
  | r4 <c gf' bf c>\< <c gf' bf c> <c gf' bf c> <c gf' bf c> <c gf' bf c>\!
  | r4 <d! f bf d!> <d f bf d> <d f bf c> <d f bf c> <d f bf d>
  | <<
    \new Voice {
      \voiceOne  r4 <ef f>\> <ef f> <ef f> <ef f> <ef f>\!}
    \\
    \new Voice{
      \voiceTwo s2. s4 s4 s8 \change Staff = "lower" \stemUp f,8^\markup { "r.H." } }
  >>
  \change Staff = "lower"
  <<
    \new Voice {
      \voiceOne  | \once \override Dots.extra-offset = #'(-1 . 0) f1. |  fs2.\once \shape #'((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))( \once \override NoteColumn.force-hshift = 1.2    fs2) \shape #'((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))(\once \override NoteColumn.force-hshift = 1.2  fs8)( \change Staff = "upper" \stemDown d'8)}
    \\
    \new Voice{
      \voiceTwo  c4\rest \stemUp <d, bf'>^\< <d bf'> <d bf'> <d bf'> <d bf'> | \override Stem.length = 8.5 s4 <d bf'> <d bf'> <d bf'>  <d bf'> <d bf'>\!}
  >>
  \change Staff = "upper"
  | <<
    \new Voice {
      \voiceOne c'2. bf2.~ | bf2.~ bf2~ bf8 bf8
      | bf2.~\< bf2~ bf8 bf8\! }
    \\
    \new Voice{
      \voiceTwo \change Staff = "lower" \stemUp ef,4\rest <d g> <d g> <d g> <d g> <d g>
      | ef4\rest <d fs> <d fs> <d fs> <d fs> <d fs>
      | ef4\rest <d g> <d g> <d g> <d g> <d g> }
  >>
  | \grace {b'16 c d} \afterGrace 15/16 c1.\startTrillSpan {b16 c} \stopTrillSpan
  | <<
    \new Voice {
      \voiceOne f1.~^> | f4 <af, bf fs'>\< <af bf fs'> <af bf fs'> <af bf fs'> <af bf fs'>\! }
    \\
    \new Voice{
      \voiceTwo r4  <af bf> <af bf> <af bf> <af bf> <af bf> }
  >>
  | r4 <bf ef g> <bf ef g> <bf ef g> <bf ef g> <bf ef g>
  | r4 <b ef g>\< <b ef g> <b ef g> <b ef g> <b ef g>
  | r4 <c ef g> <c ef g>\! <c ef g> <c ef g> <c ef g>
  | r4 <c g' bf c> <c g' bf c> <c g' bf c> <c g' bf c> <c g' bf c>
  | r4\ff <d f bf d> <d f bf d> <d f bf d> <d f bf d> <d f bf d>
  | r4 <ef a c ef>\> <ef a c ef> <ef a c ef> <ef a c ef> <ef a>\!
  | <<
    \new Voice {
      \voiceOne bf'2.~ (bf4 a g) }
    \\
    \new Voice{
      \voiceTwo \override Script.X-offset = 0.6
      \override Script.Y-offset = -4
      r4\p <bf, c e>_. (<bf c e>_. <bf c e>_. <bf c e>_. <bf c e>_.) }
  >>
  | <<
    \new Voice {
      \voiceOne f'2.~ (f4 e d) }
    \\
    \new Voice{
      \voiceTwo \override Script.X-offset = 0.6
      \override Script.Y-offset = -4
      r4 <bf c>_.( <bf c>_. <bf c>_. <bf c>_. bf_.) }
  >>
  | <<
    \new Voice {
      \voiceOne \acciaccatura <ef,! a c>8 ef''!2.~ (ef4 d c
      | bf2.~ bf4 a g) }
    \\
    \new Voice{
      \override Script.X-offset = 0.5
      \override Script.Y-offset = -3
      \voiceTwo r4 <ef f a>_.(<ef f a>_. <ef f a>_. <ef f a>_. <ef f a>_.)
      | r4 <ef f> <ef f> <ef f> <ef f> ef }
  >>
  | <<
    \new Voice {
      \voiceOne f'2.\once \shape #'((0 . 0) (0 . 3) (0 . 3) (-2 . 1.5))( ef4. af,8 \tuplet 5/4 {af16[ bf af g af]}
      | \once \override DynamicLineSpanner.outside-staff-priority = ##f \once \override DynamicLineSpanner.Y-offset = 4.5 d2.^\> c2.\!
      | bf2. \once \override TextScript.outside-staff-priority = ##f \once \override TextScript.Y-offset = 3 g4.^\markup {\italic ritard.} ef8\> \tuplet 5/4 {ef16 f ef d ef\!}
      | bf'4 \once \override TextScript.outside-staff-priority = ##f \once \override TextScript.Y-offset = 1.9 <g, bf ef>4^\markup {Adagio} <e bf' cs>4 <f bf d>2.\fermata \bar "|.") }
    \\
    \new Voice{
      \voiceTwo r4 <d' af'>4 <d af'> r4 <ef af> ef
      | r4 <d af'> <d af'> r <c g' af> <c g' af>
      | r4 <bf f'> <bf f'> r4 <bf ef>( <a! c>)
      | r\p s2 s2. }
  >>


}

lower = \relative c, {
  \clef bass
  \global

  | <<
    \new Voice {
      \voiceOne bf4 \sustainOn \stemDown <f' bf>4 <f bf>4 <f bf>4 <f bf>4 <f bf>4 | g4\rest <f bf>4 <f bf>4 <f bf>4 <f bf>4 <f bf>4
    }
    \\
    \new Voice{
      \voiceTwo bf,1.~ |  bf1.
    }
  >>

  | <<
    \new Voice {
      \voiceOne bf4 \stemDown bf'4 bf4 bf4 bf4 bf4 | g4\rest bf4 bf4 bf4 bf4 bf4
    }
    \\
    \new Voice{
      \voiceTwo bf,1.~ |  bf1.
    }
  >>
  | <<
    \new Voice {
      \voiceOne
      bf4 \stemDown bf'4 bf4 bf4 bf4 bf4
    }
    \\
    \new Voice{
      \voiceTwo bf,1.
    }
  >>
  | <<
    \new Voice {
      \voiceOne a4 \stemDown a' a a a a
    }
    \\
    \new Voice{
      \voiceTwo a,1.
    }
  >>
  | <<
    \new Voice {
      \voiceOne g4 \stemDown g' g g g g
    }
    \\
    \new Voice{
      \voiceTwo g,1.
    }
  >>
  | <<
    \new Voice {
      \voiceOne f4 \stemDown f' f f f f
    }
    \\
    \new Voice{
      \voiceTwo f,1.
    }
  >>
  | <<
    \new Voice {
      \voiceOne s1. |  r4 \crossStaff {f'' f f f f}
    }
    \\
    \new Voice {
      \voiceTwo bf,,4 bf' bf bf bf bf | s4 <bf d> <bf d> <bf d> <bf d> <bf d>
    }
    \\
    \new Voice{
      \voiceThree bf,1._~ | bf1.
    }
  >>
  | <<
    \new Voice {
      \voiceOne ef4^\p <bf' ef> <bf ef> <bf ef> <bf ef> <bf ef>
      | r4 <b ef> <b ef> <b ef> <b ef> <b ef>
      | r4 <c ef> <c ef> <c ef> <c ef> <c ef>}
    \\
    \new Voice{
      \voiceTwo  ef,1.~ | ef1.~ | ef1.}
  >>
  | <<
    \new Voice {
      \voiceOne d4 d' d d d d | c, c' c c c c  }
    \\
    \new Voice{
      \voiceTwo d,1. | c1. }
  >>
  | <<
    \new Voice {
      \voiceOne f,4 \stemDown f' f f f }
    \\
    \new Voice{
      \voiceTwo f,1. }
  >>
  | <<
    \new Voice {
      \voiceOne bf4 \stemDown <f' bf> <f bf> <f bf> <f bf> <f bf> | \stemUp bf,4 \stemDown <f' bf> <f bf> <f bf> <f bf> <f bf>  }
    \\
    \new Voice{
      \voiceTwo bf,1.~ | bf1. }
  >>
  | <<
    \new Voice {
      \voiceOne \override Stem.length = 7 gf4 \once \shape #'((-1 . 2.5) (0 . 2) (0 . 1) (0 . 0))(\stemDown gf') gf gf gf gf }
    \\
    \new Voice{
      \voiceTwo gf,1. }
  >>
  | <<
    \new Voice {
      \voiceOne \override Stem.length = 7 gf4 \once \shape #'((-1 . 2.5) (0 . 2) (0 . 1) (0 . 0))(\stemDown gf') gf gf gf gf }
    \\
    \new Voice{
      \voiceTwo gf,1. }
  >>
  | <<
    \new Voice {
      \voiceOne \override Stem.length = 7 gf4 \once \shape #'((-1 . 2.5) (0 . 2) (0 . 1) (0 . 0))(\stemDown gf') gf gf gf gf }
    \\
    \new Voice{
      \voiceTwo gf,1. }
  >>
  | <<
    \new Voice {
      \voiceOne \override Stem.length = 7 gf4 \once \shape #'((-1 . 2.5) (0 . 2) (0 . 1) (0 . 0))(\stemDown gf') gf gf gf gf }
    \\
    \new Voice{
      \voiceTwo gf,1. }
  >>
  | <<
    \new Voice {
      \voiceOne \override Stem.length = 7 gf4 \once \shape #'((-1 . 2.5) (0 . 2) (0 . 1) (0 . 0))(\stemDown gf') gf gf gf gf }
    \\
    \new Voice{
      \voiceTwo gf,1. }
  >>
  | <<
    \new Voice {
      \voiceOne \override Stem.length = 7 gf4 \once \shape #'((-1 . 2.5) (0 . 2) (0 . 1) (0 . 0))(\stemDown gf') gf gf gf gf }
    \\
    \new Voice{
      \voiceTwo gf,1. }
  >>
  | <<
    \new Voice {
      \voiceOne \override Stem.length = 7 gf4 \once \shape #'((-1 . 2.5) (0 . 2) (0 . 1) (0 . 0))(\stemDown gf') gf gf gf gf }
    \\
    \new Voice{
      \voiceTwo gf,1. }
  >>
  | <<
    \new Voice {
      \voiceOne bff4(bff') bff bff bff bff }
    \\
    \new Voice{
      \voiceTwo bff,1. }
  >>
  | <<
    \new Voice {
      \voiceOne bff4(bff') bff bff bff bff }
    \\
    \new Voice{
      \voiceTwo bff,1. }
  >>
  | <<
    \new Voice {
      \voiceOne bff4(bff') bff bff bff bff }
    \\
    \new Voice{
      \voiceTwo bff,1. }
  >>
  | <<
    \new Voice {
      \voiceOne bff4 bff' bff bff bff bff }
    \\
    \new Voice{
      \voiceTwo bff,1. }
  >>
  | <<
    \new Voice {
      \voiceOne bff4 bff' bff bff bff bff }
    \\
    \new Voice{
      \voiceTwo bff,1. }
  >>
  | <<
    \new Voice {
      \voiceOne bff4 bff' bff bff bff bff }
    \\
    \new Voice{
      \voiceTwo bff,1. }
  >>
  | <<
    \new Voice {
      \voiceOne ef'4\rest <bf! ef> <bf ef> <bf ef> <bf ef> <bf ef> }
    \\
    \new Voice{
      \voiceTwo  ef,,1.\sustainOn}
  >>
  | <<
    \new Voice {
      \voiceOne ef''4\rest^\f <af,! ef'> <af ef'> <af ef'> <af ef'> <af ef'> | ef'4\rest <af,! ef'> <af ef'> af af af }
    \\
    \new Voice{
      \voiceTwo  af,1.~\sustainOn | af1.}
  >>
  | <<
    \new Voice {
      \voiceOne df4 <df' f> <df f> <df f> <df f> <df f> | r4 <df f> <df f> <df f> <df f> <df f>}
    \\
    \new Voice{
      \voiceTwo  df,1.~ | df1.}
  >>
  | <<
    \new Voice {
      \voiceOne  r4 <df' f> <df f> <df f> <df f> <df f>}
    \\
    \new Voice{
      \voiceTwo  df,1. }
  >>
  | <<
    \new Voice {
      \voiceOne  r4 <df' f> <df f> <df f> <df f> <df f>}
    \\
    \new Voice{
      \voiceTwo  c,1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne  r4 <df' f> <df f> <df f> <df f> <df f>}
    \\
    \new Voice{
      \voiceTwo  <bf, bf'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne r4 <cf' ef af> <cf ef af> <cf ef af> <cf ef af> <cf ef af> }
    \\
    \new Voice{
      \voiceTwo <af, af'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne r4 <df' f> <df f> <df f> <df f> <df f> | r4 <df f> <df f> <df f> <df f> <df f>}
    \\
    \new Voice{
      \voiceTwo \override Script.Y-offset = -1 <df,, df'>1.^>~\sustainOn | <df df'>1. }
  >>
  | <<
    \new Voice {
      \voiceOne r4 <df'' gf df'> <df gf df'> <df gf df'> <df gf df'> <df gf df'> | r4 <d! f> <d f> <d f> <d f> <d f>}
    \\
    \new Voice{
      \voiceTwo \override Script.Y-offset = 0 <gf,, gf'>1.^>~\sustainOn | <gf gf'>1. }
  >>
  | <<
    \new Voice {
      \voiceOne g''4\rest <d f af> <d f af> <ef gf> <ef gf> <ef gf>}
    \\
    \new Voice{
      \voiceTwo <gf,, gf'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne g''4\rest <ef gf bf> <ef gf bf> <ef gf bf> <ef gf bf> <ef gf bf> }
    \\
    \new Voice{
      \voiceTwo  <ef,, ef'>1. \sustainOn}
  >>
  | <<
    \new Voice {
      \voiceOne g''4\rest^\f <f bf> <f bf> <f bf> <f bf> <f bf> }
    \\
    \new Voice{
      \voiceTwo <f,, f'>1. \sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne g''4\rest <f a> <f a> <f a> <f a> <f a>  }
    \\
    \new Voice{
      \voiceTwo <f,, f'>1. }
  >>
  | <<
    \new Voice {
      \voiceOne   \once \override NoteColumn.force-hshift = #0  bf4 \stemDown bf' bf bf bf bf | s4 bf bf bf bf bf }
    \\
    \new Voice{
      \voiceTwo  \once \override NoteColumn.force-hshift = #0.7 bf,1.~ | bf1.}
  >>
  |
  <<
    \new Voice {
      \voiceOne bf4 \stemDown bf' bf bf bf bf
      | s1.}
    \\
    \new Voice{
      \voiceTwo  bf,1.~
      | bf4 \grace{ b16 c d} c2~\startTrillSpan \afterGrace 15/16 c2.\stopTrillSpan  {b16 c}
      }
  >>
  <<
    \new Voice {
      \voiceOne g!4 \stemDown g' g g g g }
    \\
    \new Voice{
      \voiceTwo  g,1.}
  >>
  | <<
    \new Voice {
      \voiceOne ef''4\rest <c f af> <c f af> <c f af> <c f af> <c f af> }
    \\
    \new Voice{
      \voiceTwo  <f,, f'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne ef''4\rest <d f> <d f> <d f> <d f> <d f>
      | ef4\rest <d fs> <d fs> <d fs> <d fs> <d fs> }
    \\
    \new Voice{
      \voiceTwo <bf,, bf'>1.~\sustainOn <bf bf'>1. }
  >>
  | <<
    \new Voice {
      \voiceOne ef''4\rest <ef g> <ef g> <ef g> <ef g> <ef g>}
    \\
    \new Voice{
      \voiceTwo <ef,, ef'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne ef''4\rest <ef g> <ef g> <ef g> <ef g> <ef g>}
    \\
    \new Voice{
      \voiceTwo <d,, d'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne ef''4\rest <ef g> <ef g> <ef g> <ef g> <ef g>}
    \\
    \new Voice{
      \voiceTwo <c,, c'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne ef''4\rest <ef g bf> <ef g bf> <ef g bf> <ef g bf> <ef g bf>}
    \\
    \new Voice{
      \voiceTwo <ef,, ef'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne ef''4\rest <f bf> <f bf> <f bf> <f bf> <f bf> }
    \\
    \new Voice{
      \voiceTwo <f,, f'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne r4 <f'' a c> <f a c> <f a c> <f a c> <f a c> }
    \\
    \new Voice{
      \voiceTwo f,1.\sustainOn }
  >>
  | \slashedGrace g,8 g'2.~ (g4 fs8 g a bf
  | <c, c')>2.~\shape #'((0 . 0) (4 . -3) (3 . -3) (2.7 . -1.5))(<c c'>4  \once \override DynamicLineSpanner.outside-staff-priority = ##f \once \override DynamicLineSpanner.Y-offset = -4.5 b8\< c d e\!)
  | <<
    \new Voice {
      \voiceOne r4  c'2~ (c4 b8 c d ef)}
    \\
    \new Voice{
      \voiceTwo f,4 r4 r4 d2.\rest }
  >>
  | <f f'>2.~ (<f f'>4 e8^\< f g a\!)
  | <<
    \new Voice {
      \voiceOne r4 <f' bf> <f bf> r4 <ef af c> <ef af c>
      | r4 <f af> <f af> ef4. (af,8 \tuplet 5/4 {af16 bf af g af})
      | s1.}
    \\
    \new Voice{
      \voiceTwo  <bf, bf'>2.(\sustainOn <c c'>\sustainOn
      | <f f'>\sustainOn <ef ef'>\sustainOn
      | <d d'> <ef ef'>)}
  >>
  | \slashedGrace {bf8} bf'4. bf8 \tuplet 5/4 {bf16(c bf a bf~} <bf, bf'>2.)_\fermata



  \label #'lastPage
}

titol = "Stille Thränen, Op. 35, n. 10"
subtitol = "Llarmes secretes"
compositor = "R. Schumann (1810-1856)"
lletrista = "J. Kerner (1786-1862)"
traductor = "Trad. J. Pena (1873-1944)"


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
      \new Voice = "mel_f" { \set Staff.midiInstrument = "voice oohs" \autoBeamOff \melody_first }
      \new Lyrics \lyricsto mel_f \catala_first
      \new Lyrics \with {
        \override LyricText.font-shape = #'italic
      } \lyricsto mel_f \alemany_first
      % \new Voice = "mel_s" { \autoBeamOff \melody_second }
      % \new Lyrics \lyricsto mel_s \catala_second
      % \new Lyrics \lyricsto mel_s \alemany_second
      \new PianoStaff <<
        \new Staff = "upper" \upper
        \new Staff = "lower" \lower
      >>
    >>
    \layout {
      #(layout-set-staff-size 16.4)
      \context {
        \Staff
        % \RemoveEmptyStaves
        \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #3
      }
      \context {
        \PianoStaff
        \consists "Span_stem_engraver"
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
