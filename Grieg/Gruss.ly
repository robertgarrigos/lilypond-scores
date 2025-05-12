\version "2.24.3"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 2/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 1,1        % beatStructure
  % #'()       % beamExceptions
  \key e \major
  \time 2/4
  \tempo "Allegro com moto"
  \set Score.tempoHideNote = ##t
  \tempo 4=110

}

melody = \relative c'' {
  \clef treble
  \global
  | R2
  | R2
  | R2
  | R2
  %5
  | b4.^\p e,8
  | fs fs gs a
  | b2( ^\<
  | cs2\!)
  | ds2~
  %10
  | 8 as cs8. e16
  | e4 ds
  | R2
  | fs4.^>^\f fs,8
  | fs4 fs
  | \set melismaBusyProperties = #'()
  \slurDashed
  fs'4.( fs,8)
  \unset melismaBusyProperties
  %15
  | fs2
  | gs4^\p b
  | b^\< e\!
  | as,2~
  |  as^\>
  | b4\! r4
  | R2
  | R2
  | R2
  | b4.^\p e,8
  | fs fs g a
  | b2~
  | b
  | c4^\< c\!
  | \set melismaBusyProperties = #'()
  \slurDashed e^\>  (c8)\! b \slurSolid
  \unset melismaBusyProperties
  | \grace {[b16\=1( c]} b2\=1)
  | a4 r4
  | c4^\markup { \italic più \dynamic p } c
  | a f
  | a4.^> a8
  | a2
  | r4 c^>~
  | c8 f,\< g a\!
  | as2
  | b
  | bs4 cs
  | bs4 cs
  | css4.^> ds8
  | ds2
  | r4 e4~^\f
  | e8 e, a^\< cs\!
  | fs2~^\sf
  | fs2^\>
  | e4~\!e8 r8
  | R2
  | R2
  | R2
  | R2
  | R2
  | R2
  | R2
}

catala = \lyricmode {
  Suau res -- so -- nes dins el cor
      dol -- ça cam -- pa -- ne -- ta;
      drin -- ga, pri -- ma -- ve -- _ ra,
      so -- na per tot l'am -- ple.

      Ves de -- vo -- ra de la llar,
      on les vio -- les flo -- rei -- xen,
      i si un -- a ro -- sa veus,
      fes -- li~un -- a -- be -- sa -- da,
      i si un -- a ro -- sa veus,
      fes -- li~un -- a -- be -- sa -- da.
}

alemany = \lyricmode {
  Lei -- se zieht durch mein Ge -- müt __
      lieb -- li -- ches Ge -- läu -- te,
      klin -- ge, klei -- nes Früh -- lings -- lied,
      kling hi -- naus ins Wei -- te.

      Zieh' hin -- aus bis an das Haus,
      wo die Veil -- _ chen sprie -- ßen,
      wenn du ei -- ne Ros -- e schaust,
      sag', ich laß sie grü -- ßen,
      wenn du ei -- ne Ros -- e schaust,
      sag', ich laß sie grü -- ßen.
}



