\version "2.25.26"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key g \major
  \time 3/4
  \tempo "Vals lent"
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  % \set PianoStaff.connectArpeggios = ##t

}


melody_first = \relative c' {
  \clef treble
  \global

  | R2.
  | R2.
  | R2.
  | R2.
  | R2.
  | R2.
  | R2.
  | r4 r4 d4
  \repeat volta 2 {
    | d e4. g8
    | b2 d,4
    | d e4. g8
    | b2 b4
    | e d b
    | a g4. b8
    | e,2.~
    | e4 r4 e
    | e a4. c8
    | e2 e,4
    | e a4. c8
    | e2 e4
    | fs e d
    | c b as
    | b2.~
    | b4 r4 d,4
    | d e4. g8
    | b2 d,4
    | d e4. g8
    | b2 b4
    | e d b
    | a g4. b8
    | e,2.~
    | e4 r4 e
    | c' b c
    | b2 a4
    | c b c
    | b2 a4
    | c b c
    | b b a
    | g2.~
    | g2 g4
    | g2.
    | e2 g4
    | a2 a4
    | b2 a8 b
    | g2.~
    | g2 g4
    \set melismaBusyProperties = #'()
    \tieDashed
    | a2.~
    | a2 a4
    \tieSolid
    | a2.~
    | a2 a4
    \tieDashed
    | a2.~
    | a2 a4
    \tieSolid
    | d2.~
    | d2 r4
    \unset melismaBusyProperties
    | d2.
    | d2 e4
    | d2 c4
    | c2.
    | b4 d b
    | d as d
    | a!2 g4
    | g2.
    | e4 g e
    | g g e
    | g2 e4
    | e2.
    | fs4 fs g
    | a b c
    | c4 c4 b4
    | b2.
    | d2.
    | d2 e4
    | d2 c4
    | c2.
    | b4 d b
    | d as d
    | a!2 g4
    | g2.
    | d4 cs d
    | g g fs
    | e( a) c
    | e2 e,4
    | c'2 c4
    | b2 d4

    \alternative {
      \volta 1 {
        | g,2.~
        | g2 d4
      }
      \volta 2 {
        g'2.~ | g2 r4 \bar "|."
      }
    }
  }
}

% melody_second = \relative c'' {
%   \clef treble
%   \global

%   a b c d
% }

catala_first = \lyricmode {
  <<
    {
      El meu pen -- sa -- ment
      sols per tu s'en -- cén,
      Vi -- e -- na el meu pa -- ra -- dís, __
      a -- quí~em sen -- to bé,
      a -- quí~és on puc ser
      de nit i de di -- a fe -- liç, __
      i no hi~ha nin -- gú
      que~et co -- ne -- gui~a tu
      i no vul -- gui que -- dar -- se~a -- quí. __
      Si~un di -- a pas -- sés
      que jo me n'a -- nés
      l'a -- nhel no tin -- dri -- a mai fi. __
      Lla -- vors sen -- ti -- ri -- a u -- na can -- çó __
      di -- ent __ _ ai -- xò, __ _ di -- ent __ _ ai -- xò: __ _


    }

    \new Lyrics {
      \set associatedVoice = "mel_f"

      _ vin -- gui~el mo -- ment,
      on trist o con -- tent,
      el món ha -- gi d'a -- ban -- do -- nar,
      a -- déu als pla -- ers,
      a -- déu als vo -- lers,
      un di -- a tot s'ha d'a -- ca -- bar.
      Qui~em vin -- gui~a bus -- car
      vo -- lant em du -- rà
      al cel _ amb nos -- tre se -- nyor,
      d'al -- là dalt es -- tant
      a -- ni -- ré mi -- rant
      la me -- va ciu -- tat amb a -- mor.
      Lla -- vors sen -- ti -- ré _ u -- na can -- çó __
      que di -- rà ai -- xò, __ _ que di -- rà ai -- xò: __

      % Viena ets la ciutat
      % amb la que jo sempre he somiat,
      % allà on s'alcen els bells palaus,
      % allà on les noies ballen el vals.
      % Viena ets la ciutat
      % amb la que jo sempre he somiat,
      % on vull estar-me per sempre més,
      % Viena tu només.
    }

  >>
  Vi -- e -- na~ets la ciu -- tat
  amb la que jo sem -- pre~he so -- mi -- at,
  al -- là on s'al -- cen els bells pa -- laus,
  al -- là on les no -- ies bal -- len el vals.
  Vi -- e -- na~ets la ciu -- tat
  amb la que jo sem -- pre~he so -- mi -- at,
  on vull es -- tar -- me per sem -- pre més,
  Vi -- e -- na tu no -- més. Quan


  \alternative { { més. Quan } { més. } }

}

