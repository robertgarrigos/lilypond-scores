\version "2.24.3"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))

global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key g \minor
  \time 2/4
  \tempo "Andante"
  \set Score.tempoHideNote = ##t
  \tempo 4=48

}


melody_first = \relative c'' {
  \clef treble
  \global

  | r4 r16 bf d bf
  | d4~ d16 bf a c
  | bf4 r16 bf d bf
  | d4~d16 bf g bf
  | a8. bf16  c^\< [(d)] ef [(g)]\!
  | f8. d16 d ([c]) bf ([g])
  | f8 r16 bf c ([d]) ef ([g])
  | f8. d16 d ([c]) c ([bf])
  | a4~a16 bf^\p c a
  | d ([bf]) c ([a]) d ([bf]) c ([a])
  | \after 8 ^\markup {\italic cresc.} d2~
  | d4~d16 c d ef
  | g ([f]) ef ([c]) bf8. a16
  | g4 r4
  | R2
  | R2
  | R2
  | R2
  | R2
  %20
  | r8 r16 g g8 af16 ([bf])
  | c8 ef d16 ([f ef]) c
  | bf8. g16 bf ([g]) af ([bf])
  | c ([ef]) d ([ef]) f8 (ef16) c
  | bf4 r4
  | r2
  | r8 r16 c c8 c
  | cs^\f cs g'8. cs,16
  | d4~ d16 bf^\p d bf
  | d4~ d16 bf a c
  | bf4 r16 bf d bf
  | d4~d16 bf g bf
  | a8. bf16  c^\< [(d)] ef [(g)]\!
  | f8. d16 d ([c]) bf ([g])
  | f8 r16 bf c ([d]) ef ([g])
  | f8. d16 d ([c]) c ([bf])
  | a4~a16 bf^\p c a
  | d ([bf]) c ([a]) d ([bf]) c ([a])
  | \after 8 ^\markup {\italic cresc.} d2~
  | d4~d16 c d ef
  | g ([f]) ef ([c]) bf8. a16
  | g8 r8 g^\p g16 g
  | g8 g^\< g g\!
  | d'2~^\>
  | d4\! r4\fermata \bar "|."
}

melody_second = \relative c'' {
  \clef treble
  \global

  | r4 r16 g bf g
  | bf4~ bf16 g fs a
  | g4 r16 g bf g
  | bf4~ bf16 g g g
  | fs8. g16 a^\< ([bf]) c ([ef])\!
  | d8. bf16 bf ([a]) g ([ef])
  | d8 r16 bf' a ([bf]) c ([ef])
  | d8. bf16 bf ([a]) a ([g])
  | fs4~ fs16 g^\p a fs
  | bf ([g]) a ([fs]) bf ([g]) a ([fs])
  | \after 8 ^\markup {\italic cresc.} bf2~
  | bf4~ bf16 a bf c
  | ef ([d]) c ([a]) g8 fs
  | g4 r4
  | R2
  | r4 r16 g bf g
  | bf4~bf16 bf af g
  | f8. f16 e ([f]) g ([af])
  | bf ([ef]) bf ([g]) f8. af16
  | g8. ef16 ef8 f16 ([g])
  | af8 c b16 ([d c]) af
  | g8. ef16 g ([ef]) f ([g])
  | af ([c]) b ([c]) d8 (c16) af
  | g8. bf16 bf8^\markup {\italic cresc.} bf
  | b b b b
  | c4 r4
  | R2
  | r4 r16 g^\p bf g
  | bf4~ bf16 g fs a
  | g4 r16 g bf g
  | bf4~ bf16 g g g
  | fs8. g16 a^\< ([bf]) c ([ef])\!
  | d8. bf16 bf ([a]) g ([ef])
  | d8 r16 bf' a ([bf]) c ([ef])
  | d8. bf16 bf ([a]) a ([g])
  | fs4~ fs16 g^\p a fs
  | bf ([g]) a ([fs]) bf ([g]) a ([fs])
  | \after 8 ^\markup {\italic cresc.} bf2~
  | bf4~ bf16 a bf c
  | ef ([d]) c ([a]) g8 fs
  | g8 r8 g^\p g16 g
  | g8 g^\< g g\!
  | bf2~^\>
  | bf4\! r4\fermata \bar "|."
}

