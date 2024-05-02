\version "2.25.14"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key ef \minor
  \time 3/4
  \tempo "Lent"
  \set Score.tempoHideNote = ##t
  \tempo 4=50

}


melody_first = \relative c'' {
  \clef treble
  \global

  | R2.
  | R2.
  | R2.
  | bf4. ef8 gf, bf
  %5
  | ef,4 (gf4.) f8
  | f8. ([ef16]) ef4 ef'~
  | ef4. ef8 ef8. df!16
  | df4 (cf) ef8 cf
  | af4. af8 bf bf
  %10
  | df8. ([cf16]) bf4 df8 bf
  | gf2 (bf16 [af]) gf ([af])
  | bf4 cf2^>
  | cf4 (ef4.) df8
  | df4 (cf) d
  %15
  | ef8 (gf4 ef8) cf ([af])
  | gf4 (bf4.) d,8
  | ef4 r4 r4
  | R2.^\fermata
  | df'8. cf16 bf8 cf df ef
  | df8.([ cf16]) bf4 gf'8. bf,16
  | bf8 bf bf bf df8.( [cf16])
  | bf4 bf8 bf bf bf
  | ef4. ef8 ff8. ff16
  | ef16([ af,]) af8 af8. af16 cf8 bf
  | af8 af ef' cf af ef'
  | ff4. df8 bf ef
  | af,4 r4 r4
  | R2.
  | R2.
  | bf4. ef8 gf, bf
  %5
  | ef,4 (gf4.) f8
  | f8. ([ef16]) ef4 ef'~
  | ef4. ef8 ef8. df!16
  | df4 (cf) ef8 cf
  | af4. af8 bf bf
  %10
  | df8. ([cf16]) bf4 df8 bf
  | gf2 (bf16 [af]) gf ([af])
  | bf4 cf2^>
  | cf4 (ef4.) df8
  | df4 (cf) d
  %15
  | ef8 (gf4 ef8) cf ([af])
  | gf4 (bf4.) d,8
  | ef4 r4 r4
  | R2.
  | R2.
  | R2.\fermata \bar "|."

}

% melody_second = \relative c'' {
%   \clef treble
%   \global

%   a b c d
% }

catala_first = \lyricmode {
  Puny mon cor cru -- el re -- can -- ça,
  que~ell __ ja no~és al món;
  ai! l'An -- selm, l'a -- mic, des -- can -- sa
  dins d'eix clot __ pre -- gon.

  Gran és __ mon dol!, __ mon dol!, __ Gran és __ mon dol!
  D'ell ma vi -- da s'em -- ple -- na -- va
  d'ell ma vi -- da s'em -- ple -- na -- va
  i sen -- se~ell ma jo -- ia~a -- ca -- ba,
  puix que mai no~hau -- ré con -- sol!
  Ma jo -- ia~a -- ca -- ba,
  mai no~hau -- ré con -- sol!

  Puny mon cor cru -- el re -- can -- ça,
  que~ell __ ja no~és al món;
  ai! l'An -- selm, l'a -- mic, des -- can -- sa
  dins d'eix clot __ pre -- gon.

  Gran és __ mon dol!, __ mon dol!, __ Gran és __ mon dol!
}

