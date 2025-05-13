\version "2.25.14"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key c \major
  \time 2/2
  \tempo "Molt lent, ansiós"
  \set Score.tempoHideNote = ##t
  \tempo 4=72
  \set PianoStaff.connectArpeggios = ##t
}


melody_first = \relative c' {
  \clef treble
  \global
  | e2. e4
  | e2 e
  | g2. g4
  | e2 c
  | e2. e4
  | a2 fs
  | (ds \grace {e16 [ds]} cs4) ds
  | e2. r4
  | f!2. gs4
  | a4. (e8) e2
  | (b' \grace {c16 [b]} a4) b
  | \grace {(d4} c2) c
  | c2. a4
  | c2. a4
  | g2 a
  | f1
  | ds2. ds4
  | a'2. a4
  | c2. c4
  | \grace {(b4} a2) a
  | a2. a4
  | a2 fs
  | g2. e4
  | b1\fermata
  | e2. e4
  | a2 a
  | b2. fs4
  | gs2 e
  | g!2. g4
  | g2 g
  | g2. g4
  | c,1 \bar "|."
}

% melody_second = \relative c'' {
%   \clef treble
%   \global

%   a b c d
% }

catala_first = \lyricmode {
  Cal -- ma~im -- men -- sa reg -- na~en l'ai -- gua,
  res no mou la quie -- ta mar,
  Ple d'an -- gú -- nia mi -- ra~el nau -- ta
  l'am -- ple~es -- pill qui llis a -- par.

  Cap con -- hort l'or -- eig no por -- ta!
  És de mort l'a -- frós si -- lenç!
  Ni~un -- a~o -- na -- da~es veu so -- mor -- ta
  dins d'a -- quell de -- sert im -- mens.
}

alemany_first = \lyricmode {
  Tie -- fe Stil -- le herrscht im Was -- ser,
  Oh -- ne Re -- gung ruht das Meer,
  Und be -- küm -- mert sieht der Schif -- fer
  Glat -- te Flä -- che rings um -- her.

  Kei -- ne Luft von kei -- ner Sei -- te!
  To -- des -- stil -- le fürch -- ter -- lich!
  In der un -- ge -- heu -- ern Wei -- te
  Re -- get kei -- ne Wel -- le sich.
}

% catala_second = \lyricmode {
%   Aaa Bee Cee Dee
% }

% alemany_second = \lyricmode {
%   Aaa Bee Cee Dee
% }

upper = \relative c' {
  \clef treble
  \global

  | \arpeggio <c e>1\pp
  | \arpeggio <c e>1
  | \arpeggio <d f>1
  | \arpeggio <c e>1
  | \arpeggio <c e>1
  | \arpeggio <fs a>1
  | \arpeggio <ds fs>1
  | \arpeggio <e \hide f>1
  | \arpeggio <f!>1
  | \arpeggio <c e>1
  | \arpeggio <d \hide f>1
  | \arpeggio <c \hide d>1
  | \arpeggio <c f>1
  | \arpeggio <c f>1
  | \arpeggio <df e>1
  | \arpeggio <f>1
  | \arpeggio <ds>1
  | \arpeggio <e>1
  | \arpeggio <f>1
  | \arpeggio <fs>1
  | \arpeggio <fs>1
  | \arpeggio <ds fs>1
  | \arpeggio <cs e>1
  | \arpeggio <ds>1 ^\fermata
  | \arpeggio <e>1
  | \arpeggio <fs a>1
  | \arpeggio <ds fs>1
  | \arpeggio <e>1
  | \arpeggio <e>1
  | \arpeggio <c e>1
  | \arpeggio <d>1
  | s1
}

lower = \relative c {
  \clef bass
  \global

  | \arpeggio <c, c' g'>1
  | \arpeggio <c c' g'>1
  | \arpeggio <b b' g'>1
  | \arpeggio <c c' g'>1
  | \arpeggio <c c' g'>1
  | \arpeggio <a a' a' c>1
  | \arpeggio <b b' a' b>1
  | \arpeggio <e b' e gs b>1
  | \arpeggio <d! d'! gs b>1
  | \arpeggio <c c' a'>1
  | \arpeggio <gs gs' f' b>1
  | \arpeggio <a a' e' a>1
  | \arpeggio <f f' a'>1
  | \arpeggio <f f' a'>1
  | \arpeggio <f f' g' bf>1
  | \arpeggio <f f' f' a c>1
  | \arpeggio <f' f' a c>1
  | \arpeggio <e e' a c>1
  | \arpeggio <ef ef' a c>1
  | \arpeggio <d d' a' c>1
  | \arpeggio <cs cs' a' cs>1
  | \arpeggio <b b' a'>1
  | \arpeggio <as as' g'>1
  | \arpeggio <b b' fs' b>1
  | \arpeggio <e e' g b>1
  | \arpeggio <c c' a' c>1
  | \arpeggio <b b' a' b>1
  | \arpeggio <e e' gs b>1
  | \arpeggio <e e' g! b>1
  | \arpeggio <c c' g'>1
  | <<
    {c''2 (b)}
    \\
    {\arpeggio <g,, g' g'>1}
  >>

  | <<
    {\arpeggio <g'' c>1^\fermata}
   \\
   {\arpeggio <c,, g' c e>1_\fermata}
  >>

  \label #'lastPage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% PDF %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  % \bookOutputSuffix ""
  \header {
    title = "Meeres Stille, Op. 3, n. 2"
    subtitle = "Mar bonança"
    composer = "F. Schubert (1797-1828)"
    arranger = "J. W. Goethe (1749-1832)"
    poet = "Trad. Joaquim Pena (1873-1944)"
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
      \new Voice = "mel_f" { \autoBeamOff \melody_first }
      \new Lyrics \lyricsto mel_f \catala_first
      \new Lyrics \with {
        \override LyricText.font-shape = #'italic
      } \lyricsto mel_f \alemany_first
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
