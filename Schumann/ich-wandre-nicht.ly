\version "2.24.3"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key bf \major
  \time 3/4
  \tempo "Brillant"
  \set Score.tempoHideNote = ##t
  \tempo 4=110
  \set PianoStaff.connectArpeggios = ##t

}


melody = \relative c' {
  \clef treble
  \global

  | R2.
  \repeat volta 2 {
    | R2.
    | r8 f^\mf g f g a
    | bf4 f r
    | r8 bf c bf a g
    | f4 r r
    | r8 g fs g a bf
    | ef4 a, r8^\markup {\italic ritard.} a
    | d4. c8 a bf
    | g2^\markup {\italic "Im Tempo."} r4
    | r4 r4 r8 bf
    | bf4. bf8 c d
    | ef4 bf 4. bf8
    | f'4. d8 bf af
    | g2 r4
    | r8^\markup {\italic "ad lib."} c8 b c ef c
    | bf4 a r8 bf
    | c4. g8 a f
    | f'2.~
    | f2^\markup {\italic ritard.} a8([ g])
    | f4. f,8 d' c
    | bf2 r4
  }
  | R2.
  | r8 f^\mf g f g a
  | bf 4 f r4
  | r8 bf c bf a g
  | f4 r4 r4
  | r8 g fs g a bf
  | ef4 a, r8^\markup {\italic ritard.} a
  | d4. c8 a bf
  | g2^\markup {\italic "In Tempo."} r4
  | r4 r4 r8 bf
  | bf4. bf8 c d
  | ef4 bf 4. bf8
  | f'4. d8 bf af
  | g2 r4
  | r8 c8^\markup {\italic "ad lib."} b c ef c
  | bf4 a r8 bf
  | c4. g8 a f
  | f'2.~
  | f2^\markup {\italic ritard.} a8([ g])
  | f4. f,8 d' c
  | bf2 r4
  | R2.
  | R2.
  | R2. \bar "|."

}

catala = \lyricmode {
  <<
    {
      Per què jo lluny i -- ri -- a
      tal -- ment com d'al -- tres fan?
      Als al -- tres no po -- dri -- a
      se -- guir, l'a -- mor dei -- xant.

      Hom can -- ta sen -- se tre -- va
      l'as -- priu te -- rrer llu -- nyà:
      em plau la pà -- tria me -- va
      per què, doncs, sol tres -- car?
      per què, doncs, sol tres -- car?
    }
    \new Lyrics {
      \set associatedVoice = "mel"
      Jo crec que~a -- llà~al de -- fo -- ra
      tot creix i tot flo -- reix,
      que~el dolç ra -- ïm tot -- ho -- ra
      com raigs de sol llu -- eix.

      Però~el suc d'ar -- dent flo -- ri -- da
      dels ceps a -- cí tam -- bé
      si~a -- ques -- ta be -- lla vi -- da
      me'n don', què més vol -- dré?
      què més, què més vol -- dré?
    }

  >>

  Ja -- mai jo no de -- lir -- o
  per có -- rrer~el món im -- mens,
  el cel més blau al -- bi -- ro
  a dins d'uns ulls se -- rens.

  Que~el joi de pri -- ma -- ve -- ra
  val més son riu -- re fi.
  Oh~es -- tre -- lla, ma fal -- ·le -- ra,
  jo no me'n vaig d'a -- cí,
  jo no me'n vaig d'a -- cí!
}

alemany = \lyricmode {
  <<
    {
      Wa -- rum soll ich denn wan -- dern
      Mit an -- dern glei -- chen Schritt?
      Ich pass' nicht zu den an -- dern
      Und Lieb -- chen geht nicht mit.
      Man singt in tau -- send Wei -- sen
      Von Ber -- gen, Fel -- sen -- höhn:
      Al -- lein wa -- rum noch rei -- sen?
      Die Hei -- mat ist so schön.
      Die Hei -- mat ist so schön.
    }
    \new Lyrics {
      \set associatedVoice = "mel"
      Ich will ja al -- les glau -- ben,
      Was drau -- ßen wächst und blüht,
      Das Gold der sü -- ßen Trau -- ben,
      Wie's Son -- nen -- fun -- ken sprüht.
      Al -- lein, der Trank der Re -- ben,
      Er kommt ja auch hier -- her,
      Wo mir mein hol -- des Le -- ben
      Ihn reicht, was will ich mehr?
      was will, was will ich mehr?
    }
  >>

  Ich geh nicht ins Ge -- wim -- mel
  Der gro -- ßen, wei -- ten Welt;
  Den klar -- sten, blaus -- ten Him -- mel
  Zeigt Lieb -- chens Au -- gen -- zelt.
  Und mehr als Früh -- lings -- won -- ne
  Ver -- spricht ihr Lä -- cheln mir,
  O zar -- te, mei -- ne Son -- ne!
  Ich wan -- dre nicht von hier,
  Ich wan -- dre nicht von hier.
}

