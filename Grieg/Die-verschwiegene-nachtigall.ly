\version "2.24.3"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key c \major
  \time 4/4
  \tempo "Allegretto (sempre con mezza voce)"
  \set Score.tempoHideNote = ##t
  \tempo 4=100
  \set PianoStaff.connectArpeggios = ##t

}


melody = \relative c'' {
  \clef treble
  \global
  | R1
  | R1
  \time 3/4
  | e4^\p \grace {[d16 (e]} d8) [c] b4
  | a2 b4
  | e4 \grace {[d16 (e]} d8) [c] b4
  | a2 b4
  | e4 \grace {[d16 (e]} d8) [c] b4^\markup {\whiteout \italic "poco cresc."}
  | c4 \grace {[b16 (c]} b8) [a] g4
  | a4 \grace {[g16 (a]} g8) [f] e4
  | e2.
  | e'4 d8 [e] c4
  | b2 a4
  | c^\> b8 [a] a4\!
  | c8^\> [b] \acciaccatura {(c8} b8) [a] a4\!
  | d4 c8 [d] b4
  | a2 g4^\<
  | b a8^\!^\> [g] g4^\!
  | b8 [a] \acciaccatura {(b8} a8) [g] g4
  \time 4/4
  | R1
  | b8^\mf [c] d4 a c
  | g8^\> [a] b4 f a\!
  | R1
  | r8^\markup {\italic "leggiero"} f4^\p a16 d c2
  | r8 d,4^\pp fs16 b a2
  | r4 a4~a8 a a a
  | \after 8 ^\< \after 4. ^\> \after 2 \! d2. a4
  | c2~ c4 r4
  | R1
  % segona estrofa
  \time 3/4
  | e4 \grace {[d16 (e]} d8) [c] b4
  | a2 b4
  | e4 \grace {[d16 (e]} d8) [c] b4
  | a2 b4
  | e4 \grace {[d16 (e]} d8) [c] b4
  | c4 \grace {[b16 (c]} b8) [a] g4
  | a4 \grace {[g16 (a]} g8) [f] e4
  | e4 e2
  | e'4 d8 [e] c4
  | b2 a4
  | c b8 [a] a4
  | c8^\> [b] \acciaccatura {(c8} b8) [a] a4\!
  | d4 c8 [d] b4
  | a2 g4
  | b a8 [g] g4
  | b8^\> [a] \acciaccatura {(b8} a8) [g] g4\!
  \time 4/4
  | R1
  | b8 [c] d4 a c
  | g8 [a] b4 f a
  | R1
  | r8^\markup {\italic "leggiero"} f4^\p a16 d c2
  | r8 d,4^\pp fs16 b a2
  | r4 a4~a8 a^\< a a\!
  | \after 8 ^\< \after 4. ^\> \after 2 \!  d2. a4
  | c2~ c4 r4
  | R1
  % tercera estrofa
  \time 3/4
  | e4 \grace {[d16 (e]} d8) [c] b4
  | a2 b4
  | e4 \grace {[d16 (e]} d8) [c] b4
  | a2 b4
  | e4 \grace {[d16 (e]} d8) [c] b4
  | c4 \grace {[b16 (c]} b8) [a] g4
  | a4 \grace {[g16 (a]} g8) [f] e4
  | e2.
  | e'4 d8 [e] c4
  | b2 a4
  | c b8 [a] a4
  | c8 [b] \acciaccatura {(c8} b8) [a] a4
  | d4 c8 [d] b4
  | a2 g4
  | b a8 [g] g4
  | b8^\> [a] \acciaccatura {(b8} a8) [g] g4\!
  \time 4/4
  | R1
  | b8^\mf [c] d4 a c
  | g8 [a] b4 f a
  | R1
  | r8^\markup {\italic leggiero} f4^\p a16 d c2
  | r8 d,4^\pp fs16 b a2
  | r4 a4~a8 a a a
  | \after 8 ^\< \after 4. ^\> \after 2 \!  d2. a4
  | c2~ c4 r4
  | R1
  | R1\fermata \bar "|."
}

