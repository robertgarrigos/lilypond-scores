\version "2.25.14"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key ef \major
  \time 2/2
  \tempo "Molt lent, ansiós"
  \set Score.tempoHideNote = ##t
  \tempo 4=72
  \set PianoStaff.connectArpeggios = ##t
}


melody_first = \relative c'' {
  \clef treble
  \global
  | g2. g4
  | g2 g
  | bf2. bf4
  | g2 ef
  | g2. g4
  | c2 a
  | (fs \grace {g16 [fs]} e4) fs
  | g2. r4
  | af!2. b4
  | c4. (g8) g2
  | (d' \grace {ef16 [d]} c4) d
  | \grace {(f4} ef2) ef
  | ef2. c4
  | ef2. c4
  | bf2 c
  | af1
  | fs2. fs4
  | c'2. c4
  | ef2. ef4
  | \grace {(d4} c2) c
  | c2. c4
  | c2 a
  | bf2. g4
  | d1\fermata
  | g2. g4
  | c2 c
  | d2. a4
  | b2 g
  | bf!2. bf4
  | bf2 bf
  | bf2. bf4
  | ef,1 \bar "|."
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

  | \arpeggio <ef g>1\pp
  | \arpeggio <ef g>1
  | \arpeggio <f af>1
  | \arpeggio <ef g>1
  | \arpeggio <ef g>1
  | \arpeggio <a c>1
  | \arpeggio <fs a>1
  | \arpeggio <g \hide af>1
  | \arpeggio <af!>1
  | \arpeggio <ef g>1
  | \arpeggio <f \hide af>1
  | \arpeggio <ef \hide f>1
  | \arpeggio <ef af>1
  | \arpeggio <ef af>1
  | \arpeggio <ff g>1
  | \arpeggio <af>1
  | \arpeggio <fs>1
  | \arpeggio <g>1
  | \arpeggio <af>1
  | \arpeggio <a>1
  | \arpeggio <a>1
  | \arpeggio <fs a>1
  | \arpeggio <e g>1
  | \arpeggio <fs>1 ^\fermata
  | \arpeggio <g>1
  | \arpeggio <a c>1
  | \arpeggio <fs a>1
  | \arpeggio <g>1
  | \arpeggio <g>1
  | \arpeggio <ef g>1
  | \arpeggio <f>1
  | s1
}

lower = \relative c, {
  \clef bass
  \global

  | \arpeggio <ef ef' bf'>1
  | \arpeggio <ef ef' bf'>1
  | \arpeggio <d d' bf'>1
  | \arpeggio <ef ef' bf'>1
  | \arpeggio <ef ef' bf'>1
  | \arpeggio <c c' c' ef>1
  | \arpeggio <d d' c' d>1
  | \arpeggio <g d' g b d>1
  | \arpeggio <f! f'! b d>1
  | \arpeggio <ef ef' c'>1
  | \arpeggio <b b' af' d>1
  | \arpeggio <c c' g' c>1
  | \arpeggio <af af' c'>1
  | \arpeggio <af af' c'>1
  | \arpeggio <af af' bf' df>1
  | \arpeggio <af af' af' c ef>1
  | \arpeggio <af' af' c ef>1
  | \arpeggio <g g' c ef>1
  | \arpeggio <gf gf' c ef>1
  | \arpeggio <f f' c' ef>1
  | \arpeggio <e e' c' e>1
  | \arpeggio <d d' c'>1
  | \arpeggio <cs cs' bf'>1
  | \arpeggio <d d' a' d>1
  | \arpeggio <g g' bf d>1
  | \arpeggio <ef ef' c' ef>1
  | \arpeggio <d d' c' d>1
  | \arpeggio <g g' b d>1
  | \arpeggio <g g' bf! d>1
  | \arpeggio <ef ef' bf'>1
  | <<
    {ef''2 (d)}
    \\
    {\arpeggio <bf,, bf' bf'>1}
  >>

  | <<
    {\arpeggio <bf'' ef>1^\fermata}
   \\
   {\arpeggio <ef,, bf' ef g>1_\fermata}
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
