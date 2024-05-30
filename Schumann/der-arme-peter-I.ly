\version "2.25.14"
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
  \tempo "Nicht schnell"

  \tempo 4=120
  % \set Score.tempoHideNote = ##t

}


melody_first = \relative c'' {
  \clef treble
  \global

  | \grace s8  R2.
  | r4 r4 g8 ([a])
  | b4. b8 b4
  | b2 b4
  | c c8( [d]) c( [b])
  | a2 fs8( [g])
  | a4.. a16 a4
  | a2 a4
  | b2.
  | g4 r4 g8( [a])
  | b2 b4
  | b2 b4
  | c c8( [d]) c( [b])
  | a2 fs8( [g])
  | a2 a4
  | a4.( g8) a4
  | b2.
  | g4 r4 b4
  | a4. b8 cs4
  | d4. cs8 b4
  | a4 gs8( [a]) b( [a])
  | fs2 a4
  | a4. b8 cs4
  | d4. cs8 b4
  | a2.
  | fs4 r4 g8( [a])
  | b2 b4
  | b4. b8 b4
  | c4.( d8) c8( [b])
  | a2 fs8( [g])
  | a2 a4
  | a4. a8 a4
  | b2.
  | g4 r4 g8( [a])
  | b4. b8 b4
  | b2 b4
  | c4.( d8) c( [b])
  | a2 fs8( [g])
  | a4. a8 a4
  | a4. g8 a4
  | b2.
  | g4 r4 g4
  | e'4. e8 e4
  | \slurDotted d4.( d8) d4 \slurSolid
  | c2 c4
  | b2 g4
  | e'4. e8 e4
  | d2 d4
  | d2( c4)
  | b4 r4 r4
  | R2.
  | R2.
  | R2.
  | R2.
  | R2.
  | R2.
  | R2.
  | R2. \bar "|."
}

% melody_second = \relative c'' {
%   \clef treble
%   \global

%   a b c d
% }

catala_first = \lyricmode {
  En Jan i la Gui -- da ba -- llen ple -- gats
  i cri -- den fent for -- ça gres -- ca.
  En Pe -- re~els guai -- ta trist i ca -- llat
  i~es tor -- na groc com ce -- ra.

  En Jan i la Gui -- da pro -- me -- sos són ja,
  les jo -- ies de no -- ces ells llu -- en.
  El po -- bre Pe -- re no va gens_mu -- dat,
  per ço~es ro -- se -- ga les un -- gles.

  En Per -- e ron -- din -- a~i diu bai -- xet
  mi -- rant la pa -- re -- lla~amb tris -- ti -- cia:
  «Si jo no tin -- gués en -- te -- ni -- ment,
  ah, quin dis -- ba -- rat fa -- ri -- a!»
}

