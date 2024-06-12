\version "2.25.16"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key e \minor
  \time 2/2
  \tempo "Bastant ràpid"
  \set Score.tempoHideNote = ##t
  \tempo 4=120

}


melody_first = \relative c'' {
  \clef treble
  \global

  | R1
  | r2 r4 g8(^\p [a])
  | b( [c]) b( [as]) b4 g8( [a])
  | b( [c]) b( [as]) b4 b
  | e4. e8 d4. g,8
  | c4^. b^. r4 g8( [a])
  | b( [c]) b( [as]) b4 g8( [a])
  | b( [c]) b( [as]) b2
  | g'4^\f g8 g fs4 b,
  | e^. d^. r4 d^\markup {\italic "Més tranquil"}
  | d4.c8 b4 a
  | g4. a8 b4 c
  | d4. c8 d4 e
  | d2 c4 b
  | b4. a8 gs4 fs
  | e4. fs8 gs 4 a
  | b4. a8 b4 c
  | b2 a4 c^\markup {\italic "Més lent"}
  | c2. a4
  | fs4. fs8 \tuplet 3/2 { e4( ds) e }
  | ds1
  | r2 c2
  | b2. ds4
  | fs2 a2
  | a g
  | r2 f'^\f
  | f2. d4
  | b b a a
  | gs1
  | r2 f
  | e2.^\markup {\italic ritard.} gs4
  | b2 d
  | d c4 r4
  | R1
  | R1
  | R1
  | R1
  | R1
  | R1
  | r4 r4 \bar "||" \time 3/4 s16

}

% melody_second = \relative c'' {
%   \clef treble
%   \global

%   a b c d
% }

catala_first = \lyricmode {
  «Jo duc dins meu do -- lor tan gran,
  que~a -- par que~el cor se'm tren -- ca,
  i~ar -- reu on sóc, ar -- reu on vaig,
  ço lluny m'em -- peny -- i~em llen -- ça.

  En -- vers l'a -- ma -- da Gui -- da~em duu,
  com vi gua -- rir~em po -- dri -- a;
  mes quan la tinc da -- vant dels ulls,
  fu -- gir lla -- vors vol -- dri -- a.

  Mun -- ta -- nya~a -- munt me'n vaig lla -- vors,
  lla hom és sol, tot ca -- lla;
  i quan em tro -- bo dalt tot sol,
  es -- cla -- ta ma plo -- ra -- lla!»
}