upper = \relative c' {
  \clef treble
  \global

  | e16 ^( gs b e \stemUp gs8^.) [r16 <e fs>16]
  | <e fs>4 ^( <ds b'>8) r8
  | e,16^( gs b e \stemUp gs8^.) [r16 <e fs>16]
  | <e fs>4 ^( <ds b'>8) r8
  | \change Staff = "lower" e,,16\pp ^(gs b \change Staff = "upper" \stemDown e \stemUp gs8^.) [r16 <e fs>16]
  | <e fs>4 ^( <ds b'>8) r8
  | \change Staff = "lower" e,16 ^(gs b \change Staff = "upper" \stemDown e gs8^.) r8
  | \stemUp \change Staff = "lower" e,16 ^(gs cs \change Staff = "upper" \stemDown e gs8^.) r8
  | \stemUp \change Staff = "lower" gs,16\pp ^(b ds \change Staff = "upper" \stemDown gs \stemUp b8^.) [r16 <gs as>16]
  | <gs as>4 ^( <fss ds'>8) r8 \stemNeutral
  | gs,16 ^(b ds gs b8^.) r8
  | g,16 ^(b ds g b8^.) r8
  | fs,16 ^(b ds   fs <b ds fs>8^.) [r16 <gs b e fs>]
  | <gs\=1_( b~ e fs~>4^> <fs\=1) b ds fs>8 r8
  | fs,16 ^(b ds   fs <b ds fs>8^.) [r16 <gs b e fs>]
  | <gs\=1_( b~ e fs~>4^> <fs\=1) b ds fs>8 r8
  | e4 fs
  | fs <e gs>4
  | <as, e' as>4 <e'~ e'~>4
  | <e e'>4 <ds ds'>4
  | <ds ds'>4 r8. <b' e fs>16
  | <b_~ e fs\=1(>4 <b ds b'\=1)>4
  | <b_~ e fs\=1(>4 <b ds b'\=1)>4
  | <c_\=2( e fs\=1(>4^\markup {\italic "poco rit."} <b\=2) ds b'\=1)>4
  | <e,\p g b>8 <e g b>4 <e g b>8
  | <e fs a>8 <e fs a>4 <e fs a>8
  | <e g b>8 <e g b>4 <e g b>8
  | <e g b>8 <e g b>4 <e g b>8
  | <c g' c>8 <c g' c>4 <c g' c>8
  | <c fs c'>8 <c fs c'>4 <c fs c'>8
  | <c f b>8 <c f b>4 <c f b>8
  | <c e a>8 <c e a>4 <c e a>8
  | <a c g'>8 <a c g'>4 <a c g'>8
  | <a c f>8 <a c f>4 <a c f>8
  | e'8 e4 e8
  | ds ds4 ds8
  | <a c g'>8 <a c g'>4 <a c g'>8
  | <a c f>8 <a c f>4 <a c f>8
  | e'8 e4 e8
  | ds! ds4 ds8
  | fs fs4 fs8
  | e8 e4 e8
  | <a,! css gs'>8 <a css gs'>4 <a css gs'>8
  | <a ds fs>8 <a ds fs>4 <a ds fs>8
  | a16 (cs e a <cs e>8^.) [r16 <a d e>16]
  | <a~ d e~>4^> <a cs e>8 r8
  | <a, cs e>2
  | <a b ds>2
  | \change Staff = "lower" \stemUp e16 ^(gs b \change Staff = "upper" \stemDown e \stemUp gs8^.) [r16 <e fs>16]
  | <e fs>4 ^( <ds b'>8) r8
  | e16 ^( gs b e \stemUp gs8^.) [r16 <e fs>16]
  | <e fs>4 ^( <ds b'>8) r8
  | \stemNeutral e16 (gs b e gs8^.) r8
  | \stemNeutral e,16 (gs b e gs8^.) r16 \ottava #1 <e gs b>16
  | <e_\=1( gs\=2( b\=3(>2
  | <gs\=1) b\=2) e\=3)>8 \ottava #0 r8 r4 \bar "|."

}

lower = \relative c {
  \clef bass
  \global

  | \stemUp e16\p  _( b' \change Staff = "upper" \stemDown e gs b8_.) [r16 <e, a b>]
  | <e_~ a b_~ >4 <e fs b>8 r8
  | \stemUp \change Staff = "lower" e,16_( b' \change Staff = "upper" \stemDown e gs b8_.) [r16  <e, a b>]
  | <e_~ a b_~ >4 <e fs b>8 r8
  | \change Staff = "lower" e,,16 _(b' e gs b8^.) [r16 <e, a b>16]
  | <e_~ a b_~ >4 <e fs b>8 r8
  |  e,16 _(b' e gs b8^.) r8
  |  e,,16 _(cs' e gs cs8^.) r8
  | gs,16 _(ds' gs b ds8^.) [r16 <gs, cs ds>16]
  | <gs_~ cs ds^~ >4 <gs as ds>8 r8
  |  gs,16\cresc (ds' gs b ds8^.) r8
  |  g,,16 (ds' g b ds8^.) r8
  | fs,,16 \f (ds' fs b ds8^.) [r16 <gs, b e>16]
  | <gs  b~ e^> >4 (<fs b ds>8) r8
  | fs,16 (ds' fs b ds8^.) [r16 <gs, b e>16]
  | <gs  b~ e^> >4 (<fs b ds>8) r8
  | <<
    \crossStaff {<gs b>4 <fs b>4}
    \\
    {<e, e'>4\p <ds ds'>4}
  >>
  | <<
    \crossStaff {<fs' b>4 gs}
    \\
    {<ds, ds'>4\< <cs cs'>4\!}
  >>
  | <<
    {cs'4 gs'4~}
    \\
    {fs,2~}
  >>\>
  | <<
    {gs'4 fs}
    \\
    {fs,2}
  >>
  |  <b fs'>16\!\p (b' ds fs b8^.) [r16 <b, gs'>16]
  | <<
    {gs'4( fs)}
    \\
    {b,2~}
  >>
  | <<
    {gs'4( fs)}
    \\
    {b,2~}
  >>

  | <<
    {a'4( fs)}
    \\
    {b,2}
  >>
  | <e, b'>8\p <e b'>4 <e b'>8
  | <e c'>8 <e c'>4 <e c'>8
  | <e b'>8 <e b'>4 <e b'>8
  | <e b'>8 <e b'>4 <e b'>8
  | \stemUp <a, e'>8 <a e'>4 <a e'>8
  | <a d>8 <a d>4 <a d>8
  | <a ds?>8 <a ds>4 <a ds>8
  | <a e'>8 <a e'>4 <a e'>8
  | <f c'>8^\markup { \italic più \dynamic p } <f c'>4 <f c'>8
  | <f c'>8 <f c'>4 <f c'>8
  | <<
    \crossStaff {<fs' a>8 <fs a>4 <fs a>8 }
    \\
    {<b,, b'>8 <b b'>4 <b b'>8}
  >>
  | <<
    \crossStaff {<fs'' a>8 <fs a>4 <fs a>8 }
    \\
    {<b,, b'>8 <b b'>4 <b b'>8}
  >>
  | <f' c'>8 <f c'>4 <f c'>8
  | <f c'>8 <f c'>4 <f c'>8
  | <<
    \crossStaff {<fs'! a>8 <fs a>4 <fs a>8 }
    \\
    {<b,, b'>8 <b b'>4 <b b'>8}
  >>
  | <<
    \crossStaff {<fs'' a>8 <fs a>4 <fs a>8 }
    \\
    {<b,, b'>8 <b b'>4 <b b'>8}
  >>\cresc
  | <<
    \crossStaff {<g'' as>8 <g as>4 <g as>8 }
    \\
    {<b,, b'>8 <b b'>4 <b b'>8}
  >>
  | <<
    \crossStaff {<g'' as>8 <g as>4 <g as>8 }
    \\
    {<b,, b'>8 <b b'>4 <b b'>8}
  >>
  | <b b'>8 <b b'>4 <b b'>8
  | <b b'>8 <b b'>4 <b b'>8
  | <a a'>16\f ^(e'' a cs \stemDown a'8^.) [r16 fs16]
  | fs4^>( e8) r8
  | <<
    \crossStaff { e,2 }
    \\
    {
      <fs,, fs'>2\fz
    }
  >>\>
  | <<
    \crossStaff { ds''!2 }
    \\
    {<b, b'>2}
  >>
  | \change Staff = "lower" e16\p _(b'\! e gs b8^.) [r16 <e, a b>16]
  | <e_~ a b_~ >4 <e fs b>8 r8
  | \stemUp e16\decresc  _( b' \change Staff = "upper" \stemDown e gs b8_.) [r16 <e, a b>]
  | <e_~ a b_~ >4 <e fs b>8 r8
  | \change Staff = "lower"
  \clef treble e16\pp (b' e gs b8^. r8)
  \clef treble e,,16 (b' e gs b8^. r8)
  | R2
  | R2

  \label #'lastPage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% PDF %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  % \bookOutputSuffix ""
  \header {
    title = "Gruss, Op. 48, nº 1"
    subtitle = "Salutació"
    composer = "E. Grieg (1843-1907)"
    arranger = "H. Heine (1797-1856)"

    poet = "Trad. Robert Garrigós i Gemma Aïsa"
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
      \new Voice = "mel" { \autoBeamOff \melody }
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