catala = \lyricmode {
  So -- ta d'un ar -- bre,
  a __ _ la pla -- na,
  jo em tro -- ba -- va~amb el meu es -- ti -- mat;
  ens hi veu -- rí -- eu, dol -- ça -- ment, a tots dos
  tren --  car __ _ l'her -- ba, ten -- dra -- ment, i les flors.
  Prop del bosc a -- llí sen -- tí -- rem
  Tan -- da -- ra -- dai!
  Tan -- da -- ra -- dai!
  el dolç cant del ro -- ssi -- nyol.

  En a -- rri -- bar
  a -- le -- gre~a la pra -- da
  el meu a -- mor __ _ ja m'hi es -- pe -- ra -- va.
  Com sa __ _ dol -- ça
  don -- ze -- lla em re -- bé,
  que tan -- ta jo -- ia
  no __ _ sé d'on em vé.
  Quans pe -- tons cre -- ieu que~em va fer?
  Tan -- da -- ra -- dai!
  Tan -- da -- ra -- dai!
  Oh, tots els que va po -- der!

  Jo~hi re -- po -- sa -- va
  de tal ma -- ne -- ra
  que Déu no vul -- gui que nin -- gú~ho sa -- bés.
  A -- llò que fé -- rem jun -- ta -- ment amb pa -- sió
  nin -- gú~ho sa -- brà __ _
  mes que ell i __ _ jo

  i~un pe -- tit __ _ o -- ce -- llet __ _
  Tan -- da -- ra -- dai!
  Tan -- da -- ra -- dai!
  Oh, que~ens guar -- da -- rà~el se -- cret!

}

alemany = \lyricmode {
  Un -- ter  den Lin -- den,
  an __ _ der Hai -- de,
  wo ich mit mein -- _ nem Trau -- _ ten sass,
  da mögt ihr fin -- den,
  wie __ _ wir
  Bei -- de die
  Blu -- _ men bra -- _ _ _ chen und das Gras.
  Vor dem Wald mit sü -- ssem Schall __ _
  Tan -- da -- ra -- dei!
  Tan -- da -- ra -- dei!
  sang im Thal die Nach -- ti -- gall.

  Ich kam ge -- gan  -- gen
  zu __ _ der Au -- e,
  mein Lieb -- ster kam __ _ vor mir __ _ da -- hin. ""
  Ich ward em -- pfan -- gen
  als heh -- re Frau -- e, __ _
  som var der A -- _ _ _ mer se -- lig bin.
  Ob er mir auch Küs -- se bot? __ _
  Tan -- da -- ra -- dei!
  Tan -- da -- ra -- dei!
  Seht, wie ist mein Mund so roth!

  Wie ich da ruh -- te,
  wüsst' __ _ es Einer,
  be -- hü -- _ te Gott, __ _
  ich schäm -- _ te mich.
  Wie mich der Gu -- te herz -- _ te,
  Kei -- ner er -- fah -- _ _ _ re das,
  als er __ _ und ich;
  und ein klei -- nes Vö -- ge -- lein, __ _
  Tan -- da -- ra -- dei!
  Tan -- da -- ra -- dei!
  das wird wohl ver -- schwie -- gen sein.
}