upper = \relative c'' {
  % \set Staff.connectArpeggios = ##t
  \clef treble
  \global

  | r8 f^(_\sf ef d\> cs d
  \repeat volta 2 {
    | \bar ".|:-|" c! bf a bf a g\!
    | f) <a, ef' f>_.(\p <a ef' f>_. <a ef' f>_. <a ef' f>_. <a ef' f>_.)
    | <bf d f>^! f''[^(^\sf ef d cs d]
    | c!) <ef, bf'>_.[(\p <ef c'>_. <ef bf'>_. <ef a>_. <ef g>_.)]
    | <d f>_! d'[(\sf\> c bf a bf]
    | a)\! <d, g>_.[(\p\< <d fs>_. <d g>_. <d a'>_. <d bf'>_.)]\!
    | r8 <ef a>_.(\< <ef gs>_. <ef a>_. <ef bf'>_. <ef c'>_.)\!^\markup {\italic ritard.}
    | r8 <c d fs a>4\< <c d fs a>4\!\> <c d fs a>8\!
    | <bf g'>8^! bf''\sf^\markup {\italic "Im Tempo."}\> [^(a g fs g ]| ef d cs d c bf\!)
    | r8 <af bf>\p\< <af bf> <af bf> <af bf> <af bf>\!
    | r8 <g bf>\< <g bf> <g bf> <g bf> <g bf>\!
    | r8 <f af bf>\< <f af bf> <f af bf> <f af bf>\!\> <d f af>
    | <d f g>\! <g g'>\<[( <fs fs'>) <g g'>^. <a! a'!>^. <b b'>^.]\!
    | <c c'>4 r4
    <<
      { ef8(\> c)\! | bf!4( a) bf}
      \\
      { <ef, g>4 | ef2_\markup {\italic dim.} d4}
    >>
    | <g c>2( <f a>4)
    | <f bf>8^! \stemUp f'8[^(\sf\> ef d cs d] | [c!^\markup {\italic ritard.} bf a bf])\!  \stemNeutral
    <<
      { a'( g) }
      \\
      { a, g }
    >>
    | <f bf f'>2\arpeggio <a,\=1( ef'\=2( f^\=3(>4\p
    | <bf\=1) d\=2) f\=3)>8) f''([\sf\>^\markup {\italic "Im tempo."} ef d cs d\!]
  }
  | c! bf a bf a g
  | f) <a, ef' f>_.(\p <a ef' f>_. <a ef' f>_. <a ef' f>_. <a ef' f>_.)
  | <bf d f>^! f''[^(\sf\> ef d cs d]\!
  | c!) <ef, bf'>_.[(\p <ef c'>_. <ef bf'>_. <ef a>_. <ef g>_.)]
  | <d f>_! d'[(\sf\> c bf a bf]
  | a)\! <d, g>_.[(\p\< <d fs>_. <d g>_. <d a'>_. <d bf'>_.)]\!
  | r8 <ef a>_.(\< <ef gs>_. <ef a>_. <ef bf'>_. <ef c'>_.)\!^\markup {\italic ritard.}
  | r8 <c d fs a>4\< <c d fs a>4\!\> <c d fs a>8\!
  | <bf g'>8^! bf''\sf\>^\markup {\italic "In Tempo."} [^(a g fs g ]| ef d cs d c bf\!)
  | r8 <af bf>\p\< <af bf> <af bf> <af bf> <af bf>\!
  | r8 <g bf>\< <g bf> <g bf> <g bf> <g bf>\!
  | r8 <f af bf>\< <f af bf> <f af bf> <f af bf>\!\> <d f af>
  | <d f g>\! <g g'>\<[( <fs fs'>) <g g'>^. <a! a'!>^. <b b'>^.]\!
  | <c c'>4 r4
  <<
    { ef8(\> c)\! | bf!4( a) bf}
    \\
    { <ef, g>4 | ef2_\markup {\italic dim.} d4}
  >>
  | <g c>2( <f a>4)
  | <f bf>8^! \stemUp f'8[^(\sf\> ef d cs d]\! | [c!^\markup {\italic ritard.} bf a bf]) \stemNeutral
  <<
    { a'( g) }
    \\
    { a, g }
  >>
  | <f bf f'>2\arpeggio <a,\=1( ef'\=2( f^\=3(>4\p
  | <bf\=1) d\=2) f\=3)>8_!) f''([\sf\>^\markup {\italic "Im tempo."} ef d cs d\!]
  | c! bf a bf a g |
  | f) <a, ef' f>^.^([_\markup {\italic dim.} <a ef'g>^. <a ef' f>^. <a ef' g>^. <c ef f a>^.])
  | <d f bf>8 r8 s2

}

