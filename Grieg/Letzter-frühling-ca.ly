\version "2.24.3"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key fs \major
  \time 4/4
  \tempo "Andante espressivo"
  \set Score.tempoHideNote = ##t
  \tempo 4=70
  \set PianoStaff.connectArpeggios = ##t

}

melody_first = \relative c'' {
  \clef treble
  \global
  \repeat volta 2 {
    | R1
    | R1

    as4 fs 8 as ds4 cs8 bs
    | cs4 gs8 as b!4. cs8
    | as2. fs8 gs
    | as4 cs2 r4
    | b4 gs8 b e4 ds8 css
    | ds4 as8 b cs4. ds8
    | b2. as8 gs
    | as4 fs2 r4
    | R1
    | as4 bs8 css ds4 css8 bs
    | ds (css) css bs as4. css8
    | ds2. es8 css
    | bs4 es,2 r4
    | as4^\p bs8 css ds4 css8 bs
    | ds (css) es css as4. as8
    | es'2.^\< css8 bss
    | css4 as2.\!
    | cs!4 ^\markup {\italic "cresc. e più tenuro poco a poco"} as8 gs fs4 gs8 as
    | b^\< [ds] ds\! css as4. fs8
    | ds2. fs8^\markup {\italic "cresc. molto"} as
    | css4 es2.
    | fs4 fs8 es cs4 ds8 es
    | es ([ds]) fs ds as4 r8 as^\pp
    | cs1~
    | cs2. as8^\< gs\!
    | as4^-^\> fs2\! r4
    | R1
    | R1
    | R1
    | R1
    | R1
  }
  | R1
  | R1
  | R1
  \bar "|."

}

% melody_second = \relative c'' {
%   \clef treble
%   \global

%   a b c d
% }

catala_first = \lyricmode {
  Veig al -- tra vol -- ta l'hi -- vern que se'n va
  tu vens pri -- ma -- ve -- ra:
  tot a l'en -- torn re -- flor -- eix, i~es re -- fà
  na -- tur -- a sen -- ce -- ra.

  Jo~he vist fu -- gir tot el glaç per les valls,
  els rius se l'en -- du -- en,
  fon -- dre's les neus i~els to -- rrents ser cris -- tall
  que co -- rren i llu -- en.

  Veig del prat verd co -- lo -- rir -- se~el tres -- pol,
  la flor ja~és des -- clo -- sa;
  sem -- bla'm sen -- tir so -- ta~el ple bat del vol
  com can -- ta l'a -- lo -- sa.


}

catala_second = \lyricmode {
  So -- ta~el do -- sser de fu -- lla -- tges no -- vells
  raigs d'or s'hi be -- llu -- guen,
  dins __ _ les bran -- ques s'hi sen -- ten oc -- ells
  que~es gron -- xen i ju -- guen.

  Jo -- ia d'a -- bril que de nou has tor -- nat,
  com pa -- sses re -- sol -- ta!
  A -- ra gau -- dir -- te tot just m'és do -- nat
  per úl -- ti -- ma vol -- ta.

  Llar -- ga la vi -- da vo -- li -- a per' mi,
  que tant l'es -- ti -- ma -- va,
  ai! que ja~em sen -- to de mort en -- va -- ir,
  i tot ja s'a -- ca -- ba!
}

% alemany_second = \lyricmode {
%   Aaa Bee Cee Dee
% }