alemany_first = \lyricmode {
  Der Hans und die Gre -- te tan -- zen he -- rum,
  und jauch -- zen vor lau -- ter Freu -- de.
  Der Pe -- ter steht so still und so stumm,
  und ist so blaß wie Krei -- de.

  Der Hans und die Gre -- te sind Bräu -- t'gam und Braut,
  und blit -- zen im Hoch -- zeit -- gesch -- mei -- de.
  Der ar -- me Pe -- ter die Nä -- gel kaut
  und geht im Wer -- kel -- tags -- klei -- de.

  Der Pe -- ter spricht lei -- se vor sich her,
  und schau -- et be -- trü -- bet auf Bei -- de:
  «Ach! wenn ich nicht \set ignoreMelismata = ##t gar zu \unset ignoreMelismata ver -- nün -- ftig wär',
  Ich tä -- te mir was zu Lei -- de.»
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

  | \acciaccatura cs8( <d) b g>2.\p
  | \acciaccatura cs8( <d) b g>2.
  % | <d b g>2.\p
  % | <d b g>2.
  | r8 b'( b' b, b'4^>)
  | r8 b,( b' b, b'4^>)
  | r8 c,( c' c, c'4)
  | r8 a,( a' a, a'4)
  | r8 a,( a' a, a'4)
  | r8 a,( a' a, a'4)
  | r8 b,( b' b, b'4)
  | r8 g,( g' g, g'4)
  | r8 b,( b' b, b'4)
  | r8 b,(\< b' b, b'4)\!
  | r8 c,(\> c' c, c'4)\!
  | r8 a,( a' a, a'4)
  | r8 a,( a' a, a'4)
  | r8 a,( a' a, a'4)
  | r8 b,( b' b, b'4)
  | r8 g,( g' g, g'4)^>
  | r4 <cs,, g' a>4 <cs g' a>4^>
  | r4 <d a'> a'^>
  | <<
    { a4.( b8 cs4^>) }
    \\
    { r4 <cs, g'> <cs g'> }
  >>
  | <<
    { d'4.( cs8 b4^>) }
    \\
    { r4 d,4 d }
  >>
  | <<
    { a'( \once \override Accidental.extra-offset = #'(1 . 0) gs8 a b a) }
    \\
    { r4 \once \override NoteColumn.force-hshift = #2
    \once \override Accidental.extra-offset = #'(2.7 . 0) g! g_> }
  >>
  | fs2 a4
  | <<
    { a4.( b8 cs4^>) }
    \\
    { r4 <cs, g'> <cs g'> }
  >>
  | <<
    { d'4.( cs8 c4) }
    \\
    { r4 <c,! d> c! }
    \\
    { s2 g'8 a}
  >>
  | \noBeam b8 b( b' b, b'4^>)
  | r8 b,( b' b, b'4^>)
  | r8 c,( c' c, c'4)
  | r8 a,( a' a, a'4)
  | r8 a,( a' a, a'4)
  | r8 a,( a' a, a'4)
  | r8 b,( b' b, b'4)
  | r8 g,( g' g, g'4)
  | r8 b,( b' b, b'4)
  | r8 b,(\< b' b, b'4)\!
  | r8 c,(\> c' c, c'4)\!
  | r8 a,( a' a, a'4)
  | r8 a,( a' a, a'4)
  | r8 a,( a' a, a'4)
  | r8 b,( b' b, b'4)
  | r8 g,( g' g, g'4)
  | r8 e( e' e, e'4)
  | r8 d,( d' d, d'4)
  | r8 c,( c' c, c'4)
  | r8 b,( b' b, b'4)
  | r8 e,( e' e, e'4)
  | r8 d,( d' d, d'4)
  | r8 d,( d' c, c'4)
  | r8 b,( b' b, b'4)
  | <<
    { a2. }
    \\
    { r4 <g, a>4 <g a> }
  >>
  | <<
    { d'4( cs8 d e d) }
    \\
    { r4 fs,4 fs4 }
  >>
  | <<
    { g'2. }
    \\
    { r4 g,4 g4 }
  >>
  | <<
    { g( fs!8 g a g) }
    \\
    { r4 e4 e4 }
  >>
  | <<
    { e'2. }
    \\
    { r4 <e, g>4 <e g> }
  >>
  | <<
    { d4( \once \override Accidental.extra-offset = #'(1 . 0) cs8 d e d) }
    \\
    { r4 \once \override NoteColumn.force-hshift = #2
    \once \override Accidental.extra-offset = #'(2.7 . 0) c! \once \omit Accidental c }
  >>
  | <<
    { g'2.^\markup {\italic dim.} }
    \\
    { r4 g,4 g }
  >>
  | \acciaccatura g8^(<g g'>2.) \bar "|."

}

lower = \relative c {
  \clef bass
  \global

  | \acciaccatura cs8(  <d) g,>2.
  | \acciaccatura cs8(  <d) g,>2.
  % | <d g,>2.
  % | <d g,>2.
  | \clef treble g8 \sustainOn d'( [<g d'> d]) \stemUp <g d'>4_>
  | \clef treble g,8 d'( [<g d'> d]) \stemUp <g d'>4_>
  | \clef treble a,8 d( [<fs d'> d]) \stemUp <fs d'>4_> \stemNeutral
  | \clef bass d,8\noBeam \clef treble d' (<fs d'> d <fs d'>4)
  | \clef bass d,8\noBeam \clef treble d' (<fs c' d> d <fs c' d>4)
  | \clef bass d,8\noBeam \clef treble d' (<fs c' d> d <fs c' d>4)
  | g,8 d'( [<g d'> d]) \stemUp <g d'>4
  | g,8 d'( [b' d,]) b'4
  | g,8 d'( [<g d'> d]) <g d'>4
  | gs,8 d'( [<es d'> d]) <es d'>4
  | a,8 d( [<fs d'> d]) <fs d'>4
  | \clef bass d,8 \clef treble d' (<fs d'> d <fs d'>4)
  | d8 d [(<fs c' d> d] <fs c' d>4)
  | \clef bass d,8\noBeam \clef treble d' (<fs c' d> d <fs c' d>4)
  | g,8 d'( [<g d'> d] \stemUp <g d'>4) \stemNeutral
  | \clef bass g,,8 \clef treble d''_( [b' d,] \stemUp b'4)_> \stemNeutral
  | \clef bass \noBeam a,,8 a'( e' a, e'4)
  | \noBeam a,,8 a'( fs' a, fs'4)
  | \noBeam a,,8 a'( e' a, e'4)
  | \noBeam a,,8 a'( fs' a, fs'4)
  | \noBeam a,,8 a'( cs a cs4)
  | \noBeam a,8 a'( d a d4)
  | \noBeam a,8 a'( e' a, e'4)
  | \noBeam a,,8 a'( fs' a, d4)
  | \noBeam g,8 \clef treble d'( <g d'> d \stemUp <g d'>4_>)
  | \clef bass \noBeam d,8 \clef treble d'( <g d'> d \stemUp <g d'>4_>)
  | \noBeam a,8 d (<g d'> d <g d'>4)
  | \clef bass \noBeam d,8 \clef treble d'( <fs d'> d <fs d'>4)
  | d8 d [(<fs c' d> d] <c' d>4)
  | \clef bass d,,8 \clef treble d' [(<fs c' d> d] <fs c' d>4)
  | g,8 d'( [<g d'> d] \stemUp <g d'>4) \stemNeutral
  | \clef bass g,,8 \clef treble d''_( [b' d,] \stemUp b'4) \stemNeutral
  | g,8 d'( [<g d'> d] \stemUp <g d'>4) \stemNeutral
  | gs,8 d'( [<es d'> d] \stemUp <es d'>4) \stemNeutral
  | a,8 d( [<fs d'> d] \stemUp <fs d'>4) \stemNeutral
  | \clef bass \noBeam d,8 \clef treble d'( <fs d'> d <fs d'>4)
  | d8 d [(<fs c' d> d] <c' d>4)
  | \clef bass d,,8 \clef treble d' [(<fs c' d> d] <fs c' d>4)
  | g,8 d'( [<g d'> d] \stemUp <g d'>4) \stemNeutral
  | \clef bass g,,8 \clef treble d''_( [b' d,] \stemUp b'4) \stemNeutral
  | \noBeam c,8 g'( g' g, g'4)
  | \noBeam b,,8 g'( g' g, g'4)
  | a,,8 d( [<fs d'> d] \stemUp <fs d'>4) \stemNeutral
  | g,8 d'( [<g d'> d] \stemUp <g d'>4) \stemNeutral
  | \noBeam c,8 g'8( <c g'> g <c g'>4)
  | \noBeam b,8 g'( g' g, g'4)
  | \noBeam a,,8 e'( e' fs, d'4)
  | g,,8 d'( [<g d'> d] \stemUp <g d'>4) \stemNeutral \clef bass
  | <<
    { cs,,8( a' e' a, e'4^>) }
    \\
    { cs,2. }
  >>
  | <<
    { c!8( a' d a d4^>) }
    \\
    { c,2. }
  >>
  | <<
    { b!8( g' d' g, d'4^>) }
    \\
    { b,2. }
  >>
  | <<
    { bf8( g' cs g cs4^>) }
    \\
    { bf,2. }
  >>
  | <<
    { a8( g' cs g cs4) }
    \\
    { a,2. }
  >>
  | <<
    { d8( fs a fs a4) }
    \\
    { d,2. }
  >>
  | <<
    { g,8( e' c'! e, c'4) }
    \\
    { g,2. _\markup {\italic ritard. }}
  >>
  | \acciaccatura { g16 d'~ } <g, d' b'>2.

  \label #'lastPage
}

titol = "Der arme Peter (I), Op. 53, n. 3"
subtitol = "El pobre Pere"
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