alemany_first = \lyricmode {
  Mein Herz und mein Sinn
  schwärmt stets nur für Wien,
  für Wien, wie es weint, wie es lacht, __
  da kenn ich mich aus,
  da bin ich halt z'haus
  bei Tag und noch mehr bei der Nacht, __
  und kei -- ner bleibt kalt,
  ob jung o -- der alt,
  der Wien wie es wir -- klich ist, kennt. __
  Müßt ein -- mal ich fort
  von dem schö -- nen Ort,
  da nähm' mei -- ne Sehn -- sucht kein End. __
  Dann hört ich aus wei -- ter Fer -- ne ein Lied, __
  das klingt __ und singt, __ das lockt __ und zieht: __

  Wien, Wien, nur du al -- lein
  sollst stets die Stadt mei -- ner Träu -- me sein,
  dort wo die al -- _ ten Häu -- ser stehn
  dort wo die lieb -- li -- chen Mäd -- _ chen gehn,
  Wien, Wien, nur du al -- lein
  sollst stets die Stadt mei -- ner Träu -- me sein,
  dort wo ich glück -- lich und se -- lig bin,
  ist Wien, ist Wien, ist Wien!

  Ob ich will oder net
  nur hoff ich, recht spät,
  muß ich einmal fort von der Welt.
  Geschieden muß sein,
  von der Liebe und Wein
  weil alles, wie' s kommt, auch vergeht
  Ah, das wird ganz schön,
  ich brauch ja nicht z'gehn,
  ich flieg doch in'Himmel hinauf,
  dort setz ich mich hin,
  schau runter auf Wien,
  der Steffel, der grüßt ja hinauf.
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

  | <g' b d>2.
  | <g b d>2 <g b e>4
  | <a d>2 <a c>4
  | <a c>2.
  | <d, fs b>4( \arpeggio \tweak to-barline ##f \< d' b)
  | <fs b d>2. \!
  | <d fs as>4\arpeggio \tweak to-barline ##f \> d' as
  | \!<fs d'>2\fermata d,4_\p
  \repeat volta 2 {
    | <b d>4( e4. g8
    | <d g b>2) d4
    | <b d>4( e4. g8
    | <d g b>2)\arpeggio b'4
    | <<
      \new Voice {
        \voiceOne e4( \arpeggio d b) | a( g4. b8)
      }
      \\
      \new Voice{
        \voiceTwo <g b>2 \arpeggio g4 | d2.
      }
    >>
    | <c e>4 gs^( b
    | <c e>) r4 e
    | <c e>( a'4. c8
    | e2) e,4
    | <c e>( a'4. c8
    | e2) e4(
    | <a, c fs>\arpeggio e' <fs, d'>
    | <e c'> <fs b> as
    | <d, g b>2.)~
    | <d g b>4 r4 d
    | <b d>4( e4. g8
    | <d g b>2) d4
    | <b d>4( e4. g8
    | <d g b>2)\arpeggio b'4
    | <<
      \new Voice {
        \voiceOne e4( \arpeggio d b) | a( g4. b8)
      }
      \\
      \new Voice{
        \voiceTwo <g b>2 \arpeggio g4 | d2.
      }
    >>
    | <c e>4 gs^( b
    | <c e>) r4 e
    | <e fs c'>( <d fs b>) <e fs c'>
    | <d fs b>2 <d a'>4
    | <e fs c'>( <d fs b>) <e fs c'>
    | <d fs b>2 <d a'>4
    | <e fs c'> <d fs b> <e fs c'>
    | <d fs b> <d fs b> <fs a>
    | <<
      \new Voice {
        \voiceOne g2.~ | g2 g4
      }
      \\
      \new Voice{
        \voiceTwo r4 b,( c | d2) r4
      }
    >>
    | <c' e g>2.
    | e2 g4
    | <c, e a>2 a'4
    | <c, e b'>2 a'8 b
    | <c, e g>2.~
    | <c e g>2 g'4
    | <c, ef a>2.~
    | < c ef a>2 a'4
    | <c, ef a>2.~
    | <c ef a>2 a'4
    | <c, d a'>2.~
    | <c d a'>2 d8 a'
    | <<
      \new Voice {
        \voiceOne d2.~ | d2 r4
      }
      \\
      \new Voice{
        \voiceTwo <fs, a>\> <fs a> <fs a> | <fs as> <fs as>\! <fs as>
      }
    >>
    | <g b d>2.\p
    | <g b d>2 e'4
    | <e, a d>2 c'4
    | <e, a c>2.
    | <fs b>4 d' b
    | <fs d'> as d
    | <d, a'!>2 g4
    | g2.
    | <b, e>4 g' e
    | g2 e4
    | <c g'>2 e4
    | <c e>2.
    | <a fs'>4\< <a fs'> <b g'>
    | <c a'> <d b'>\! <e c'>
    | <e_\=1( c'^\=2(>2 <d\=1) b'\=2)>4
    | <d b'>2.\f
    | <g b d>2.
    | <g b d>2 e'4
    | <e, a d>2\tweak to-barline ##f \> c'4
    | <e, a c>2.\!
    | <fs b>4\p d' b
    | <fs d'> as d
    | <d, a'!>2 g4
    | g2.
    | d4( cs d)
    | g <b, g'>( fs')
    | e\< a c\!
    | e2 e,4\f
    | <ef g c>2 c'4
    | <d, fs b>2 d'4
    \alternative {
      \volta 1 {
        | <b d g>2.~~
        | <b d g>2_\fermata d,,4
      }
      \volta 2 {
        | <b'' d g>2.~~
        | <b d g>2_\fermata r4
      }
    }
    % | <b d g>2.~~
    % | <b d g>2_\fermata d,,4
  }
}