catala_first = \lyricmode {
  I que~e -- ren bells el camp i~el bosc!
  Pe -- rò que trist és a -- ra~el món!
  Pas -- sà l'es -- tiu, el temps més bell
  i re -- re~el goig ve~el so -- fri -- ment,
  pas -- sà l'es -- tiu, el temps més bell
  i re -- re~el goig ve~el so -- fri -- ment.

  % Res no sa -- bí -- em de ne -- guits,
  % po -- sà -- vem pel bran -- cam flo -- rit,
  con -- tents i gais als raigs del sol,
  can -- ta -- des es -- cam -- pant pel món,
  % con -- tents i gais als raigs del sol,
  can -- ta -- des es -- cam -- pant pel món.

  Po -- brets i tris -- tos o -- ce -- llets,
  ja no te -- nim cap més re -- cés,
  doncs ara ens cal vo -- lar d'a -- cí
  i vers llu -- nyans ter -- rers fu -- gir!
  doncs ara ens cal vo -- lar d'a -- cí
  i vers llu -- nyans ter -- rers fu -- gir!
  i vers llu -- nyans ter -- rers fu -- gir!
}

alemany_first = \lyricmode {
  Wie war so schön __ doch Wald und Feld!
  Wie ist so trau -- rig jetzt die Welt!
  Hin ist die schö -- ne Som -- mer -- zeit
  und nach der Freu -- de kam das Leid,
  hin ist die schö -- ne som -- mer -- zeit
  und nach der Freu -- de kam das Leid.

  % Wir wuss -- ten nichts __ von Un -- ge -- mach,
  % wir sa -- ssen un-- ter'm Lau -- bes -- dach
  verg -- nügt und forh beim Son -- nen -- schein
  und sand -- gen in die Welt hin -- ein,
  % verg -- nügt und forh beim Son -- nen -- schein
  und sand -- gen in die Welt hin -- ein.

  Wir ar -- men Vög -- lein tra -- uern sehr:
  wir ha -- ben kei -- ne Hei -- math mehr,
  wir müs -- sen jetzt von hin -- nen flieh'n
  und in die wei -- te Frem -- de sieh'n,
  wir müs -- sen jetzt von hin -- nen flieh'n
  und in die wei -- te Frem -- de sieh'n,
  und in die wei -- te Frem -- de sieh'n

}

catala_second = \lyricmode {
  I que~e -- ren bells el camp i~el bosc!
  Pe -- rò que trist és a -- ra~el món!
  Pas -- sà l'es -- tiu, el temps més bell
  i re -- re~el goig ve~el so -- fri -- ment,
  pas -- sà l'es -- tiu, el temps més bell
  i re -- re~el goig ve~el so -- fri -- ment.

  Res no sa -- bí -- em de ne -- guits,
  po -- sà -- vem pel bran -- cam flo -- rit,
  con -- tents i gais als raigs del sol,
  can -- ta -- des es -- cam -- pant pel món,
  con -- tents i gais als raigs del sol,
  % can -- ta -- des es -- cam -- pant pel món.

  Po -- brets i tris -- tos o -- ce -- llets,
  ja no te -- nim cap més re -- cés,
  doncs ara ens cal vo -- lar d'a -- cí
  i vers llu -- nyans ter -- rers fu -- gir!
  doncs ara ens cal vo -- lar d'a -- cí
  i vers llu -- nyans ter -- rers fu -- gir!
  i vers llu -- nyans ter -- rers fu -- gir!
}

alemany_second = \lyricmode {
  Wie war so schön __ doch Wald und Feld!
  Wie ist so trau -- rig jetzt die Welt!
  Hin ist die schö -- ne Som -- mer -- zeit
  und nach der Freu -- de kam das Leid,
  hin ist die schö -- ne som -- mer -- zeit
  und nach der Freu -- de kam das Leid.

  Wir wuss -- ten nichts __ von Un -- ge -- mach,
  wir sa -- ssen un-- ter'm Lau -- bes -- dach
  verg -- nügt und forh beim Son -- nen -- schein
  und sand -- gen in die Welt hin -- ein,
  verg -- nügt und forh beim Son -- nen -- schein
  %und sand -- gen in die Welt hin -- ein,

  Wir ar -- men Vög -- lein tra -- uern sehr:
  wir ha -- ben kei -- ne Hei -- math mehr,
  wir müs -- sen jetzt von hin -- nen flieh'n
  und in die wei -- te Frem -- de sieh'n,
  wir müs -- sen jetzt von hin -- nen flieh'n
  und in die wei -- te Frem -- de sieh'n,
  und in die wei -- te Frem -- de sieh'n
}

