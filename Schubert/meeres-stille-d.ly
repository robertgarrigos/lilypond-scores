\version "2.25.14"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key d \major
  \time 2/2
  \tempo "Molt lent, ansiós"
  \set Score.tempoHideNote = ##t
  \tempo 4=72
  \set PianoStaff.connectArpeggios = ##t
}


melody_first = \relative c' {
  \clef treble
  \global
  | fs2. fs4
  | fs2 fs
  | a2. a4
  | fs2 d
  | fs2. fs4
  | b2 gs
  | (es \grace {fs16 [es]} ds4) es
  | fs2. r4
  | g!2. as4
  | b4. (fs8) fs2
  | (cs' \grace {d16 [cs]} b4) cs
  | \grace {(e4} d2) d
  | d2. b4
  | d2. b4
  | a2 b
  | g1
  | es2. es4
  | b'2. b4
  | d2. d4
  | \grace {(cs4} b2) b
  | b2. b4
  | b2 gs
  | a2. fs4
  | cs1\fermata
  | fs2. fs4
  | b2 b
  | cs2. gs4
  | as2 fs
  | a!2. a4
  | a2 a
  | a2. a4
  | d,1 \bar "|."
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

  | \arpeggio <d fs>1\pp
  | \arpeggio <d fs>1
  | \arpeggio <e g>1
  | \arpeggio <d fs>1
  | \arpeggio <d fs>1
  | \arpeggio <gs b>1
  | \arpeggio <es gs>1
  | \arpeggio <fs \hide g>1
  | \arpeggio <g!>1
  | \arpeggio <d fs>1
  | \arpeggio <e \hide g>1
  | \arpeggio <d \hide e>1
  | \arpeggio <d g>1
  | \arpeggio <d g>1
  | \arpeggio <ef fs>1
  | \arpeggio <g>1
  | \arpeggio <es>1
  | \arpeggio <fs>1
  | \arpeggio <g>1
  | \arpeggio <gs>1
  | \arpeggio <gs>1
  | \arpeggio <es gs>1
  | \arpeggio <ds fs>1
  | \arpeggio <es>1 ^\fermata
  | \arpeggio <fs>1
  | \arpeggio <gs b>1
  | \arpeggio <es gs>1
  | \arpeggio <fs>1
  | \arpeggio <fs>1
  | \arpeggio <d fs>1
  | \arpeggio <e>1
  | s1
}

lower = \relative c, {
  \clef bass
  \global

  | \arpeggio <d d' a'>1
  | \arpeggio <d d' a'>1
  | \arpeggio <cs cs' a'>1
  | \arpeggio <d d' a'>1
  | \arpeggio <d d' a'>1
  | \arpeggio <b b' b' d>1
  | \arpeggio <cs cs' b' cs>1
  | \arpeggio <fs cs' fs as cs>1
  | \arpeggio <e! e'! as cs>1
  | \arpeggio <d d' b'>1
  | \arpeggio <as as' g' cs>1
  | \arpeggio <b b' fs' b>1
  | \arpeggio <g g' b'>1
  | \arpeggio <g g' b'>1
  | \arpeggio <g g' a' c>1
  | \arpeggio <g g' g' b d>1
  | \arpeggio <g' g' b d>1
  | \arpeggio <fs fs' b d>1
  | \arpeggio <f f' b d>1
  | \arpeggio <e e' b' d>1
  | \arpeggio <ds ds' b' ds>1
  | \arpeggio <cs cs' b'>1
  | \arpeggio <bs bs' a'>1
  | \arpeggio <cs cs' gs' cs>1
  | \arpeggio <fs fs' a cs>1
  | \arpeggio <d d' b' d>1
  | \arpeggio <cs cs' b' cs>1
  | \arpeggio <fs fs' as cs>1
  | \arpeggio <fs fs' a! cs>1
  | \arpeggio <d d' a'>1
  | <<
    {d''2 (cs)}
    \\
    {\arpeggio <a,, a' a'>1}
  >>

  | <<
    {\arpeggio <a'' d>1^\fermata}
   \\
   {\arpeggio <d,, a' d fs>1_\fermata}
  >>

  \label #'lastPage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% REMARKABLE %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \bookOutputSuffix "remarkable"
  \header {
    title = "Meeres Stille"
    subtitle = "Mar bonança"
    composer = "F. Schubert (1797-1828), Op. 3, n. 2"
    arranger = "J. W. Goethe (1749-1832)"
    poet = "Joaquim Pena (1873-1944)"
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
    title = "Meeres Stille"
    subtitle = "Mar bonança"
    composer = "F. Schubert (1797-1828), Op. 3, n. 2"
    arranger = "J. W. Goethe (1749-1832)"
    poet = "Trad. catalana: Joaquim Pena (1873-1944)"
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