alemany_first = \lyricmode {
  Daß ich dich ver -- loh -- ren ha -- be,
  daß __ du nicht mehr bist,
  ach! daß hier in die -- sem Gra -- be
  mein An -- sel -- mo ist.

  Das ist __ mein Schmerz!, mein Schmerz!, das ist __ mein Schmerz!
  Seht, wie lieb -- ten wir uns bei -- de,
  seht, wie lieb -- ten wir uns bei -- de,
  und, so lang' ich bin, kommt Freu -- de
  nie -- mahls wie -- der in mein Herz,
  kommt Freu -- de
  nie -- mahls wie -- der in mein Herz.

  Daß ich dich ver -- loh -- ren ha -- be,
  daß __ du nicht mehr bist,
  ach! daß hier in die -- sem Gra -- be
  mein An -- sel -- mo ist.

  Das ist __ mein Schmerz!, mein Schmerz!, das ist __ mein Schmerz!
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
  | <<
    {bf2\p <a ef'>4}
    \\
    {<f af>4 (<ef gf>) <ef gf>}
  >>
  | <<
    {<bf ef> gf'4.^> <af, d f>8}
    \\
    {s4 bf4. s8}
  >>
  | <af d f>4^> (<gf ef'>8)\noBeam bf (ef gf)
  | <<
    {bf2 bf4\rest}
    \\
    {<f af>4 (<ef gf>) s4}
  >>
  %5
  | <gf, ef'>4 <bf gf'>4.^> (<af d f>8)
  | <af d f>4\> ^(_(<gf ef'>4))\! r4
  | <ef' gf ef'>2\fp <ef g df'>4
  | <ef af cf>2 r4
  | r8 <f af>_.\p\< (<f af>_. <f af>_. <gf bf>_. <gf bf>_.)\!
  %10
  | <<
    {df'8.\> (cf16) bf4\! bf4\rest}
    \\
    {af4 gf4 s4}
  >>
  | <<
    {df'8 (bf gf4 bf16 af gf af)}
    \\
    {df,8 d ef2}
  >>
  | <<
    {bf'4 \once \override Tie.staff-position = 5.1 cf2~ | <ef, gf cf>8 <ef gf cf>8 r8 <gf cf ef> r8 <ff bf df>}
    \\
    { d4 d2\sf( |  \hideNotes ef8)}
    \\
    {s4 \once \override NoteColumn.horizontal-shift = #1 f  gf8 af  | s2.}
  >>
  | r8 <ef af cf> r8\< <ef af cf> r8 <f! cf' d>\!
  %15
  | r8\> <ef bf' ef> r <ef bf' ef>\! r <ef f cf'>
  | r <ef gf bf> r <bf ef gf> r <af d f>
  | r <gf bf ef> r <gf bf ef> r <gf bf ef>
  | r <af cf ef> r <af cf eff> r <af cf df>\fermata
  | df'8.\p (cf16 bf8 cf df <f, ef'>)
  %20
  | <<
    {df'8 cf bf4 <ef, gf~ bf~>\fp | <gf bf>8 <gf bf>4 <gf bf>( <f af>8)}
    \\
    {gf8( ef16 f) gf4 s4 | df8 c df ef df4 }
  >>
  | r16 f (af bf) r f (af bf) r ef, gf bf
  | r cf,! ef af r cf, ef af r df, ff bf
  | r cf, ef af r cf, ef af r df, ef g
  %25
  | r cf, ef af r cf, ef af r cf, ef af
  | r df, ff bf r df, ff bf r df, ef g
  | <<
    {b16\rest cf,( ef af) cf8( bf af gf!)}
    \\
    {s16 \once \override NoteColumn.force-hshift = -0.5 cf,8.~ cf8 df af bff}
  >>
  | <<
    {f'16( f af cf ef8 df cf bf)}
    \\
    {af,8 r f' gf cf, ef}
  >>
  | <<
    { bf'4 (\grace {cf16 bf} af4.)( a8) }
    \\
    { df,2 r4 }
  >>
  | <<
    { bf'2 b4\rest }
    \\
    { <af! f>4( <ef gf>) s4}
  >>
  %5
  | <gf, ef'>4 <bf gf'>4._> (<af d f>8)
  | <af d f>4\> ^(_(<gf ef'>4))\! r4
  | <gf' ef'>2_> <g df'>4
  | <af cf>2 r4
  | r8 <f af>_.\p\< (<f af>_. <f af>_. <gf bf>_. <gf bf>_.)\!
  %10
  | <<
    {df'8.\> (cf16) bf4\! bf4\rest}
    \\
    {af4 gf4 s4}
  >>
  | <<
    {df'8 (bf gf4 bf16 af gf af)}
    \\
    {df,8 d ef2}
  >>
  | <<
    {bf'4 \once \override Tie.staff-position = 5.1 cf2~ | <ef, gf cf>8 <ef gf cf>8 r8 <gf cf ef> r8 <ff bf df>}
    \\
    { d4 d2\fp(\> |  \!\hideNotes ef8)}
    \\
    {s4 \once \override NoteColumn.horizontal-shift = #1 f  gf8 af  | s2.}
  >>
  | r8 <ef af cf> r8\< <ef af cf> r8 <f! cf' d>\!
  %15
  | r8\> <ef bf' ef> r <ef bf' ef>\! r <ef f cf'>
  | r <ef gf bf> r <bf ef gf> r <af d f>
  | ef'8 gf'4^>( ef8 cf af)
  |  \after 8 \turn gf4 bf4.^>( d,8)
  | <<
    { ef2~ ef8 d }
    \\
    { gf, g af bf cf af }
  >>
  |<gf ef'>2.\fermata \bar "|."


}

lower = \relative c {
  \clef bass
  \global

  | <<
    {bf'2 a4^>}
    \\
    {d, (ef) <cf! ef gf!>}
  >>
  | <<
    {gf' s2}
    \\
    {bf,2 bf4}
  >>
  | <ef, ef'>2 r4
  | <<
    {bf''2 ef,,8 _(gf)}
    \\
    {d'4 (ef) s4}
  >>
  %5
  | bf2 <bf, bf'>4
  | <cf cf'>2 r4
  | cf''2 bf4
  | af2 r4
  | r8 <cf df>8^. (<cf df>8^. <cf df>8^. <bf df>8^. <gf df'>8^.)
  %10
  | <<
    {df'2 s4}
    \\
    {f,4 (gf) df\rest}
  >>
  | <<
    {gf2 (ef4)}
    \\
    {bf4 (cf2)}
  >>
  | <<
    {f4 <af, af'> <gf gf'>8 <f f'>}
    \\
    {bf4 s2}
  >>
  | <gf gf'>8 r8 <gf gf'>8 r8 <g g'>8 r8
  | <af af'> r <af af'> r <af, af'> r
  %15
  | <gf gf'> r <gf gf'> r <af af'> r
  | <bf bf'> r <bf bf'> r <bf bf'> r
  | <ef ef'>^\pp r ef' r ef r
  | f r f r f r\fermata
  | <bf df>8. <af df>16 <gf df'>8 <af df> <bf df> <cf df>
  %20
  | <<
    {s2 <gf~ bf~>4 | <gf bf>8 <gf bf>4 <gf bf>( <f af>8)}
    \\
    {<bf df>8 <af df> <gf df>4 c,( | df8) ef( df) c( df4)}
  >>
  | <d f af bf>8 r8 d r ef r
  | cf! r <cf, cf'> r <df df'> r
  | <ef ef'> r <ef ef'> r <ef ef'> r
  %25
  | <af, af'> r <cf cf'> r <cf cf'> r
  | <df df'> r <df df'> r <ef ef'> r
  | <<
    { af8 cf16 ef af8 gf! f ef }
    \\
    { \once \override NoteColumn.force-hshift = -0.5 af,4.( bf8 cf! c) }
  >>
  | <df f>8 r <cf! af'>( <bf bf'> <ef gf> <c gf'>)
  | <<
    { gf'4( f) d4\rest }
    \\
    { df2s4 }
  >>
  %30
  | <<
    { bf'2 ef,,8_( gf) }
    \\
    { d'4( ef) s4 }
  >>
  | bf2 <bf, bf'>4
  | <cf cf'>2 r4
  | <cf'' ef>2 <bf ef>4
  | <af ef'>2 r4
  | r8 <cf df>8^. (<cf df>8^. <cf df>8^. <bf df>8^. <gf df'>8^.)
  %10
  | <<
    {df'2 s4}
    \\
    {f,4 (gf) df\rest}
  >>
  | <<
    {gf2 (ef4)}
    \\
    {bf4 (cf2)}
  >>
  | <<
    {f4 <af, af'> <gf gf'>8 <f f'>}
    \\
    {bf4 s2}
  >>
  | <gf gf'>8 r8 <gf gf'>8 r8 <g g'>8 r8
  | <af af'> r <af af'> r <af, af'> r
  %15
  | <gf gf'> r <gf gf'> r <af af'> r
  | <bf bf'> r <bf bf'> r <bf bf'> r
  | ef'^.[ <gf bf ef>^.] ef^.[ <gf bf ef>^.] af,_.[ <cf f ef>_.]
  | bf^.[ <ef gf bf>^.] bf^.[ <ef gf bf>^.] bf^.[ <f' af bf>^.]
  | <<
    { ef df cf g af cf }
    \\
    { ef,2. }
  >>
  | <ef bf'>2.\fermata \bar "|."


  \label #'lastPage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% REMARKABLE %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \bookOutputSuffix "remarkable"
  \header {
    title = "Am Grabe Anselmos, Op. 6, n. 3"
    subtitle = "En la tomba d'Anselm"
    composer = "F. Schubert (1797-1828)"
    arranger = "M. Claudiu (1740-1815)"
    poet = "Trad. Joquim Pena"
    tagline = ##f
  }
  \score {
    <<
      \new Voice = "mel_f" { \autoBeamOff \melody_first }
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
    title = "Am Grabe Anselmos, Op. 6, n. 3"
    subtitle = "En la tomba d'Anselm"
    composer = "F. Schubert (1797-1828)"
    arranger = "M. Claudiu (1740-1815)"
    poet = "Trad. Joquim Pena"
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
      \new Voice = "mel_f" { \autoBeamOff \melody_first }
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
      #(layout-set-staff-size 18)
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
