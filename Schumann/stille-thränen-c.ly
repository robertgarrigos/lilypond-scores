\version "2.25.23"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key c \major
  \time 6/4
  \tempo "Molt lentament"
  \set Score.tempoHideNote = ##t
  \tempo 2.=50
  % \set PianoStaff.connectArpeggios = ##t

}


melody_first = \relative c'' {
  \clef treble
  \global

  | R1.
  | r2. r4 r g^\p
  | g2.~2 g4\tweak to-barline ##f^\<
  | gs2.~2 e'4
  | d2.\! c
  | r2. r4 r c
  | c2.~c2 c4
  | d2.~^\< d2~ d8 d8\!
  | g1.~
  | g2 r4 r4 r4 c,
  | c2.~c2 c4\tweak to-barline ##f ^\<
  | cs2.~2 a'4
  | g2. \! f2.~
  | f2 r4 r r f
  | f2.~f2 a,4
  | d2.^\<~d2^\markup{\italic ritard.}~d8\! c8
  | c1.\tweak to-barline ##f ^\>~
  | c2.\! r4 r4 c4^\p
  | c2.~c2 c4
  | bf2.~^\< bf4(c) df\!
  | f2.^\> ef2.\!
  | r2. r4 r4 bf4
  | c2.~c2 c4
  | bf2.~^\< bf4( c) df
  | ef1.~\!
  | ef2. r4 r4 ef4
  | ef2.~ ef2 ef4
  | df2.~ df4^\<( ef) ff\!
  | af2. gf2.
  | r2. r4 r4 df4
  | ef2.~ ef2^\< ef4
  | f!2.~ f2~\! f8 c8
  | f1.~\tweak to-barline ##f^\>
  | f4\! r4 r4 r4 r4 bf,^\p
  | bf2.~ bf2 bf4
  | b!2.~^\< b2 g'4
  | f2. ef2.\!
  | r2. r4 r4 ef4
  | ef2.~^\< ef2 ef4
  | f2.~ f2 f4\!
  | <g bf>1.~ <g bf>4 r4 r4 r4 r4 ef4
  | ef2.~ ef2 ef4
  | e!2.~ e2~ e8 c8
  | g'2. f2.~
  | f2 r4 r2.
  | e!2.^>^\f d2~d8 e8
  | f2.~ f2~f8 b,!8
  | ^\>c1.
  | R1.\!
  | R1.\!
  | R1.\!
  | R1.\!
  | R1.\!
  | R1.\!
  | r2. r4 r4 c4
  | c2.~ c2 c4
  | cs2.~ cs2 a'4
  | g2. f2.~
  | f2. r2.
  | e2.^>^\f d2~d8 e8
  | f2.~ f2(b,8) b8
  | ^\>c2.~ c4\! r4 r4
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

upper = \relative c'' {
  \clef treble
  \global
  \override Script.X-offset = 0.4
  \override Script.Y-offset = 2.5
  | \change Staff = "lower" a,4\rest^\p \stemUp <e g>4^. ^(<e g>4^. <e g>4^. <e g>4^. <e g>4^.)
  | a4\rest <e g>4^. ^(<e g>4^. <e g>4^. <e g>4^. <e g>4^.)
  | a4\rest <e g>4^. ^(<e g>4^. <e g>4^. <e g>4^.^\< <e g>4^.)
  | a4\rest <e gs>4^. ^(<e gs>4^. <e gs>4^. <e gs>4^. <e gs>4^.)
  \override Script.Y-offset = 3
  | a4\rest <e a>4^. ^(<e a>4^. <e a>4^. <e a>4^. <e a>4^.)\!
  \override Script.Y-offset = 4
  | a4\rest <e gs c>4^. ^(<e gs c>4^. <e gs c>4^. <e gs c>4^. <e gs c>4^.)
  | a4\rest <e a c>4 <e a c>4 <e a c>4 <e a c>4 <e a c>4
  | a4\rest <g bf d>4^\< <g bf d>4 <g bf d>4 <g bf d>4 <g bf d>4\!
  \change Staff = "upper"
  | r4 <bf c e g> <bf c e g><bf c e g><bf c e g><bf c e g>
  | r4 <bf c>^\> <bf c> <bf c> <bf c> <bf c>\!
  | r4 <a c> <a c> <a c> <a c>\< <a c>
  | r4 <a cs> <a cs> <a cs> <a cs> <a cs>
  | r4 <a d> <a d>\! <a d> <a d> <a d>
  | r4 <a cs f> <a cs f> <a cs f> <a cs f> <a cs f>
  | r4 <a d f> <a d f> <a d f> <a d f> <a d f>
  \change Staff = "lower"
  | a4\rest <f g b d>^\< <f g b d> <f g b d> <f g b d> <f g b d>\!
  | a4\rest <e g c> <e g c>^\> <e g c> <e g c> <e g c>
  | a4\rest <e g c> <e g c> <e g c> <e g c> <e g c>\!
  \override Script.Y-offset = 3.8
  | a4\rest^\pp <ef af c>^. ^(<ef af c>^. <ef af c>^. <ef af c>^. <ef af c>^.)
  | a4\rest <ef g bf>^.^\< ^(<ef g bf>^. <ef g bf>^.  <ef af c>^. \override Script.Y-offset = 4 <ef bf' df>^.)\!
  \override Script.Y-offset = 4.5
  | a4\rest <ef c' ef>^. ^(<ef c' ef>^. <ef c' ef>^. <ef c' ef>^. <ef c' ef>^.)
  | a4\rest <ef g bf>^.^\< ^(<ef g bf>^. <ef g bf>^.  <ef af c>^. \override Script.Y-offset = 4 <ef bf' df>^.)\!
  | a4\rest <ef df' f>^( <ef c' ef>) <ef c' ef><ef c' ef><ef c' ef>
  | a4\rest <ef g bf>^\< <ef g bf> <ef g bf>  <ef af c> \override Script.Y-offset = 4 <ef bf' df>\!
  | a4\rest <ef c' ef> <ef c' ef> <ef c' ef> <ef c' ef> <ef c' ef>
  \change Staff = "upper"
  | r4 <gf cf ef> <gf cf ef> <gf cf ef> <gf cf ef> <gf cf ef>
  | r4 <gf cf ef> <gf cf ef> <gf cf ef> <gf cf ef>\< <gf cf ef>
  | r4 <gf bf df> <gf bf df> <gf bf df> <gf cf ef> <gf df' ff>
  | r4 <gf ef' gf> <gf ef' gf>\! <gf ef' gf> <gf ef' gf> <gf ef' gf>
  | r4 <gf bf df>\< <gf bf df> <gf bf df> <gf cf ef> <gf df' ff>\!
  | r4 <gf cf ef> <gf cf ef>\< <gf cf ef> <gf cf ef> <gf cf ef>
  | r4 <a! c! ef f!> <a c ef f> <a c ef f> <a c ef f> <a c ef f>\!
  | r4 <af bf d f> <af bf d f> <af bf d f> <af bf d f> <af bf d f>
  | r4 <af bf d f>\> <af bf d f> <af bf d fs> <af bf d fs> <af bf d fs>\!
  | r4 <bf ef g> <bf ef g> <bf ef g> <bf ef g> <bf ef g>
  | r4 <b! ef g>\< <b ef g> <b ef g> <b ef g> <b ef g>
  | r4 <c ef g> <c ef g> <c ef g> <c ef g> <c ef g>\!
  | r4 <b! ef g> <b ef g> <b ef g> <b ef g> <b ef g>
  | r4 <c ef g>\< <c ef g> <c ef g> <c ef g> <c ef g>
  | r4 <df f bf> <df f bf> <df f bf> <df f bf> <df f bf>\!
  | r4 <df ef g bf> <df ef g bf> <df ef g bf> <df ef g bf> <df ef g bf>
  | r4 <df ef g b!> <df ef g b> <df ef g b> <df ef g b> <df ef g b>
  | r4 <c af' c> <c af' c> <c af' c> <c af' c> <c af' c>
  | r4 <c g' c>\< <c g' c> <c g' c> <c g' c> <c g' c>\!
  | r4 <c bf' c> <c bf' c> <c af' c> <c af' c> <c af' c>
  | r4 <d af' c d>\< <d af' c d> <d af' c d> <d af' c d> <d af' c d>\!
  | r4 <e! g c e!> <e g c e> <e g c d> <e g c d> <e g c e>
  | <<
    \new Voice {
      \voiceOne  r4 <f g>\> <f g> <f g> <f g> <f g>\!}
    \\
    \new Voice{
      \voiceTwo s2. s4 s4 s8 \change Staff = "lower" \stemUp g,8^\markup { "r.H." } }
  >>
  \change Staff = "lower"
  <<
    \new Voice {
      \voiceOne  | \once \override Dots.extra-offset = #'(-1 . 0) g1. |  gs2.\once \shape #'((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))( \once \override NoteColumn.force-hshift = 1.2    gs2) \shape #'((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))(\once \override NoteColumn.force-hshift = 1.2  gs8)( \change Staff = "upper" \stemDown e'8)}
    \\
    \new Voice{
      \voiceTwo  d4\rest \stemUp <e, c'>^\< <e c'> <e c'> <e c'> <e c'> | \override Stem.length = 8.5 s4 <e c'> <e c'> <e c'>  <e c'> <e c'>\!}
  >>
  \change Staff = "upper"
  | <<
    \new Voice {
      \voiceOne d'2. c2.~ | c2.~ c2~ c8 c8
      | c2.~\< c2~ c8 c8\! }
    \\
    \new Voice{
      \voiceTwo \change Staff = "lower" \stemUp f,4\rest <e a> <e a> <e a> <e a> <e a>
      | f4\rest <e gs> <e gs> <e gs> <e gs> <e gs>
      | f4\rest <e a> <e a> <e a> <e a> <e a> }
  >>
  | \grace {cs'16 d e} \afterGrace 15/16 d1.\startTrillSpan {cs16 d} \stopTrillSpan
  | <<
    \new Voice {
      \voiceOne g1.~^> | g4 <bf, c gs'>\< <bf c gs'> <bf c gs'> <bf c gs'> <bf c gs'>\! }
    \\
    \new Voice{
      \voiceTwo r4  <bf c> <bf c> <bf c> <bf c> <bf c> }
  >>
  | r4 <c f a> <c f a> <c f a> <c f a> <c f a>
  | r4 <cs f a>\< <cs f a> <cs f a> <cs f a> <cs f a>
  | r4 <d f a> <d f a>\! <d f a> <d f a> <d f a>
  | r4 <d a' c d> <d a' c d> <d a' c d> <d a' c d> <d a' c d>
  | r4\ff <e g c e> <e g c e> <e g c e> <e g c e> <e g c e>
  | r4 <f b d f>\> <f b d f> <f b d f> <f b d f> <f b>\!
  | <<
    \new Voice {
      \voiceOne c'2.~ (c4 b a) }
    \\
    \new Voice{
      \voiceTwo \override Script.X-offset = 0.6
      \override Script.Y-offset = -4
      r4\p <c, d fs>_. (<c d fs>_. <c d fs>_. <c d fs>_. <c d fs>_.) }
  >>
  | <<
    \new Voice {
      \voiceOne g'2.~ (g4 fs e) }
    \\
    \new Voice{
      \voiceTwo \override Script.X-offset = 0.6
      \override Script.Y-offset = -4
      r4 <c d>_.( <c d>_. <c d>_. <c d>_. c_.) }
  >>
  | <<
    \new Voice {
      \voiceOne \acciaccatura <f,! b d>8 f''!2.~ (f4 e d
      | c2.~ c4 b a) }
    \\
    \new Voice{
      \override Script.X-offset = 0.5
      \override Script.Y-offset = -3
      \voiceTwo r4 <f g b>_.(<f g b>_. <f g b>_. <f g b>_. <f g b>_.)
      | r4 <f g> <f g> <f g> <f g> f }
  >>
  | <<
    \new Voice {
      \voiceOne g'2.\once \shape #'((0 . 0) (0 . 3) (0 . 3) (-2 . 1.5))( f4. bf,8 \tuplet 5/4 {bf16[ c bf a bf]}
      | \once \override DynamicLineSpanner.outside-staff-priority = ##f \once \override DynamicLineSpanner.Y-offset = 4.5 e2.^\> d2.\!
      | c2. \once \override TextScript.outside-staff-priority = ##f \once \override TextScript.Y-offset = 3 a4.^\markup {\italic ritard.} f8\> \tuplet 5/4 {f16 g f e f\!}
      | c'4 \once \override TextScript.outside-staff-priority = ##f \once \override TextScript.Y-offset = 1.9 <a, c f>4^\markup {Adagio} <fs c' ds>4 <g c e>2.\fermata \bar "|.") }
    \\
    \new Voice{
      \voiceTwo r4 <e' bf'>4 <e bf'> r4 <f bf> f
      | r4 <e bf'> <e bf'> r <d a' bf> <d a' bf>
      | r4 <c g'> <c g'> r4 <c f>( <b! d>)
      | r\p s2 s2. }
  >>


}

lower = \relative c {
  \clef bass
  \global

  | <<
    \new Voice {
      \voiceOne c,4 \sustainOn \stemDown <g' c>4 <g c>4 <g c>4 <g c>4 <g c>4 | a4\rest <g c>4 <g c>4 <g c>4 <g c>4 <g c>4
    }
    \\
    \new Voice{
      \voiceTwo c,1.~ |  c1.
    }
  >>

  | <<
    \new Voice {
      \voiceOne c4 \stemDown c'4 c4 c4 c4 c4 | a4\rest c4 c4 c4 c4 c4
    }
    \\
    \new Voice{
      \voiceTwo c,1.~ |  c1.
    }
  >>
  | <<
    \new Voice {
      \voiceOne
      c4 \stemDown c'4 c4 c4 c4 c4
    }
    \\
    \new Voice{
      \voiceTwo c,1.
    }
  >>
  | <<
    \new Voice {
      \voiceOne b4 \stemDown b' b b b b
    }
    \\
    \new Voice{
      \voiceTwo b,1.
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
      \voiceOne s1. |  r4 \crossStaff {g'' g g g g}
    }
    \\
    \new Voice {
      \voiceTwo c,,4 c' c c c c | s4 <c e> <c e> <c e> <c e> <c e>
    }
    \\
    \new Voice{
      \voiceThree c,1._~ | c1.
    }
  >>
  | <<
    \new Voice {
      \voiceOne f4^\p <c' f> <c f> <c f> <c f> <c f>
      | r4 <cs f> <cs f> <cs f> <cs f> <cs f>
      | r4 <d f> <d f> <d f> <d f> <d f>}
    \\
    \new Voice{
      \voiceTwo  f,1.~ | f1.~ | f1.}
  >>
  | <<
    \new Voice {
      \voiceOne e4 e' e e e e | d, d' d d d d  }
    \\
    \new Voice{
      \voiceTwo e,1. | d1. }
  >>
  | <<
    \new Voice {
      \voiceOne g,4 \stemDown g' g g g }
    \\
    \new Voice{
      \voiceTwo g,1. }
  >>
  | <<
    \new Voice {
      \voiceOne c4 \stemDown <g' c> <g c> <g c> <g c> <g c> | \stemUp c,4 \stemDown <g' c> <g c> <g c> <g c> <g c>  }
    \\
    \new Voice{
      \voiceTwo c,1.~ | c1. }
  >>
  | <<
    \new Voice {
      \voiceOne \override Stem.length = 7 af4 \once \shape #'((-1 . 2.5) (0 . 2) (0 . 1) (0 . 0))(\stemDown af') af af af af }
    \\
    \new Voice{
      \voiceTwo af,1. }
  >>
  | <<
    \new Voice {
      \voiceOne \override Stem.length = 7 af4 \once \shape #'((-1 . 2.5) (0 . 2) (0 . 1) (0 . 0))(\stemDown af') af af af af }
    \\
    \new Voice{
      \voiceTwo af,1. }
  >>
  | <<
    \new Voice {
      \voiceOne \override Stem.length = 7 af4 \once \shape #'((-1 . 2.5) (0 . 2) (0 . 1) (0 . 0))(\stemDown af') af af af af }
    \\
    \new Voice{
      \voiceTwo af,1. }
  >>
  | <<
    \new Voice {
      \voiceOne \override Stem.length = 7 af4 \once \shape #'((-1 . 2.5) (0 . 2) (0 . 1) (0 . 0))(\stemDown af') af af af af }
    \\
    \new Voice{
      \voiceTwo af,1. }
  >>
  | <<
    \new Voice {
      \voiceOne \override Stem.length = 7 af4 \once \shape #'((-1 . 2.5) (0 . 2) (0 . 1) (0 . 0))(\stemDown af') af af af af }
    \\
    \new Voice{
      \voiceTwo af,1. }
  >>
  | <<
    \new Voice {
      \voiceOne \override Stem.length = 7 af4 \once \shape #'((-1 . 2.5) (0 . 2) (0 . 1) (0 . 0))(\stemDown af') af af af af }
    \\
    \new Voice{
      \voiceTwo af,1. }
  >>
  | <<
    \new Voice {
      \voiceOne \override Stem.length = 7 af4 \once \shape #'((-1 . 2.5) (0 . 2) (0 . 1) (0 . 0))(\stemDown af') af af af af }
    \\
    \new Voice{
      \voiceTwo af,1. }
  >>
  | <<
    \new Voice {
      \voiceOne cf4(cf') cf cf cf cf }
    \\
    \new Voice{
      \voiceTwo cf,1. }
  >>
  | <<
    \new Voice {
      \voiceOne cf4(cf') cf cf cf cf }
    \\
    \new Voice{
      \voiceTwo cf,1. }
  >>
  | <<
    \new Voice {
      \voiceOne cf4(cf') cf cf cf cf }
    \\
    \new Voice{
      \voiceTwo cf,1. }
  >>
  | <<
    \new Voice {
      \voiceOne cf4 cf' cf cf cf cf }
    \\
    \new Voice{
      \voiceTwo cf,1. }
  >>
  | <<
    \new Voice {
      \voiceOne cf4 cf' cf cf cf cf }
    \\
    \new Voice{
      \voiceTwo cf,1. }
  >>
  | <<
    \new Voice {
      \voiceOne cf4 cf' cf cf cf cf }
    \\
    \new Voice{
      \voiceTwo cf,1. }
  >>
  | <<
    \new Voice {
      \voiceOne f'4\rest <c! f> <c f> <c f> <c f> <c f> }
    \\
    \new Voice{
      \voiceTwo  f,,1.\sustainOn}
  >>
  | <<
    \new Voice {
      \voiceOne f''4\rest^\f <bf,! f'> <bf f'> <bf f'> <bf f'> <bf f'> | f'4\rest <bf,! f'> <bf f'> bf bf bf }
    \\
    \new Voice{
      \voiceTwo  bf,1.~\sustainOn | bf1.}
  >>
  | <<
    \new Voice {
      \voiceOne ef4 <ef' g> <ef g> <ef g> <ef g> <ef g> | r4 <ef g> <ef g> <ef g> <ef g> <ef g>}
    \\
    \new Voice{
      \voiceTwo  ef,1.~ | ef1.}
  >>
  | <<
    \new Voice {
      \voiceOne  r4 <ef' g> <ef g> <ef g> <ef g> <ef g>}
    \\
    \new Voice{
      \voiceTwo  ef,1. }
  >>
  | <<
    \new Voice {
      \voiceOne  r4 <ef' g> <ef g> <ef g> <ef g> <ef g>}
    \\
    \new Voice{
      \voiceTwo  d,1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne  r4 <ef' g> <ef g> <ef g> <ef g> <ef g>}
    \\
    \new Voice{
      \voiceTwo  <c, c'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne r4 <df' f bf> <df f bf> <df f bf> <df f bf> <df f bf> }
    \\
    \new Voice{
      \voiceTwo <bf, bf'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne r4 <ef' g> <ef g> <ef g> <ef g> <ef g> | r4 <ef g> <ef g> <ef g> <ef g> <ef g>}
    \\
    \new Voice{
      \voiceTwo \override Script.Y-offset = -1 <ef,, ef'>1.^>~\sustainOn | <ef ef'>1. }
  >>
  | <<
    \new Voice {
      \voiceOne r4 <ef'' af ef'> <ef af ef'> <ef af ef'> <ef af ef'> <ef af ef'> | r4 <e! g> <e g> <e g> <e g> <e g>}
    \\
    \new Voice{
      \voiceTwo \override Script.Y-offset = 0 <af,, af'>1.^>~\sustainOn | <af af'>1. }
  >>
  | <<
    \new Voice {
      \voiceOne a''4\rest <e g bf> <e g bf> <f af> <f af> <f af>}
    \\
    \new Voice{
      \voiceTwo <af,, af'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne a''4\rest <f af c> <f af c> <f af c> <f af c> <f af c> }
    \\
    \new Voice{
      \voiceTwo  <f,, f'>1. \sustainOn}
  >>
  | <<
    \new Voice {
      \voiceOne a''4\rest^\f <g c> <g c> <g c> <g c> <g c> }
    \\
    \new Voice{
      \voiceTwo <g,, g'>1. \sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne a''4\rest <g b> <g b> <g b> <g b> <g b>  }
    \\
    \new Voice{
      \voiceTwo <g,, g'>1. }
  >>
  | <<
    \new Voice {
      \voiceOne   \once \override NoteColumn.force-hshift = #0  c4 \stemDown c' c c c c | s4 c c c c c }
    \\
    \new Voice{
      \voiceTwo  \once \override NoteColumn.force-hshift = #0.7 c,1.~ | c1.}
  >>
  |
  <<
    \new Voice {
      \voiceOne c4 \stemDown c' c c c c
      | s1.}
    \\
    \new Voice{
      \voiceTwo  c,1.~
      | c4 \grace{ cs16 d e} d2~\startTrillSpan \afterGrace 15/16 d2.\stopTrillSpan  {cs16 d}
      }
  >>
  <<
    \new Voice {
      \voiceOne a!4 \stemDown a' a a a a }
    \\
    \new Voice{
      \voiceTwo  a,1.}
  >>
  | <<
    \new Voice {
      \voiceOne f''4\rest <d g bf> <d g bf> <d g bf> <d g bf> <d g bf> }
    \\
    \new Voice{
      \voiceTwo  <g,, g'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne f''4\rest <e g> <e g> <e g> <e g> <e g>
      | f4\rest <e gs> <e gs> <e gs> <e gs> <e gs> }
    \\
    \new Voice{
      \voiceTwo <c,, c'>1.~\sustainOn <c c'>1. }
  >>
  | <<
    \new Voice {
      \voiceOne f''4\rest <f a> <f a> <f a> <f a> <f a>}
    \\
    \new Voice{
      \voiceTwo <f,, f'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne f''4\rest <f a> <f a> <f a> <f a> <f a>}
    \\
    \new Voice{
      \voiceTwo <e,, e'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne f''4\rest <f a> <f a> <f a> <f a> <f a>}
    \\
    \new Voice{
      \voiceTwo <d,, d'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne f''4\rest <f a c> <f a c> <f a c> <f a c> <f a c>}
    \\
    \new Voice{
      \voiceTwo <f,, f'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne f''4\rest <g c> <g c> <g c> <g c> <g c> }
    \\
    \new Voice{
      \voiceTwo <g,, g'>1.\sustainOn }
  >>
  | <<
    \new Voice {
      \voiceOne r4 <g'' b d> <g b d> <g b d> <g b d> <g b d> }
    \\
    \new Voice{
      \voiceTwo g,1.\sustainOn }
  >>
  | \slashedGrace a,8 a'2.~ (a4 gs8 a b c
  | <d, d')>2.~\shape #'((0 . 0) (4 . -3) (3 . -3) (2.7 . -1.5))(<d d'>4  \once \override DynamicLineSpanner.outside-staff-priority = ##f \once \override DynamicLineSpanner.Y-offset = -4.5 cs8\< d e fs\!)
  | <<
    \new Voice {
      \voiceOne r4  d'2~ (d4 cs8 d e f)}
    \\
    \new Voice{
      \voiceTwo g,4 r4 r4 e2.\rest }
  >>
  | <g g'>2.~ (<g g'>4 fs8^\< g a b\!)
  | <<
    \new Voice {
      \voiceOne r4 <g' c> <g c> r4 <f bf d> <f bf d>
      | r4 <g bf> <g bf> f4. (bf,8 \tuplet 5/4 {bf16 c bf a bf})
      | s1.}
    \\
    \new Voice{
      \voiceTwo  <c, c'>2.(\sustainOn <d d'>\sustainOn
      | <g g'>\sustainOn <f f'>\sustainOn
      | <e e'> <f f'>)}
  >>
  | \slashedGrace {c8} c'4. c8 \tuplet 5/4 {c16(d c b c~} <c, c'>2.)_\fermata



  \label #'lastPage
}

titol = "Llarmes secretes, Op. 35, n. 10"
subtitol = "Stille Thränen"
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
      \new Lyrics \lyricsto mel_f \alemany_first
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
