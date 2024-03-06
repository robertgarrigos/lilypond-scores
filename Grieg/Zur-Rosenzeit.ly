\version "2.24.3"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key bf \minor
  \time 3/4
  \tempo "Allegretto serioso"
  \set Score.tempoHideNote = ##t
  \tempo 4=90

}


melody = \relative c' {
  \clef treble
  \global
  | R2.
  | R2.
  | r4 f^\p df'^\<
  | df2\!^\> a4\!
  | r4 f'4.^\< df8\!
  | df2^\> a4\!
  | r4 f4 df'
  | c2 f,4
  | e2 bf'4
  | a2.
  | r4 f df'^\<
  | \!df2^\> ef,4\!
  | ef2 c'4^\<
  | \!c2^\> df,4\!
  | r4 df bf'
  | bf^\< c df\!
  | \after 4 ^\> a2  bf4\!
  | bf2.
  | R2.
  | R2.
  | r4^\markup {\italic "poco più mosso"} af^\p af
  | bf2 bf4
  | c2 c4^\markup {\italic cresc.}
  | df2 df4
  | r4 d d
  | ef2^\f ef4
  | df4 ef ff
  | ef2.
  | r4 a,^\p a
  | b2 b4
  | cs2 cs4^\markup {\italic cresc.}
  | d2 d4
  | r4 ds ds
  | e2^\f e4
  | d e f
  | e2.
  | r4 c c
  | df!2^\< df4\!
  | r4 ef ef
  | df2^\> df4\!
  | r4 c2
  | b4 b b8 b
  | af2^> af4
  | g2 r4^\markup {\italic "poco a poco meno mosso e dim."}
  | r4 f f
  | gf!2 gf4
  | af2 af4
  | gf2 gf4
  | r4 f2
  | e4 e e8 e
  | df2^>^\markup {\italic "più rit. e dim."} df4
  | c2 r4
  | r4^\markup {\italic "Tempo I"} f^\p df'^\<
  | df2\!^\> a4\!
  | r4 f'4.^\< df8\!
  | df2^\> a4\!
  | r4 f4 df'
  | c2 f,4
  | e2 bf'4
  | a2.
  | r4 f df'^\<
  | \!df2^\> ef,4\!
  | ef2 c'4^\<
  | \!c2^\> df,4\!
  | r4 df bf'
  | bf^\< c df\!
  | \after 4 ^\> a2^\markup {\italic rit.}  bf4\!
  | bf2.
  | R2.
  | R2.
  | R2.
  | R2.\fermata

}

catala = \lyricmode {
  Us mar -- ciu, __ _ dol -- ces ro -- ses,
  l'a -- mor meu no~us don con -- sol;
  ai!, flo -- rí -- eu va -- na -- ment __ _
  per qui l'à -- ni -- ma és en dol!

  Tris -- ta -- ment re -- cor -- do~els di -- es
  quan jo, Àn -- gel, em -- ba -- da -- lit
  i~a l'a -- guait dels pri -- mers brots, __ _
  d'ho -- ra~a -- na -- va~al meu __ _ jar -- dí;

  Ca -- da frui -- ta, ca -- da ro -- sa,
  ra -- bent et du -- ia amb a -- mor
  i da -- vant __ _ del teu ros -- tre
  jo -- iós em ba -- te -- ga -- va~el cor.

  Us mar -- ciu, __ _ dol -- ces ro -- ses,
  l'a -- mor meu no~us don con -- sol;
  ai!, flo -- rí -- eu va -- na -- ment __ _
  per qui l'à -- ni -- ma és en dol!
}

alemany = \lyricmode {
  Ihr ver -- blü -- het, sü -- see Ro -- sen,
  mei -- ne Lie -- be trug euch nicht;
  blü -- het, ach! dem Hoff -- nungs lo -- sen,
  dem der Gram __ _ die See -- le bricht!

  Je -- ner Ta -- ge denk' ich trau -- ernd,
  als ich, En -- gel, an __ _ dir hing,
  auf das er -- ste Knösp -- chen lau -- ernd,
  früh zu mei -- nem Gar -- _ ten ging.

  Al -- le Blü -- tehn, al -- le Früch -- te
  noch __ _ zu dei -- nen Fü -- ssen trug,
  und vor dei -- nem An -- ge -- sich -- te
  Hoff __ _ nung in dem Her -- zen schlug.

  Ihr ver -- blü -- het, sü -- see Ro -- sen,
  mei -- ne Lie -- be trug euch nicht;
  blü -- het, ach! dem Hoff -- nungs lo -- sen,
  dem der Gram __ _ die See -- le bricht!

}