upper = \relative c'' {
  \clef treble
  \global
  | r16 <bf, g'>16 (<d bf'> <bf g'>16 <d bf'> <bf g'>16 <d bf'> <bf g'>16)
  | r16 <bf g'>16 (<d bf'> <bf g'>16 <d bf'>8) <d fs a>
  | r16 <bf g'>16 (<d bf'> <bf g'>16 <d bf'> <bf g'>16 <d bf'> <bf g'>16)
  | r16 <bf g'>16 (<d bf'> <bf g'>16 <d bf'>8) <bf cs e g>
  | <d fs a>16 a <d fs a>8 r8 <ef! f a c>
  | <d f bf d>16 <d bf'> (<f d'> <d bf'> < f d'>8) <bf, ef g>
  | <bf d f>16 <d bf'> (<f d'> <d bf'> ef d c a)
  | bf <d bf'> (<f d'> <d bf'> <f d'>8) <ef a c>
  | r16 <a, fs'> (<d a'> <a fs'> <d a'>8) r
  %10
  | r16 ef (d ef) r16 ef (d ef)
  | r16 <bf g'> (<d bf'>_\markup {\italic cresc.} <bf g'> <bf af'> <af f'> <bf af'> <af f'>)
  | <bf g'>\f (<g ef'> <bf g'> <g ef'> <bf g'>8) r
  | r4 < bf d g>8\p <c d fs>
  | r16 <bf g'> (<d bf'> <bf g'> <d bf'>) \stemUp <bf' g'>_\markup {\italic cresc.} (<a fs'> <c a'>
  | <g d'> <bf g'> <a fs'> <c a'> <g d'> <bf g'> <a fs'> <c a'>)
  | \stemNeutral <bf d>8_\markup {\italic dim.} (<bf g'>4) r8
  | r16 <bf, ef g> (bf' <bf, ef g> bf' <c, ef g> <f af> <ef g>)
  | r16 <af, d> (< bf f'> <af d>) r16 <af d> (< bf f'> <af d>)
  | <bf g'> (<g ef'> <bf g'> <g ef'>) <af bf d>8 <af bf d>
  | <g bf ef>16 <g ef'> (<bf g> <g ef'> <bf g'>) <ef g> (<f af> <g bf>)
  | r16 <af c>\< (ef <af c>)\! <b d>8\> (<c ef>16) <af c>\!
  | <g bf!> (ef <g bf> ef) r16 <ef g> (<d f af> < df g bf>)
  | r16 <c ef>\< (<d! f> <c ef>\! <b d>8\> <c ef>16 <af c>)\!
  | <g bf> ef' (g ef <g bf>_\markup {\italic cresc.} ef <g bf> ef)
  | <g b> (ef <g b> ef <g b> ef <g b> ef)
  | <af c> (ef <af c> ef  <af c> ef  <af c> ef)
  | <g cs>\f (ef <g cs> ef <ef g cs>4)
  | r16 <bf g'>16 (<d bf'> <bf g'>16 <d bf'> <bf g'>16 <d bf'> <bf g'>16)
  | r16 <bf g'>16 (<d bf'> <bf g'>16 <d bf'>8) <c d fs a>
  | r16 <bf g'>16 (<d bf'> <bf g'>16 <d bf'> <bf g'>16 <d bf'> <bf g'>16)
  | r16 <bf g'>16 (<d bf'> <bf g'>16 <d bf'>8) <bf cs e g>
  | <d fs a>16 a <d fs a>8 r8 <ef! f a c>
  | <d f bf d>16 <d bf'> (<f d'> <d bf'> < f d'>8) <bf, ef g>
  | <bf d f>16 <d bf'> (<f d'> <d bf'> ef d c a)
  | bf <d bf'> (<f d'> <d bf'> <f d'>8) <ef a c>
  | r16 <a, fs'> (<d a'> <a fs'> <d a'>8) r
  %10
  | r16 ef (d ef) r16 ef (d ef)
  | r16 <bf g'> (<d bf'>_\markup {\italic cresc.} <bf g'> <bf af'> <af f'> <bf af'> <af f'>)
  | <bf g'>\f (<g ef'> <bf g'> <g ef'> <bf g'>8) r
  | r4 < bf d g>8\p <c d fs>
  | r16 <bf g'> (<d bf'> <bf g'> <d bf'>) \stemUp <bf' g'>_\markup {\italic cresc.} (<a fs'> <c a'>
  | <g d'> <bf g'> <a fs'> <c a'> <g d'> <bf g'> <a fs'> <c a'>)
  | \stemNeutral <bf d>8 r8 <bf, d bf'>\p r8
  | <bf d bf'> r8 r4\fermata
}