alemany_first = \lyricmode {
  «In mei -- ner Brust, da sitzt ein Weh,
  das will die Brust zers -- pren -- gen;
  und wo ich steh' und wo ich geh',
  will's mich von hin -- nen drän -- gen.

  Es treibt mich nach der Lieb -- sten Näh',
  Aas könnt die Gre -- te hei -- len;
  doch wenn ich der ins Au -- ge seh',
  muß ich von hin -- nen ei -- len.

  Ich steig' hin -- auf des Ber -- ges Höh',
  dort ist man doch al -- lei -- ne;
  und wenn ich still dort o -- ben steh',
  dann steh' ich still und wei -- ne.»
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
 | <e~ g~ b~>1\f
 | <e g b>2. r4
 | <g_. b>_\fp <g_. b> <g_. b> r4
 | <fs_. b>_\fp <fs_. b> <fs_. b> r4
 | <g e'>2_> <g d'>2_>
 | <d fs c'>4_. <d g b>_. r2
 | <g_. b>4_\fp <g_. b> <g_. b> r4
 | <fs_. b>_\fp <fs_. b> <fs_. b> r4
 | <as g'>2^> <b fs'>^>
 | <as e'>4^. <fs b d>_. r4 <f g d'>
 | <f g d'>4.(_\p <e g c>8 <d g b>4 <c g' a>)
 | <b g'>4.( <c g'a>8 <d g b>4 <e g c>)
 | <f g d'>4. ( <e g c>8 <f g d'>4 <g e'>)
 | <e~ g_~ d'^(>2 <e g c)>4 <d e b'>
 | <d e gs b>4.( <c e a>8 <b e gs>4 <a e' fs>)
 | <gs e'>4.( <a e' fs>8 <b e gs>4 <c e a>)
 | <d e gs b>4.( <c e a>8 <d e gs b>4 <e gs c>)
 | <d\=1( e gs b\=2^(>2 <c\=1) e a\=2)>4 r4
 | <ds~ fs~ c'~>1^>
 | <ds fs c'>2 <b e>
 | <a c ds>1
 | s1
 | s1
 | s2 <b fs' a>
 | <b fs' a> <b e g>
 | <b~ fs'~ gs~>1\f\>
 | <b~ fs'~ gs~>1
 | <b fs' gs>2\! | <c! f a>
 | <d f gs>1
 | <c f>1
 | <b~ d~ e~>1^\markup {\italic ritard.}
 | <b d e>2. c'8\p d
 | <c e>(\fp^\markup {\italic "a tempo"} f <c e> ds <c e>4) c8 d
 | <b e>(\fp f' <b, e> ds <b e>4) e
 | <c a'>4.\sf a'8 <b, g'>4 b
 | <gs f'>4.\sf f'8 <a, e'>4 a
 | <fs! c'>4.\sf c'8 <g b>4 <c, e>
 | <<
   { <e g>2 <ds fs> }
   \\
   { b2. g8( a) }
 >>
 | <<
   { e'1~ | e4 r4 \bar "||" \time 3/4 s16}
   \\
   { <g, b>8( c\> b as b g\! \change Staff = lower \stemUp e b | e,4) r4}
 >>

}

lower = \relative c {
  \clef bass
  \global

  | <e~ g~ b~>1
  | <e g b>2. r4
  | e'4^. e4^. e4^. r4
  | d4^. d4^. d4^. r4
  | c2^> b^>
  | a4^. g^. r2
  | e'4^. e4^. e4^. r4
  | d4^. d4^. d4^. r4
  | cs2^> d^>
  | fs4^. b,^. r2
  | <g,~ g'~>1
  | <g g'>1
  | <g g'>1
  | <c g'>2. r4
  | <e,~ e'~>1
  | <e e'>1
  | <e e'>1
  | <a a'>2. r4
  | <a~ a'~>1^>
  | <a a'>2 <g g'>
  | <fs fs'>1
  | <<
    { <fs' a c> }
    \\
    { <e, e'> }
  >>
  | <<
    { <fs'~ a~ b~>1 | <fs a b>2 s2 }
    \\
    { <ds,~ ds'~>1 | <ds ds'>1 }
  >>
  | <ds ds'>2 <e e'>
  | <d!~ d'!~>1
  | <d~ d'~>1
  | <d d'>2 <c c'>
  | <b b'>1
  | <a a'>
  | <gs~ gs'~>
  | <gs gs'>2. r4 \clef treble
  | a'''4_. a_. a_. r4
  | g!_. g_. g_. r4
  | <fs\=1_( ds'\=2(>2 <g\=1) e'\=2)>4 r4
  | <b,\=1( d!\=2^(>2 <c\=1) e\=2)>4 r4 \clef bass
  | <ds,\=1_( a'\=2(>2 <e\=1) g\=2)>4 a,
  | b1
  | e,\fp
  | s2 \bar "||" \time 3/4 s16


  \label #'lastPage
}

titol = "Der arme Peter (II), Op. 53, n. 3"
subtitol = "El pobre Pere (II)"
compositor = "R. Schumann (1810 - 1856)"
lletrista = "H. Heine (1797 - 1856)"
traductor = "Joaquim Pena (1873 - 1944)"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% REMARKABLE %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \bookOutputSuffix "remarkable"
  \header {
    title = \titol
    subtitle = \subtitol
    composer = \compositor
    arranger = \lletrista
    poet = \traductor
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
    title = \titol
    subtitle = \subtitol
    composer = \compositor
    arranger = \lletrista
    poet = \traductor
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
      #(layout-set-staff-size 17)
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