lower = \relative c {
  % \set Staff.connectArpeggios = ##t
  \clef bass
  \global

  | r8  f'_( ef d cs d
  \repeat volta 2 {
    | c! bf a bf  a g
    |  f) <bf, f'>^.( <bf f'>^.<bf f'>^. <bf f'>^.
    <bf f'>^.)
    | <bf f'>^!\sustainOn  f''[_(\sf\> ef d cs  \sustainOff  d]\!
    | c!) <bf, g'>^.[(<bf g'>^. <bf g'>^. <bf f' a>^. <bf f' a>^.)]
    | <bf f' bf>^!\sustainOn  d'[( c bf a bf]\sustainOff
    | a) <bf, g'>^.[( <bf g'>^. <bf g'>^. <bf g'>^. <bf g'>^.)]
    | r8 <c g' a>^.( <c g' a>^. <c g' a>^. <c g' a>^. <c g' a>^.)
    | r8 d4 d d8
    | <g, d'>_!\sustainOn \clef treble bf'' [_(a g fs g] \sustainOff | \clef bass ef d cs d  c bf) \change Staff = "lower"
    | bf,8_.\sustainOn <bf' d> [<bf d> <bf d> <bf d> <bf d>]\sustainOff
    | bf,8_.\sustainOn <bf' ef> [<bf ef> <bf ef> <bf ef> <bf ef>]\sustainOff
    | bf,8_. <bf' d> [<bf d> <bf d> <bf d> <c, af'>]
    | <b g'> <b' d>[( <a c>) <b d>^. <c ef>^. <d f!>^.]
    | <ef g>4 r4
    <<
      { c | c2 bf4 | <g bf c>2 <f a c>4 }
      \\
      { c8( ef) | fs2 g8( f) | e2( ef4)}
    >>
    | <d d'>8^!\sustainOn f'8([ ef d cs d]\sustainOff | [c bf a bf] )
    <<
      { a( g) }
      \\
      { <e cs'>4 }
    >>
    | <f bf d>2\arpeggio
    | <f,_\=1( f'\=2(>4
    | <bf\=1) f'\=2)>8^!\sustainOn f''([ ef d cs d]\sustainOff
  }
  | c! bf a bf a g
  |  f) <bf, f'>^.( <bf f'>^.<bf f'>^. <bf f'>^.
  <bf f'>^.)
  | <bf f'>^!\sustainOn  f''[_( ef d cs  \sustainOff  d]
  | c!) <bf, g'>^.[(<bf g'>^. <bf g'>^. <bf f' a>^. <bf f' a>^.)]
  | <bf f' bf>^!\sustainOn  d'[( c bf a bf]\sustainOff
  | a) <bf, g'>^.[( <bf g'>^. <bf g'>^. <bf g'>^. <bf g'>^.)]
  | r8 <c g' a>^.( <c g' a>^. <c g' a>^. <c g' a>^. <c g' a>^.)
  | r8 d4 d d8
  | <g, d'>_!\sustainOn \clef treble bf'' [_(a g fs g] \sustainOff | \clef bass ef d cs d  c bf) \change Staff = "lower"
  | bf,8_.\sustainOn <bf' d> [<bf d> <bf d> <bf d> <bf d>]\sustainOff
  | bf,8_.\sustainOn <bf' ef> [<bf ef> <bf ef> <bf ef> <bf ef>]\sustainOff
  | bf,8_. <bf' d> [<bf d> <bf d> <bf d> <c, af'>]
  | <b g'> <b' d>[( <a c>) <b d>^. <c ef>^. <d f!>^.]
  | <ef g>4 r4
  <<
    { c | c2 bf4 | <g bf c>2 <f a c>4 }
    \\
    { c8( ef) | fs2 g8( f) | e2( ef4)}
  >>
  | <d d'>8^!\sustainOn f'8([ ef d cs d]\sustainOff | [c bf a bf] )
  <<
    { a( g) }
    \\
    { <e cs'>4 }
  >>
  | <f bf d>2\arpeggio
  | <f,_\=1( f'\=2(>4
  | <bf\=1) f'\=2)>8^!\sustainOn f''([ ef d cs d]\sustainOff
  | c! bf a bf a g
  | f) <bf, f'>^.[( <bf f'>^. <bf f'>^. <bf f'>^. <bf f'>^.)]
  | <bf f'>^. r8
  <<
    { <d f bf>^. r8 r4 }
    \\
    { <bf, bf'>8_. r8 r4 }
  >>


  \label #'lastPage
}

titol = "Ich wandre nicht, Op. 51, n. 3"
subtitol = "Jo no me'n vaig"
compositor = "R. Schumann (1810 - 1856)"
lletrista = "C. Christen (c. 1840)"
traductor = "Antoni Colomé i Bosomba (1870 - 1952)"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% REMARKABLE %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \bookOutputSuffix "remarkable"
  \header {
    title = \titol
    subtitle = \subtitol
    composer = \compositor
    arranger = \lletrista
    poet = \traductor
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
        \Staff
        % \RemoveEmptyStaves
        % \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #3
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
    title = \titol
    subtitle = \subtitol
    composer = \compositor
    arranger = \lletrista
    poet = \traductor
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
      \new PianoStaff \with {
        \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #0
      } <<
        \new Staff = "upper"  \upper
        \new Staff = "lower"  \lower
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