upper = \relative c' {
  \clef treble
  \global
  | r8 <f bf df>4\p <f bf df>4\< <f bf df>8\!
  | r8 <ef a df>4\> <ef a df>4 <ef a df>8\!
  | r8 <f bf df>4 <f bf df>4\< <f bf df>8\!
  | r8 <ef gf a df>4\> <ef gf a df>4\! <ef gf a df>8
  | r8 <f bf df>4 <f bf df>4 <f bf df>8
  | r8 <ef gf a df>4 <ef gf a df>4 <ef gf a df>8
  | r8 <f bf df>4 <f bf df>4 <f bf df>8
  | r8 <f c'>4 <f c'>4 <f c'>8
  | r8 <c e c'>4 <c e c'>4 <c e c'>8
  | r8 <c f c'>4 <c f c'>4 <c f c'>8
  | r8 <f bf df>4 <f bf df>4\< <f bf df>8\!
  | r8 <ef bff' df>4 <ef bff' df>4\> <ef bff' df>8\!
  | r8 <ef af c>4 <ef af c>4\< <ef af c>8\!
  | r8 <df af' c>4\> <df af' c>4 <df af' c>8\!
  | r8 <df gf bf>4 <df gf bf>4 <df gf bf>8
  | r8 <c gf' bf>4\< <gf' bf>4 <gf bf>8\!
  | r8 <c, f a>4 <c f a>4\> <c f bf>8 \!
  | r8 <df f bf>4 <df f bf>4 <df f bf>8
  | r8 <df gf bf>4\< <df gf bf>4 <df gf bf>8\!
  | r8 <bf' df f>4 <bf df f>4\> <bf df f>8\!
  | r8 <f af>4\< <f af>4 <f af>8\!
  | r8 <f g bf>4 <f g bf>4 <f g bf>8
  | r8 <f af c>4\< <f af c>4 <f af c>8\!
  | r8 <f g bf df>4 <f g bf df>4 <f g bf df>8
  | r8 <f af b d>4 <f af b d> <f af b d>8
  | r8 <gf! cf ef>4 <gf cf ef> <gf cf ef>8
  | r8 <gf cf df!>4 <gf cf df!> <gf cf df!>8
  | r8 <gf cf ef>4 <gf cf ef> <gf cf ef>8
  | r8 <fs a>4 <fs a>\< <fs a>8\!
  | r8 <fs gs b>4 <fs gs b> <fs gs b>8
  | r8 <fs a cs>4 <fs a cs>\< <fs a cs>8\!
  | r8 <fs gs b d>4 <fs gs b d> <fs gs b d>8
  | r8 <fs a bs ds>4 <fs a bs ds> <fs a bs ds>8
  | r8 <g c e>4 <g c e> <g c e>8
  | r8 <g c d>4 <g c e> <g b f'>8
  | r8 <g c e>4 <g c e> <g c e>8
  | <<
    {
      r8 <g e' g>4 <g e' g> <g e' g>8
      | r8 <g e' g>4\< <g e' g> <g e' g>8
      | r8 <g e' g>4\! <g e' g> <g e' g>8
      | r8 <g e' g>4\> <g e' g> <g e' g>8
      | r8 <g e' g>4 <g e' g> <g e' g>8\!
      | r8 <g e' g>4 <g e' g> <g e' g>8
      | r8 <e df' e>4 <e df' e>\> <e df' e>8
      | r8 <e bf' c e>4\! <e bf' c e> <e bf' c e>8
    }
    \\
    {
      (c'2.
      | df!
      | ef!
      | df)
      | (c
      | b
      | af!
      | g2 gf4)
    }
  >>
  %45
  | <<
    {
      \repeat unfold 6 {r8 <c, a' c>4 <c a' c> <c a' c>8}
      | r8 <a gf'! a>4 <a gf'! a> <a gf'! a>8
      | r8 <a ef' f a>4 <a ef' f a> <a ef' f a>8
       }
    \\
    {
      ( f'2.
      | gf!
      | af!
      | gf)
      | (f2.
      | e
      | df!
      | c2 cf4)
    }
  >>
  | r8^\markup {\italic "Tempo I"} <f bf df>4 <f bf df>4\< <f bf df>8\!
  | r8 <ef gf a df>4\> <ef gf a df>4\! <ef gf a df>8
  | r8 <f bf df>4 <f bf df>4 <f bf df>8
  | r8 <ef gf a df>4 <ef gf a df>4 <ef gf a df>8
  | r8 <f bf df>4 <f bf df>4 <f bf df>8
  | r8 <f c'>4 <f c'>4 <f c'>8
  | r8 <c e c'>4 <c e c'>4 <c e c'>8
  | r8 <c f c'>4 <c f c'>4 <c f c'>8
  | r8 <f bf df>4 <f bf df>4\< <f bf df>8\!
  | r8 <ef bff' df>4 <ef bff' df>4\> <ef bff' df>8\!
  | r8 <ef af c>4 <ef af c>4\< <ef af c>8\!
  | r8 <df af' c>4\> <df af' c>4 <df af' c>8\!
  | r8 <df gf bf>4 <df gf bf>4 <df gf bf>8
  | r8 <c gf' bf>4\< <gf' bf>4 <gf bf>8\!
  | r8 <c, f a>4 <c f a>4\> <c f bf>8 \!
  | r8^\markup {\italic "a tempo"} <df f bf>4 <df f bf>4 <df f bf>8
  | r8 <df gf bf>4\< <df gf bf>4 <df gf bf>8\!
  | r8 <bf' df f>4 <bf df f>4\> <bf df f>8~\!
  | <bf df f>2 r4
  | s2. \bar "|."
}