lower = \relative c {
  \clef bass
  \global
  | <g, g'>4^\p r4
  | <g g'>4 r8 <d' d'>
  | <g, g'>8 r8 r4
  | <g g'>8 r8 r8 <g' g'>
  | <d d'> r r <f! f'!>
  | <bf, bf'> r r <bf bf'>
  | <bf bf'> r r <bf bf'>
  | <bf bf'> r r <c c'>
  | <d d'> r r4
  %10
  | <g, g'>8^\p r r <g g'>
  | <g g'>4 < bf bf'>
  | <ef ef'>~ <ef ef'>8 r
  | r4 d'8 <d, d'>
  | <<
    {s4 r16 d'' (c ef | bf d c ef bf d c ef) | bf4 (d8) r8}
    \\
    {<g,, g'>4^~ g' | g g | g4. s8}
  >>
  | <g,, g'>8^\p r <af af'> r
  | <bf bf'> r <bf bf'> r
  |<bf bf'> r bf' bf
  | <ef, ef'> r <ef ef'> r
  | <<
    {s4 <b'' d>8 (<c ef>16) <af c>}
    \\
    {<ef, ef'>8 r ef'4}
  >>
  | <ef g bf>8 r <ef, ef'> r
  | <ef ef'> r <ef ef'> r
  | <<
    {r16 g' (bf g bf g bf g)}
    \\
    {<ef, ef'>8 r ef' ef}
  >>
  | <<
    { b'16 (g b g b g b g)}
    \\
    {ef8 ef ef ef}
  >>
  | <<
    { c'16 (af c af c af c af)}
    \\
    {ef4 ef8 ef }
  >>
  | <<
    { cs'16 (bf cs bf~) <bf cs>4}
    \\
    {ef,4 ef8 ef }
  >>
  | <d, d'>2^\p
  | <d d'>4 r8 <d d'>
  | <g g'>8 r8 r4
  | <g, g'>8 r8 r8 <g' g'>
  | <d d'> r r <f! f'!>
  | <bf, bf'> r r <bf bf'>
  | <bf bf'> r r <bf bf'>
  | <bf bf'> r r <c c'>
  | <d d'> r r4
  %10
  | <g, g'>8^\p r r <g g'>
  | <g g'>4 < bf bf'>
  | <ef ef'>~ <ef ef'>8 r
  | r4 d'8 <d, d'>
  | <<
    {s4 r16 d'' (c ef | bf d c ef bf d c ef)}
    \\
    {<g,, g'>4^~ g' | g g}
  >>
  | <g bf>8 r8 <g, g'> r8
  | <g, g'> r8 r4

  \label #'lastPage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% PDF %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  % \bookOutputSuffix ""
  \header {
    title = "Abschiedslied der Zugvögel, Op. 63 n. 2"
    subtitle = "Comiat de l'ocell de pas"
    composer = "F. Mendelssohn (1809-1847)"
    arranger = "A. von Fallersleben (1798-1874)"
    poet = "J. Pena (1873-1944)"
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
      \new Voice = "mel_s" { \autoBeamOff \melody_second }
      \new Lyrics \lyricsto mel_s \catala_second
      \new Lyrics \with {
        \override LyricText.font-shape = #'italic
      } \lyricsto mel_s \alemany_second
      \new PianoStaff <<
        \new Staff = "upper" \upper
        \new Staff = "lower" \lower
      >>
    >>
    \layout {
      #(layout-set-staff-size 16.4)
      \context {
        \Staff
        % \RemoveEmptyStaves
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