upper = \relative c'' {
  \clef treble
  \global
  | r4 f8 (a16 d c2)
  | r4 f,8 (a16 d c2)
  \time 3/4
  | <<
    {e,4 (d8 c b4}
    \\
    {e,4\p f g}
  >>
  | <<
    {a2 b4)}
    \\
    {a4 g f}
  >>
  | <<
    {e'4 (d8 c b4}
    \\
    {e,4 f g}
  >>
  | <<
    {a2 b4)}
    \\
    {a4 g f}
  >>
  | <<
    {e'4 (d8 c b4)}
    \\
    {e,4 f g}
  >>
  | <<
    {c4 (b8 a g4)}
    \\
    {c,4 d e}
  >>
  | <<
    {a4 (g8 f e4)}
    \\
    {a,4 b c}
  >>
  | <gs e'>2.
  | <<
    {<gs' e'>4\arpeggio (<fs d'>8 <gs e'> < e c'>4 | b'2 a4) | c4 b8 a a4 | c8 [b] \acciaccatura {c} b [a] a4}
    \\
    { s2. | e4 d8 e c4~ | <c fs>\> <d gs> c~\!| <c fs>\> <d gs> c\!}
  >>
  | <<
    {<fs d'>4\arpeggio (<e c'>8 <fs d'> < d b'>4 | a'2 g!4) | b4 (a8 g g4) | b8 ([a] \acciaccatura {b} a [g] g4)}
    \\
    { s2. | d4 c8 d\< b4~ | <b e>\!\> <c fs> b~\!| <b e> <c fs> b}
  >>
  | <<
    {d'8 (e f4 c e | b8 c d4 a c | g8 a b4 f a | e8 f g4 d f)}
    \\
    {f!4\mf\< a e g | d\!\> f c e | b d a c | g\!_\markup {\italic "poco rit."} b f a}
  >>
  | <a f'>1^\markup {\italic "a tempo"}
  | <fs d'>1\pp
  | cs'2 d\<
  | d1\!\arpeggio\>
  | r4\! f'8 (a16 d c2)
  | r4 f,8 (a16 d c2)
  % segona estrofa
  \time 3/4
  | <<
    {e,4 (d8 c b4}
    \\
    {e,4\p f g}
  >>
  | <<
    {a2 b4)}
    \\
    {a4 g f}
  >>
  | <<
    {e'4 (d8 c b4}
    \\
    {e,4 f g}
  >>
  | <<
    {a2 b4)}
    \\
    {a4 g f}
  >>
  | <<
    {e'4 (d8 c b4)}
    \\
    {e,4 f g}
  >>
  | <<
    {c4 (b8 a g4)}
    \\
    {c,4 d e}
  >>
  | <<
    {a4 (g8 f e4)}
    \\
    {a,4 b c}
  >>
  | <gs e'>2.
  | <<
    {<gs' e'>4\arpeggio (<fs d'>8 <gs e'> < e c'>4 | b'2 a4) | c4 b8 a a4 | c8 [b] \acciaccatura {c} b [a] a4}
    \\
    { s2. | e4 d8 e c4~ | <c fs> <d gs> c~| <c fs>\> <d gs> c\!}
  >>
  | <<
    {<fs d'>4\arpeggio (<e c'>8 <fs d'> < d b'>4 | a'2 g!4) | b4 a8 g g4 | b8 [a] \acciaccatura {b} a [g] g4}
    \\
    { s2. | d4 c8 d b4~ | <b e> <c fs> b~| <b e>\> <c fs> b\!}
  >>
  | <<
    {d'8 (e f4 c e | b8 c d4 a c | g8 a b4 f a | e8 f g4 d f)}
    \\
    {f!4 a e g | d f c e | b d a c | g b f a}
  >>
  | <a f'>1^\markup {\italic "a tempo"}
  | <fs d'>1
  | cs'2 d\<
  | d1\arpeggio\!
  | r4 f'8 (a16 d c2)
  | r4 f,8 (a16 d c2)
  %tercera estrofa
  \time 3/4
  | <<
    {e,4 (d8 c b4}
    \\
    {e,4\p f g}
  >>
  | <<
    {a2 b4)}
    \\
    {a4 g f}
  >>
  | <<
    {e'4 (d8 c b4}
    \\
    {e,4 f g}
  >>
  | <<
    {a2 b4)}
    \\
    {a4 g f}
  >>
  | <<
    {e'4 (d8 c b4)}
    \\
    {e,4 f g}
  >>
  | <<
    {c4 (b8 a g4)}
    \\
    {c,4 d e}
  >>
  | <<
    {a4 (g8 f e4)}
    \\
    {a,4 b c}
  >>
  | <gs e'>2.
  | <<
    {<gs' e'>4\arpeggio (<fs d'>8 <gs e'> < e c'>4 | b'2 a4) | c4 b8 a a4 | c8 [b] \acciaccatura {c} b [a] a4}
    \\
    { s2. | e4 d8 e c4~ | <c fs> <d gs> c~| <c fs> <d gs> c}
  >>
  | <<
    {<fs d'>4\arpeggio (<e c'>8 <fs d'> < d b'>4 | a'2 g4) | b4 a8 g g4 | b8 [a] \acciaccatura {b} a [g] g4}
    \\
    { s2. | d4 c8 d b4~ | <b e> <c fs> b~| <b e>\> <c fs> b\!}
  >>
  | <<
    {d'8 (e f4 c e | b8 c d4 a c | g8 a b4 f a | e8 f g4 d f)}
    \\
    {f!4 a\< e g\! | d f\> c e | b d a c\! | g b f a}
  >>
  | <a f'>1^\markup {\italic "a tempo"}
  | <fs d'>1
  | cs'2 d
  | d1\arpeggio
  | r4 f'8\> (a16 d c2)
  | r4 f,8\! (a16_\markup {\italic rit.} d c2)
  | c,,1\fermata \bar "|."
}

lower = \relative c {
  \clef bass
  \global
  | <c, g' f' a c d>1^\markup{\dynamic pp \italic "dolce"}_\sustainOn
  | <c g' f' a c d>
  \time 3/4
  | <<
    {g''2.}
    \\
    {c,4\sustainOff (d e}
  >>
  | <<
    {g2.}
    \\
    {f4 e d)}
  >>
  | <<
    {g2.}
    \\
    {c,4 (d e}
  >>
  | <<
    {g2.}
    \\
    {f4 e d)}
  >>
  | <<
    {g2.}
    \\
    {c,4 (d e)^\markup {\whiteout \italic "poco cresc."}}
  >>
  | <<
    {e2.}
    \\
    {a,4 (b c)}
  >>
  | <<
    {c2.}
    \\
    {f,4 (g a)}
  >>
  | <e b'>4 (e' b')
  | R2.
  | gs4 <e, fs'>8\arpeggio gs' <a, e'>4
  | <<
    {<d, d'>4 e'2}
    \\
    {s4 e, a}
  >>
  | <<
    {<d, d'>4 e'2}
    \\
    {s4 e, a}
  >>
  | R2.
  | fs'4 <d, e'>8\arpeggio fs' <g, d'>4
  | <<
    {<c, b'>4 d'2}
    \\
    {s4 d, g}
  >>
  | <<
    {<c, c'>4 d'2}
    \\
    {s4 d, g~}
  >>
  \time 4/4
  | <<
    {a'4 c g b | f a e g | d f c e | b d a c}
    \\
    {g1 | g~ | g~ | g}
  >>
  | <f c'>1
  | <d a'>1
  | <<
    \autoBeamOff
     { \crossStaff {e'2 fs2} }
    \\
    {<a,, a'>2 <d a'>2}
    \autoBeamOn
  >>
  | <<
    {b''2\arpeggio (a)}
    \\
    {<g,, g' f'!>1\arpeggio}
  >>
  | <c g' f' a c d>1^\markup{\italic "dolce"}
  | <c g' f' a c d>^\pp
  %segona estrofa
  \time 3/4
  | <<
    {g''2.}
    \\
    {c,4 (d e}
  >>
  | <<
    {g2.}
    \\
    {f4 e d)}
  >>
  | <<
    {g2.}
    \\
    {c,4 (d e}
  >>
  | <<
    {g2.}
    \\
    {f4 e d)}
  >>
  | <<
    {g2.}
    \\
    {c,4 (d e)}
  >>
  | <<
    {e2.}
    \\
    {a,4 (b c)}
  >>
  | <<
    {c2.}
    \\
    {f,4 (g a)}
  >>
  | <e b'>4 (e' b')
  | R2.
  | gs4 <e, fs'>8\arpeggio gs' <a, e'>4
  | <<
    {<d, d'>4 e'2}
    \\
    {s4 e, a}
  >>
  | <<
    {<d, d'>4 e'2}
    \\
    {s4 e, a}
  >>
  | R2.
  | fs'4 <d, e'>8\arpeggio fs' <g, d'>4
  | <<
    {<c, b'>4 d'2}
    \\
    {s4 d, g}
  >>
  | <<
    {<c, c'>4 d'2}
    \\
    {s4 d, g~}
  >>
  \time 4/4
  | <<
    {a'4\mf^\< c g b | f\! a^\> e g | d f c e\! | b d^\markup {\italic "poco rit."} a c}
    \\
    {g1 | g~ | g~ | g}
  >>
  | <f c'>1^\p
  | <d a'>1^\pp
  | <<
    \autoBeamOff
     { \crossStaff {e'2 fs2} }
    \\
    {<a,, a'>2 <d a'>2}
    \autoBeamOn
  >>
  | <<
    {b''2\arpeggio (a)}
    \\
    {<g,, g' f'!>1\arpeggio}
  >>
  | <c g' f' a c d>1^\markup{\italic "dolce"}
  | <c g' f' a c d>^\pp
  % tercera estrofa
  \time 3/4
  | <<
    {g''2.}
    \\
    {c,4 (d e}
  >>
  | <<
    {g2.}
    \\
    {f4 e d)}
  >>
  | <<
    {g2.}
    \\
    {c,4 (d e}
  >>
  | <<
    {g2.}
    \\
    {f4 e d)}
  >>
  | <<
    {g2.}
    \\
    {c,4 (d e)}
  >>
  | <<
    {e2.}
    \\
    {a,4 (b c)}
  >>
  | <<
    {c2.}
    \\
    {f,4 (g a)}
  >>
  | <e b'>4 (e' b')
  | R2.
  | gs4 <e, fs'>8\arpeggio gs' <a, e'>4
  | <<
    {<d, d'>4 e'2}
    \\
    {s4 e, a}
  >>
  | <<
    {<d, d'>4 e'2}
    \\
    {s4 e, a}
  >>
  | R2.
  | fs'4 <d, e'>8\arpeggio fs' <g, d'>4
  | <<
    {<c, b'>4 d'2}
    \\
    {s4 d, g}
  >>
  | <<
    {<c, c'>4 d'2}
    \\
    {s4 d, g~}
  >>
  \time 4/4
  | <<
    {a'4^\mf c g b | f a e g | d f c e | b d a c}
    \\
    {g1 | g~ | g~ | g}
  >>
  | <f c'>1^\p
  | <d a'>1^\pp
  | <<
    \autoBeamOff
     { \crossStaff {e'2 fs2} }
    \\
    {<a,, a'>2 <d a'>2}
    \autoBeamOn
  >>
  | <<
    {b''2\arpeggio^\> (a)\!}
    \\
    {<g,, g' f'!>1\arpeggio}
  >>
  | <c g' f' a c d>1^\markup{\italic "dolce"}
  | <c g' f' a c d>
  | <c g' e'>^\pp_\fermata \bar "|."

  \label #'lastPage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% REMARKABLE %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \bookOutputSuffix "remarkable"
  \header {
    title = "Die verschwiegene Nachtigall, Op. 48 nº 4"
    subtitle = "El rossinyol secret"
    composer = "E. Grieg (1843-1907)"
    arranger = "W. von der Vogelweide (1170?-1228?)"
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
        % \consists #Span_stem_engraver
      }
      \context {
        \PianoStaff
        \consists #Span_stem_engraver
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
    title = "Die verschwiegene Nachtigall, Op. 48 nº 4"
    subtitle = "El rossinyol secret"
    composer = "E. Grieg (1843-1907)"
    arranger = "W. von der Vogelweide (1170?-1228?)"
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
      \context {
        \PianoStaff
        \consists #Span_stem_engraver
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