upper = \relative c'' {
  \clef treble
  \global

  | <<
    { as2. (fs8^-\< gs^- | as4^-  \!cs2.^-)}
    \\
    {s1 s2 es,2}
    \\
    {\stemDown fs2. fs4 | <fs as>2_~ as4\> gs\!}
  >>
  | <<
    {<as, as'>2 (<a a'>2)}
    \\
    {<cs fs>1}
  >>
  | <<
    {<gs es' gs>2 (<fs ds' fs>4 <gs es' gs>)}
    \\
    {cs1}
  >>
  | <<
    {as'2~ as4 fs8\< (gs | as4 \! cs2\> bs4\!)}
    \\
    {\stemUp s1 | s2 e,2}
    \\
    {\stemDown <as, cs fs>2 <ds fs> | <cs es>_~ cs4 bs}
  >>
  | <<
    {<b! gs' b!>1}
    \\
    {ds2 (css)}
  >>
  | <<
    {
      <as fss' as>2 (<gs es' gs>4 <as fss' as> | <b ds gs b>2 <cs es>)
      | fs2. as8^\pp (gs | as4 fs2.)
    }
    \\
    {ds1 | s2 b2~ | <b ds>2 <as cs> | <b ds> <as cs>}
  >>
  | <as'' ds>1
  | <<
    {ds2 (css)}
    \\
    {as1}
  >>
  | <<
    {ds2. (css4)}
    \\
    {as2\< as2\!}
  >>
  | <gs bs>2\> (<as css>)\!
  | <fs, as ds>1
  | <<
    {ds'2 (css)}
    \\
    {<es, as>1}
  >>
  | <<
    {
      <es es'>1 | css'2 (cs~) | <cs, cs'> <b ds b'~> | <b ds b'> <as css as'~>
      | <as ds as'> <bs ds gss bs>
    }
    \\
    {as'2 gss | <es as>1 | fs | es | s1}
  >>
  | <css es as css>2 <cs es b'! cs>
  | <fs as cs fs>^-\ff <es fs cs' es>^-
  | <<
    {<ds fs b ds>_- <ds fs~ as~>_- | <fs as>2. fs8^- (gs^- | as4^- cs2.^-)}
    \\
    { s1 | s2.  fs,4 | fs2\> es\!}
    \\
    { \stemDown s1 | cs2\pp ds | \once \override NoteColumn.force-hshift = 0.5 cs1}
  >>
  | <<
    {fs2. (as8 gs | as4 fs2 gs8 as | gs as fs gs as cs^. ds^. fs^. | gs^. as^. \ottava 1 cs^. ds^. \tuplet 3/2 {fs4^- gs^- as^- })}
    \\
    {s1 | s1 | s4 fs,,4~ fs2~ | \once \override NoteColumn.force-hshift = -0.5 fs1}
    \\
    {\stemDown <b, ds>2 <as cs> | <b ds>2 <as cs> | <b ds>1_~| <b ds >}
  >>
  | <as'' fs' cs'>2~ <as fs' cs'>4 r4
  | <cs as' es'>2~ <cs as' es'>4 r4 \ottava 0
  | <<
    { as,2. (fs8^-\< gs^- | as4^-  \!cs2.^-)}
    \\
    {s1 s2 es,2}
    \\
    {\stemDown fs2. fs4 | <fs as>2_~ as4\> gs\!}
  >>
  | s1 \bar "|."


  % |  \set tieWaitForNote = ##t
  %  \grace {cs,4~ fs~ cs'~}  <cs, fs cs'>1^\fermata
}

lower = \relative c {
  \clef bass
  \global

  | ds'2^\p (d
  | cs <cs, b'>)
  | <fs, cs'>1
  | <fs cs'>1~
  | <fs cs'>2 <ds' as'>
  | as'2 <cs, gs'>
  | <gs ds'>1
  | <gs ds'>1~
  | <gs ds'>2 cs2^~
  | <fs, cs'>1~
  | <fs cs'>1
  | \clef treble
  | <ds''' fs>1^\pp
  | <as es'>
  | <ds fs>2 <as es'>
  | <es es'> <as es'> \clef bass
  | ds,1
  | as
  | <<
    {css2^\< ds | css2 (cs)\!}
    \\
    {es,1 | as1}
  >>
  | <as, as'>1
  | <gs gs'>1
  | <fs fs'>2 <es es'>4^\markup {\whiteout \italic "cresc. molto"} <ds ds'>
  | <as' es' as>2 <gs cs b'>
  | \stemDown <fs cs' as'>^- <as fs' cs'>^-
  | <b fs' b>^- <ds as'>^-
  | <<
    {as'2 b | as b | s1 | s1}
    \\
    {cs,1~ | cs1~ | <fs,~ cs'^~> | <fs cs'> | <fs~ cs'^~> | <fs cs'>}
  >>
  \clef treble
  | <fs'' cs' fs>2~\sustainOn <fs cs' fs>4 r4\sustainOff
  | <as es' as>2~\sustainOn <as es' as>4 r4\sustainOff \clef bass
  | ds,2^\p (d
  | cs <cs, b'>)

  | <<
    {
      \change Staff = "upper" \set tieWaitForNote = ##t
      \shape #'((-5 . -7.5) (-4 . 0) (0 . 0) (0 . 0)) Slur
      \grace {cs'4_~ (fs_~ cs'~) s4}  <cs, fs cs'>1^\fermata
    }
    \\
    {
      \set tieWaitForNote = ##t
      \grace { fs,,4~^\pp\sustainOn cs'~ as'^~ s4*4}  <fs,, fs' cs' as'>1_\fermata
    }
  >>
  \bar "|."




  \label #'lastPage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% REMARKABLE %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \bookOutputSuffix "remarkable"
  \header {
    title = "Letzter Frühling"
    subtitle = "L'última primavera"
    composer = "E. Grieg (1843-1907)"
    arranger = "H. Schmidt (1854-1923)"
    poet = "Joan Maragall (1860-1911)"
    tagline = ##f
  }
  \score {
    <<
      \new Voice = "mel_f" { \autoBeamOff \melody_first }
      \new Lyrics \lyricsto mel_f \catala_first
      % \new Lyrics \lyricsto mel_f \alemany_first
      % \new Voice = "mel_s" { \autoBeamOff \melody_second }
      \new Lyrics \lyricsto mel_f \catala_second
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
    title = "Letzter Frühling"
    subtitle = "L'última primavera"
    composer = "E. Grieg (1843-1907)"
    arranger = "H. Schmidt (1854-1923)"
    poet = "Joan Maragall (1860-1911)"
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
      % \new Lyrics \lyricsto mel_f \alemany_first
      % \new Voice = "mel_s" { \autoBeamOff \melody_second }
      \new Lyrics \lyricsto mel_f \catala_second
      % \new Lyrics \lyricsto mel_s \alemany_second
      \new PianoStaff <<
        \new Staff = "upper" \upper
        \new Staff = "lower" \lower
      >>
    >>
    \layout {
      #(layout-set-staff-size 17.8)
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
