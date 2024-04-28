\version "2.24.3"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key f \major
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

    a4 f 8 a d4 c8 b
    | c4 g8 a bf!4. c8
    | a2. f8 g
    | a4 c2 r4
    | bf4 g8 bf ef4 d8 cs
    | d4 a8 bf c4. d8
    | bf2. a8 g
    | a4 f2 r4
    | R1
    | a4 b8 cs d4 cs8 b
    | d (cs) cs b a4. cs8
    | d2. e8 cs
    | b4 e,2 r4
    | a4^\p b8 cs d4 cs8 b
    | d (cs) e cs a4. a8
    | e'2.^\< cs8 bs
    | cs4 a2.\!
    | c!4 ^\markup {\italic "cresc. e più tenuro poco a poco"} a8 g f4 g8 a
    | bf^\< [d] d\! cs a4. f8
    | d2. f8^\markup {\italic "cresc. molto"} a
    | cs4 e2.
    | f4 f8 e c4 d8 e
    | e ([d]) f d a4 r8 a^\pp
    | c1~
    | c2. a8^\< g\!
    | a4^-^\> f2\! r4
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
    { a2. (f8^-\< g^- | a4^-  \!c2.^-)}
    \\
    {s1 s2 e,2}
    \\
    {\stemDown f2. f4 | <f a>2_~ a4\> g\!}
  >>
  | <<
    {<a, a'>2 (<af af'>2)}
    \\
    {<c f>1}
  >>
  | <<
    {<g e' g>2 (<f d' f>4 <g e' g>)}
    \\
    {c1}
  >>
  | <<
    {a'2~ a4 f8\< (g | a4 \! c2\> b4\!)}
    \\
    {\stemUp s1 | s2 ef,2}
    \\
    {\stemDown <a, c f>2 <d f> | <c e>_~ c4 b}
  >>
  | <<
    {<bf! g' bf!>1}
    \\
    {d2 (cs)}
  >>
  | <<
    {
      <a fs' a>2 (<g e' g>4 <a fs' a> | <bf d g bf>2 <c e>)
      | f2. a8^\pp (g | a4 f2.)
    }
    \\
    {d1 | s2 bf2~ | <bf d>2 <a c> | <bf d> <a c>}
  >>
  | <a'' d>1
  | <<
    {d2 (cs)}
    \\
    {a1}
  >>
  | <<
    {d2. (cs4)}
    \\
    {a2\< a2\!}
  >>
  | <g b>2\> (<a cs>)\!
  | <f, a d>1
  | <<
    {d'2 (cs)}
    \\
    {<e, a>1}
  >>
  | <<
    {
      <e e'>1 | cs'2 (c~) | <c, c'> <bf d bf'~> | <bf d bf'> <a cs a'~>
      | <a d a'> <b d gs b>
    }
    \\
    {a'2 gs | <e a>1 | f | e | s1}
  >>
  | <cs e a cs>2 <c e bf'! c>
  | <f a c f>^-\ff <e f c' e>^-
  | <<
    {<d f bf d>_- <d f~ a~>_- | <f a>2. f8^- (g^- | a4^- c2.^-)}
    \\
    { s1 | s2.  f,4 | f2\> e\!}
    \\
    { \stemDown s1 | c2\pp d | \once \override NoteColumn.force-hshift = 0.5 c1}
  >>
  | <<
    {f2. (a8 g | a4 f2 g8 a | g a f g a c^. d^. f^. | g^. a^. \ottava 1 c^. d^. \tuplet 3/2 {f4^- g^- a^- })}
    \\
    {s1 | s1 | s4 f,,4~ f2~ | \once \override NoteColumn.force-hshift = -0.5 f1}
    \\
    {\stemDown <bf, d>2 <a c> | <bf d>2 <a c> | <bf d>1_~| <bf d>}
  >>
  | <a'' f' c'>2~ <a f' c'>4 r4
  | <c a' e'>2~ <c a' e'>4 r4 \ottava 0
  | <<
    { a,2. (f8^-\< g^- | a4^-  \!c2.^-)}
    \\
    {s1 s2 e,2}
    \\
    {\stemDown f2. f4 | <f a>2_~ a4\> g\!}
  >>
  | s1 \bar "|."


  % |  \set tieWaitForNote = ##t
  %  \grace {cs,4~ fs~ cs'~}  <cs, fs cs'>1^\fermata
}

lower = \relative c' {
  \clef bass
  \global

  | d2^\p (df
  | c <c, bf'>)
  | <f, c'>1
  | <f c'>1~
  | <f c'>2 <d' a'>
  | a'2 <c, g'>
  | <g d'>1
  | <g d'>1~
  | <g d'>2 c2^~
  | <f, c'>1~
  | <f c'>1
  | \clef treble
  | <d''' f>1^\pp
  | <a e'>
  | <d f>2 <a e'>
  | <e e'> <a e'> \clef bass
  | d,1
  | a
  | <<
    {cs2^\< d | cs2 (c)\!}
    \\
    {e,1 | a1}
  >>
  | <a, a'>1
  | <g g'>1
  | <f f'>2 <e e'>4^\markup {\whiteout \italic "cresc. molto"} <d d'>
  | <a' e' a>2 <g c bf'>
  | \stemDown <f c' a'>^- <a f' c'>^-
  | <bf f' bf>^- <d a'>^-
  | <<
    {a'2 bf | a bf | s1 | s1}
    \\
    {c,1~ | c1~ | <f,~ c'^~> | <f c'> | <f~ c'^~> | <f c'>}
  >>
  \clef treble
  | <f'' c' f>2~\sustainOn <f c' f>4 r4\sustainOff
  | <a e' a>2~\sustainOn <a e' a>4 r4\sustainOff \clef bass
  | d,2^\p (df
  | c <c, bf'>)

  | <<
    {
      \change Staff = "upper" \set tieWaitForNote = ##t
      \shape #'((-5 . -7.5) (-4 . 0) (0 . 0) (0 . 0)) Slur
      \grace {c'4_~ (f_~ c'~) s4}  <c, f c'>1^\fermata
    }
    \\
    {
      \set tieWaitForNote = ##t
      \grace { f,,4~^\pp\sustainOn c'~ a'^~ s4*4}  <f,, f' c' a'>1_\fermata
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
