\version "2.25.14"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key f \minor
  \time 4/4
  \tempo "Molt lent, melancòlic"
  \set Score.tempoHideNote = ##t
  \tempo 4=64

}


melody_first = \relative c'' {
  \clef treble
  \global

  | c4. c8 c4 c
  | ef2~ ef8 [(bf)] c [(df)]
  | df8. [(c16)] c4 r4 af8. af16
  | f'4 ef8 df c [(bf)] a [(bf)]
  | c4 (f) ef r4
  | df4. df8 df4. df8
  | ef4. e8 e [(f)] f4
  | f4 ef df c
  | ef8 [(df)] bf [(c)] af4 r4
  | df2 (c4) f
  | f4 (e8) df df4 (c8) bf
  | bf4 a r4 a8 a
  | bf4. bf8 df ([f] ef16 [df]) c ([bf])
  | af8. ([g16]) g4 r4 df'
  | c bf8 af g ([f af]) f
  | c2 r2
  | c'4. c8 c4 c
  | ef2~ ef8 ([bf]) c ([df])
  | df8. ([c16]) c4 r4 c
  | f ef df c
  | ef8 ([df]) bf ([c]) af4 r4
  | R1^\fermata \bar "|."

}

% melody_second = \relative c'' {
%   \clef treble
%   \global

%   a b c d
% }

catala_first = \lyricmode {
  Qui~em po -- gués tor -- nar~als bells di -- es,
  di -- es bells de l'a -- mor pri -- me -- ra,
  qui~em du -- gués d'a -- que -- lla vi -- da
  breus mo -- ments de dolç re -- cord!

  So -- la visc, pel dol fe -- ri -- da,
  e -- nyo -- rant les que -- ixes mi -- es
  a -- que -- lla per -- du -- da sort.

  Qui~em po -- gués tor -- nar~als bells di -- es,
  als breus mo -- ments de dolç re -- cord!
}

alemany_first = \lyricmode {
  Ach wer bringt die schö -- nen Ta -- ge,
  je -- ne Ta -- ge der ers -- ten Lie -- be,
  ach wer bringt nur ei -- ne Stun -- de
  je -- ner hol -- den Zeit zu -- rück!

  Ein -- sam nähr' ich mei -- ne Wun -- de
  und mit stets er -- neu -- ter Kla -- ge
  traur' ich um's ver -- lor -- ne Glück.

  Ach, wer bringt die schö -- nen Ta -- ge,
  wer je -- ne hol -- de Zeit zur -- ück!
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

  | <af c>2\pp <af c>4 <af c>
  | <<
    {af2\fp\> (g)\!}
    \\
    {<ef ef'>1}
  >>
  |<<
    {df'4 (c2) c4}
    \\
    {<g bf>2 af4 gf}
  >>
  | <<
    {f'4 (ef8 df c bf a bf)}
    \\
    {f1}
  >>
  | <<
    {c'4 (cf bf2)}
    \\
    {af2 g}
  >>
  | r8 <g bf df> <g bf df> <g bf df> r <af df> <af df> <af df>
  | r <af c ef> <af c ef> <af c e> r <af df f> <af df f> <af df f>
  | r\pp <g f'> r <af ef'!> r <ef df'> r <ef c'>
  | r <f df'> r <g bf> r af af af
  | df2 (c4 f)
  | f (e8) df df4 (c8) bf
  | <<
    {gf'4..^> (f16) f2}
    \\
    {bf,4 (a) a2}
  >>
  | <bf df f>2\arpeggio <bf df f>2\arpeggio
  | <g df'! e>2\arpeggio <e bf' df>2\arpeggio
  | <<
    {c'2 (b)}
    \\
    {f1}
  >>
  | <e g c>2_. (<f af c>4_. <g bf c>_.)
   <af c>2\pp <af c>4 <af c>
  | <<
    {af2\fp\> (g)\!}
    \\
    {<ef ef'>1}
  >>
  |<<
    {df'4 (c2) c4}
    \\
    {<g bf>2 (<f af>4) f\p}
  >>
  | <g f'>4 (<af ef'> <ef df'> <ef c'>)
  | <f df'> (<g bf>) af2
  | <<
    {c8 (bf g af) <af, c f>2^\fermata}
    \\
    {<df g>4\pp (<bf e>) s2}
  >>
}

lower = \relative c {
  \clef bass
  \global

  | <f c'>2 <f c'>4 <f c'>
  | <<
    {c'2 (df)}
    \\
    {ef,1}
  >>
  | <<
    {df'4 (c2) af4}
    \\
    {e2 (f4) ef}
  >>
  | <<
    {af4^> (a8 bf c df ef df)}
    \\
    {df,1}
  >>
  | <<
    {c'4 (d ef2)}
    \\
    {ef,1}
  >>
  | <e e'>2 <f f'>
  | <af, af'> <df df'>
  | <bf' df>4 (<c ef> <g bf> <af c>)
  | <df, bf'> (<ef df'> <af c>2) \clef treble
  | f'8 (af f af e g af c)
  | g (bf g f) e (g e g )
  | ef! (gf ef gf) ef (f ef f)
  | df (f df f) df (f df f) \clef bass
  | bf, (df bf df) g, (bf g bf)
  | af2 (df,)
  | c r2
  | <f c'>2 <f c'>4 <f c'>
  | <<
    {c'2 (df)}
    \\
    {ef,1}
  >>
  | <<
    {df'4 (c2) c4}
    \\
    {e,2 (f4) af}
  >>
  | <bf df> (<c ef> <g bf> <af c>)
  | <df, bf'> (<ef df'>) <af c>2
  | bf,4 (c) f,2\fermata

  \label #'lastPage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% REMARKABLE %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \bookOutputSuffix "remarkable"
  \header {
    title = "Erster Verlust, Op. 5, n. 4"
    subtitle = "Primer desengany"
    composer = "F. Schubert (1797-1828)"
    arranger = "J. W. Goethe (1749-1832)"
    poet = "Trad. Joaquim Pena (1873-1944)"
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
    title = "Erster Verlust, Op. 5, n. 4"
    subtitle = "Primer desengany"
    composer = "F. Schubert (1797-1828)"
    arranger = "J. W. Goethe (1749-1832)"
    poet = "Trad. Joaquim Pena (1873-1944)"
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