lower = \relative c {
  \clef bass
  \global
  | R2.
  | gf'2.
  | _\sustainOn \acciaccatura {bf,8} f'2 (df'4)_\sustainOff
  | _\sustainOn \acciaccatura {bf,8} df'2 (a4)_\sustainOff
  | \acciaccatura {bf,8} f'4 f'4. (df8)
  | \acciaccatura {bf,8} df'2 (a4)
  | \acciaccatura {bf,8} f'2 (df'4)
  | \acciaccatura {af,!8} c'2 (f,4)
  | \acciaccatura {g,8} e'2 (bf'4)
  | \acciaccatura {f,8} a'2.
  | \acciaccatura {bf,8} f'2 (df'4)
  | \acciaccatura {gf,,8} df''2^\markup {\italic "poco ten."} (ef,4)
  | \acciaccatura {gf,8} ef'2 (c'4)
  | \acciaccatura {f,,!8} c''2 (df,4)
  | \acciaccatura {gf,8} df'2 (bf'4)
  | \acciaccatura {ef,,8} bf''4^- (c^- df^-)
  | \acciaccatura {f,,8} a'2 (bf4)
  | \acciaccatura {bf,,8} bf''2.~
  | bf8 c df4 c8 bf
  | f'2.
  | f,,8^\p (c' f g af c)
  | df2.
  | f,,8 (c' f g af^\markup {\italic cresc.} c)
  | df2.
  | f,,8 (c' f g af c)
  | gf,!8^\f (ef' gf! cf df ef)
  | gf,,8 (df' gf df' ef ff)
  | cf,8 (gf' cf df ef4)
  | fs,,8^\p (cs' fs gs a cs)
  | d2.
  | fs,,8 (cs' fs gs a^\markup {\italic cresc.} cs)
  | d2.
  | fs,,8 (cs' fs gs a cs)
  | g,8^\f (e' g c d e)
  | g,,8 (d' g d' e f)
  | c, (g' c d e4)
  | _(<c, c'>2.
  | <df! df'!>2.
  | <ef! ef'!>2.
  | <df! df'!>2.)
  | _(<c c'>2.
  | <b b'>2.
  | <af! af'!>2.
  | <g g'>2 <gf gf'>4)^\markup {\whiteout \italic "poco a poco meno mosso e dim."}
  | (<f f'>2.
  | <gf! gf'!>
  | <af! af'!>
  | <gf gf'>)
  | (<f f'>
  | <e e'>
  | <df! df'!>^\markup {\whiteout \italic "più rit. e dim."}
  | <c c'>2 <cf cf'>4)
  | \acciaccatura {bf8} bf'4_\sustainOn^\p (f'4 df')
  | \acciaccatura {bf,8} df'2 (a4)
  | \acciaccatura {bf,8} f'4 f'4. (df8)
  | \acciaccatura {bf,8} df'2 (a4)
  | \acciaccatura {bf,8} f'2 (df'4)
  | \acciaccatura {af,!8} c'2 (f,4)
  | \acciaccatura {g,8} e'2 (bf'4)
  | \acciaccatura {f,8} a'2.
  | \acciaccatura {bf,8} f'2 (df'4)
  | \acciaccatura {gf,,8} df''2^\markup {\italic "poco ten."} (ef,4)
  | \acciaccatura {gf,8} ef'2 (c'4)
  | \acciaccatura {f,,!8} c''2 (df,4)
  | \acciaccatura {gf,8} df'2 (bf'4)
  | \acciaccatura {ef,,8} bf''4^- (c^- df^-)
  | \acciaccatura {f,,8} a'2^\markup {\italic rit.} (bf4)
  | \acciaccatura {bf,,8} bf''2.~
  | bf8 c df4 c8 bf
  | f'2.~
  | f2 r4
  | <<
   {<df, bf'>2.\fermata^\pp}
   \\
   {<bf, f'>2._\fermata}
  >>


  \label #'lastPage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% REMARKABLE %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \bookOutputSuffix "remarkable"
  \header {
    title = "Zur Rosenzeit, Op. 48 nº 5"
    subtitle = "El temps de les roses"
    composer = "E. Grieg (1843-1907)"
    arranger = "J. W. von Goethe (1749 - 1832)"
    poet = "Trad. Robert Garrigós"
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
    title = "Zur Rosenzeit, Op. 48 nº 5"
    subtitle = "El temps de les roses"
    composer = "E. Grieg (1843-1907)"
    arranger = "J. W. von Goethe (1749 - 1832)"
    poet = "Trad. Robert Garrigós"
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