lower = \relative c {
  \clef bass

  \global
  | \clef treble d''2.
  | d2 e4
  | <a, e'>2 <a e'>4
  | <a e'>2.
  | \clef bass d,,,4( d' fs
  | b2.)
  | d,,4 d' fs
  | as2 \fermata r4
  \repeat volta 2 {
    | g,4 <d' g b> <d g b>
    | d,4 <d' g b> <d g b>
    | g,4 <d' g b> <d g b>
    | d,4 <d' g b> <d g b>
    | g,4 <d' g b> <d g b>
    | b <d g b> <d g b>
    | a <c e> <c e>
    | a <c e a> <c e a>
    | a <e' a c> <e a c>
    | a, <e' a c> <e a c>
    | a, <e' a c> <e a c>
    | a, <e' a c> <e a c>
    | d, <fs' c' e> <fs c' d>
    | d( d' cs)
    | g,( g' fs
    | e d b)
    | g4 <d' g b> <d g b>
    | d,4 <d' g b> <d g b>
    | g,4 <d' g b> <d g b>
    | d,4 <d' g b> <d g b>
    | g,4 <d' g b> <d g b>
    | b <d g b> <d g b>
    | a <c e> <c e>
    | a <c e a> <c e a>
    | d, <d' fs c'> <d fs c'>
    | d, <d' fs c'> <d fs c'>
    | d, <d' fs c'> <d fs c'>
    | d, <d' fs c'> <d fs c'>
    | d, <d' fs c'> <d fs c'>
    | d, <d' fs c'> <d fs c'>
    | <<
      \new Voice {
        \voiceOne r4 d( e | f2)
      }
      \\
      \new Voice{
        \voiceTwo g,2.~ | g2
      }
    >> r4
    | c4 <g' c e> <g c e>
    | c,4 <g' c e> <g c e>
    | c,4 <a' c e> <a c e>
    | c,4 <a' c e> <a c e>
    | c,4 <g' c e> <g c e>
    | <g c e> <g c e> <g c e>
    | c,4 <g' c ef> <g c ef>
    | <g c ef> <g c ef> <g c ef>
    | <c ef> <c ef> <c ef>
    | <c ef> <c ef> <c ef>
    | <d fs> <d fs> <d fs>
    | <d fs> <d fs> <d fs>
    | d, <c' d fs a> <c d fs a>
    | d, <c' d fs as> <c d fs as>
    | g, <d' g b> <d g b>
    | b <d g b> <d g b>
    | a <e' a c> <e a c>
    | a, <e' a c> <e a c>
    | d <fs c' d> <fs c' d>
    | d <fs as> <fs as>
    | g, <d' g b> <d g b>
    | d, <d' g b> <d g b>
    | g, <d' g b> <d g b>
    | b <d g b> <d g b>
    | a <e' a c> <e a c>
    | a, <e' a c> <e a c>
    | d <c' d fs> <c d fs>
    | d, <c' d fs> <c d fs>
    | g,^\< <e' g c> <d g b>\!
    | g, <d' g b> <d g b>
    | g, <d' g b> <d g b>
    | b <d g b> <d g b>
    | a <e' a c> <e a c>
    | a, <e' a c> <e a c>
    | d <fs c' d> <fs c' d>
    | d <fs as> <fs as>
    | g, <d' g b> <d g b>
    | d, <d' g b> <d g b>
    | b <d g> <d g>
    | b <ds a'> <ds a'>
    | c <e a> <e a>
    | a, <e' a c> r4
    | a, <ef' g c> <ef g c>
    | d <fs c' d> <fs c' d>
    \alternative {
      \volta 1 {
        | <g, g'> d' b
        | g2\fermata r4
      }
      \volta 2 {
        | <g g'> d' b
        | g2\fermata r4
      }
    }


  }

  \label #'lastPage
}

titol = "Viena, la ciutat dels meus somnis"
subtitol = "Wien, du Stadt meiner Träume"
compositor = "Rudolf Sieczynski (1879 - 1952)"
lletrista = ""
traductor = "Trad. Viviana Salisi"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% REMARKABLE %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% \book {
%   \bookOutputSuffix "remarkable"
%   \header {
%     title = \titol
%     subtitle = \subtitol
%     composer = \compositor
%     arranger = \lletrista
%     poet = \traductor
%     tagline = ##f
%   }
%   \score {
%     <<
%       \new Voice = "mel_f" { \autoBeamOff \melody_first }
%       \new Lyrics \lyricsto mel_f \catala_first
%       \new Lyrics \lyricsto mel_f \alemany_first
%       % \new Voice = "mel_s" { \autoBeamOff \melody_second }
%       % \new Lyrics \lyricsto mel_s \catala_second
%       % \new Lyrics \lyricsto mel_s \alemany_second
%       \new PianoStaff <<
%         \new Staff = "upper" \upper
%         \new Staff = "lower" \lower
%       >>
%     >>
%     \layout {
%       #(layout-set-staff-size 16)
%       \context {
%         \Staff
%         % \RemoveEmptyStaves
%         % \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #3
%       }
%     }
%   }

%   \paper {
%     #(set-paper-size '(cons (* 155 mm) (* 210 mm)))
%     indent = 0\mm
%     top-margin = #10
%     bottom-margin = #0
%     left-margin = #0
%     right-margin = #0

%     max-systems-per-page = 3
%     score-system-spacing =
%     #'((basic-distance . 12)
%        (minimum-distance . 6)
%        (padding . 1)
%        (stretchability . 10))
%     % markup-system-spacing =
%     % #'((minimum-distance . 20))
%     % system-system-spacing =
%     % #'((minimum-distance . 15))
%     % annotate-spacing = ##t

%   }
% }

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
      % \new Lyrics \with {
      %   \override LyricText.font-shape = #'italic
      % } \lyricsto mel_f \alemany_first
      % \new Voice = "mel_s" { \autoBeamOff \melody_second }
      % \new Lyrics \lyricsto mel_s \catala_second
      % \new Lyrics \lyricsto mel_s \alemany_second
      \new PianoStaff <<
        \new Staff = "upper" \with {
          \consists "Span_arpeggio_engraver"
        } \upper
        \new Staff = "lower" \with {
          \consists "Span_arpeggio_engraver"
        } \lower
      >>
    >>
    \layout {
      #(layout-set-staff-size 18)
      \context {
        \Staff
        \RemoveEmptyStaves
        % https://lilypond.org/doc/v2.23/Documentation/notation/flexible-vertical-spacing-within-systems
        \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #3
      }
    }
    \midi { }
  }
  \paper {
    % https://lilypond.org/doc/v2.23/Documentation/notation/flexible-vertical-spacing-paper-variables
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

  \markup \italic {
    % \vspace #0
    \justify-line {
      \hspace #1

      % \abs- #0
      \column {
        \string-lines
        "1

        Mein Herz und mein Sinn

    schwärmt stets nur für Wien,

    für Wien, wie es weint, wie es lacht,

    da kenn ich mich aus,

    da bin ich halt z'haus

    bei Tag und noch mehr bei der Nacht,

    und keiner bleibt kalt,

    ob jung oder alt,

    der Wien wie es wirklich ist, kennt.

    Müßt einmal ich fort

    von dem schönen Ort,

    da nähm' meine Sehnsucht kein End."

      }

      \column {
        \string-lines
        "2

        Ob ich will oder net

    nur hoff ich, recht spät,

    muß ich einmal fort von der Welt.

    Geschieden muß sein,

    von der Liebe und Wein

    weil alles, wie' s kommt, auch vergeht

    Ah, das wird ganz schön,

    ich brauch ja nicht z'gehn,

    ich flieg doch in'Himmel hinauf,

    dort setz ich mich hin,

    schau runter auf Wien,

    der Steffel, der grüßt ja hinauf."
      }
    }
  }

  \markup {
    \vspace #1
  \fill-line \italic {
    \hspace #1

    \column {
      \string-lines
      "Tornada

      Dann hört ich aus weiter Ferne ein Lied,

    das klingt und singt, das lockt und zieht:

    Wien, Wien, nur du allein

    sollst stets die Stadt meiner Träume sein,

    dort wo die al_ ten Häuser stehn

    dort wo die lieblichen Mäd_ chen gehn,

    Wien, Wien, nur du allein

    sollst stets die Stadt meiner Träume sein,

    dort wo ich glücklich und selig bin,

    ist Wien, ist Wien, ist Wien!"
    }
    \hspace #1
  }
}
}
