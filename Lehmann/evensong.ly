\version "2.25.14"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key bf \major
  \time 6/8
  \tempo "Lentament"
  \set Score.tempoHideNote = ##t
  \tempo 4=60
  \set PianoStaff.connectArpeggios = ##t

}


melody_first = \relative c' {
  \clef treble
  \global

  | R2.
  | R2.
  | f8^(^\p f f d4 f8
  | g4. d4) r8
  | bf'4.( a4 g8
  | d4.~d4) r8
  | bf'4.^\< g4\! \breathe a16 bf
  | d4 a8 a4.^\>
  | \!r4 r8 f'4.~^\p
  | f4.( f,4) f8
  | bf2.~
  | bf4.~ bf4 r8
  | R2.
  | r4 r8 r4 d,8^\mf
  | f4 f8 d4 f8
  | g4. d4 r8
  | bf'4.^> a4^> \breathe g8^>
  | d4.^>~d4 r8
  | bf'8^\markup {\italic cresc.} bf a g4 bf8
  | d4^> d8^> a4.^>
  | a4. f4^\> g8\!
  | a2.~
  | a4 r8 r4 r8
  | R2.^\markup {\italic rall.}
  | \tempo "Tempo I" f4^\pp f8 d4~d16^\fermata f16
  | g4 g8 d([ c]) d
  | ef4 bf'8 a4 g8
  | d4.~ d4 r8
  | bf'8^\markup {\italic cresc} bf a g4 bf8
  | d4. a4 r8
  | ef'4.^>^\markup {\italic "più cresc."} c4 c8
  <<
    \context Voice = "mel_f" { gf4. ef4  }
    \\
    { \stemUp \magnifyMusic 0.70 { gf'4.^\>^( gf,!4\!)} }
  >>
  r8
  | r4 r8 f'4.~^\pp
  | f4.^\fermata (f,4) \breathe c'8^-
  | bf2.~^-
  | bf2.~
  | bf2.~^\markup {\italic morendo}
  | bf4 r8 r4^\fermata r8 \bar "|."
}

% melody_second = \relative c'' {
%   \clef treble
%   \global

%   a b c d
% }

catala_first = \lyricmode {

  \set Lyrics.ignoreMelismata = ##t Ple -- gueu les a -- les, àn -- gels
  al meu vol -- \set Lyrics.ignoreMelismata = ##f tant.
  És fosc, can -- ta~el ros -- si -- nyol
  \set Lyrics.ignoreMelismata = ##t suau \skip 1 el seu \set Lyrics.ignoreMelismata = ##f cant.
  El camp és tot en om -- bres,
  ca -- llat i sol.
  Es -- ti -- mats àn -- gels, no mar -- xeu,
  feu -- me~un bres -- sol.
  Cau la nit i so -- bre~el mar __
  el vent va mur -- mu -- rant.
  Ple -- gueu les a -- les, àn -- gels,
  ple -- gueu -- les, àn -- gels
  \set Lyrics.ignoreMelismata = ##t al  \skip1 meu \set Lyrics.ignoreMelismata = ##f vol -- tant.

}

angles_first = \lyricmode {

  \set Lyrics.ignoreMelismata = ##t
  Fold your white wings, dear An -- gels,
  fold your white \set Lyrics.ignoreMelismata = ##f wings;
  Dew falls and the nigh -- tin -- gale  \set Lyrics.ignoreMelismata = ##t soft -- \skip 1 ly  now \set Lyrics.ignoreMelismata = ##fsings.

  A -- cross the lawn lie sha -- dows,
  so still, so deep,
  dear lo -- ving An -- gels, pass not by,
  hush me to sleep.

  Night \skip 1 falls, and whis -- p’ring goes __ the wind
  a -- long the sea;
  Fold your white wings, dear An -- gels,
  fold them, dear An -- gels,
  \set Lyrics.ignoreMelismata = ##t fold \skip1 them \set Lyrics.ignoreMelismata = ##f round me.
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

  | <d f>16^\markup {\italic "sempre legato"} c <d f>16 c <d f>16 c <d f>16 c <d f>16 c <d f>16 c
  | <d f>16 c <d f>16 c <d f>16 c <d f>16 c <d f>16 c <d f>16 c
  | <d f>16 c <d f>16 c <d f>16 c <d f>16 c <d f>16 c <d f>16 c
  | <bf f'> a <bf d> a <bf d> a <bf d> a <bf d> a <bf d> g
  | <bf ef> g <bf ef> g <bf ef> g <a ef'> g
  <a ef'> g <a ef'> g
  | <c d> f, <c' d> f, <c' d> f, <bf d> f <bf d> f\< <bf d> f
  | <g bf> d <g bf> d\! <g bf> d <g bf> d <g bf> d <g bf> d
  |
  <<
    { s2. | <f bf>4.^> f~ | f4. f4 ef8}
    \\
    { \stemUp <f a>16 e <f a> e <f a> e <f a> e <f a> e <f a> d16~ | \stemDown d16 c d c d bf c bf c bf c a | bf a bf a bf g~g4 a8}
  >>
  | <d f>16 c <d f> c <d f> c <d f> c <d f> c <d f> c
  | <d f> c <d f> c <d f> c \stemDown <d f> c <d f> c <d f> c
  | <d f> c <d f> c <d f> c <d f> c <d f> c <d f> c
  | <d f> c^\> <d f> c <d f> c\! <d f> c <d f> c <d f> c
  | \stemNeutral <d f> c <d f> c <d f> c <d f> c <d f> c <d f> c
  | <bf g'> a <bf d> a <bf d> a <bf d>\p a <bf d> a <bf d> g
  | <<
    { ef'4. ef4. }
    \\
    { bf16 a bf a bf g a g a g a g }
  >>
  | <c d> f, <c' d> f, <c' d> f, <bf d> f <bf d> f <bf d> f
  | <g' bf> d <g bf> d <g bf> d <g bf> d <g bf> d <g bf> d
  | <f a> e <f a> e <f a> e <f a> e <f a> e <f a> e
  | <<
    { a4. f4 g8 }
    \\
    { cs,16 b cs b cs a b a b a b a }
  >>
  | <cs a'> b <cs e> b <cs e> b \stemDown <cs e> b <cs e> b <cs e> b
  | <cs e> b^\< <cs e> b <cs e> b\! <cs e> b <cs e> b <cs e> b
  | <a ef' f>\arpeggio d <ef f> d <ef f> d <ef f> d^\> <ef f>_\markup {\italic rall.} d <ef f>_- c\!_-
  | \stemNeutral <d' f> c <d f> c <d f> c <d f> c <d\=1( f\=2(> c <bf d\=1) f\=2)>_\fermata a
  | <g bf f'> a <bf d> a <bf d> a <bf d> a <bf d> a <bf d> g
  | <bf ef> g <bf ef> g <bf ef> g <a ef'> g <a ef'> g <a ef'> g
  | <c d> f, <c' d> f, <c' d> f, <bf d> f <bf d> f <bf d> f
  | <g bf> d <g bf> d <g bf> d <g bf> d <g bf> d <g bf> d
  | <f a> e <f a> e <f a> e <f a> e <f a> e <f a> d
  | <ef! gf bf> c <ef gf bf> c <ef gf bf> c <gf' bf c> ef <gf bf c> ef <gf bf c> ef
  | <gf bf c gf'>2.\arpeggio
  | <<
    { <f bf>4.^> f~ | f~ f4 ef8^- }
    \\
    { d16 c d c\> d bf c\!\pp bf c bf c a | bf a bf_- a_- bf_- g_-~g4_\markup {\italic "coll voce"} a8_-}
  >>
  | <d f>16 c <d f> c <d f> c <d f> c <d f> c <d f> c
  | <d f> c <d f> c <d f> c \stemDown <d f> c <d f> c <d f> c

  | <<
    { s2. |<d f>4. <bf d>\fermata }
    \\
    { <d f>16 c <d f> c <d f> c <d f> c <d f> c <d f> c~ | c4. s4. }
  >>
}

lower = \relative c {
  \clef bass
  \global

  | <<
    { r4^\p r8 <f, f'>4. | ( <c' f> <d bf'>)}
    \\
    { <bf, f'>2.~\sustainOn | <bf f'>2.}
  >>
  | <<
    { \once \shape #'((0 . -5) (3 . 0) (0 . 0) (0 . 0)) Slur r4( r8 d'4.) }
    \\
    {  <bf, f'>2. }
  >>
  | <<
    { \once \shape #'((0 . -4) (3 . 0) (0 . -0.5) (0 . 0)) Slur r4( r8 bf''4.) }
    \\
    {  (<g, d'>2.) }
  >>
  %5
  | <c, g' ef'>4.\arpeggio <f c'>
  | <<
    { \once \shape #'((0.5 . -4.5) (3 . 0) (0 . 0) (0 . 0)) Slur r4( r8 d'4.) }
    \\
    {  <bf, f'>2. }
  >>
  | <<
    \new Voice
    { \voiceOne bf''4(\arpeggio a8 g4.) }
    \\
    { \voiceTwo <g,d'>2.\arpeggio }
  >>
  | <<
    { \once \shape #'((0 . -4) (3 . 0) (0 . 0) (0 . 0)) Slur r4( r8 f'4.) }
    \\
    { <d, a'>2. }
  >>
  | <<
    { r4^\markup {\dynamic p \italic dolce} r8 ef'!4. ( | d4. c4 f,8) }
    \\
    { <f, f'>2.~| <f f'>4.~<f f'>4 f'8 }
  >>
  | <<
    { r4 r8 <f d'>4. ( | <c' f> <d bf'>4)\once \shape #'((0 . 5) (0 . 5) (0 . 0) (0 . 0))( \change Staff = upper f''8)^\<^\markup {\raise #2.5 \italic "m.e"}( c4.^-\! g'4^> f8^> | c4.)\once \shape #'((-0.5 . 0) (-4 . -6) (0 . 0) (0 . 0))_(\change Staff = lower f,,,4.)  }
    \\
    { <bf, f'>2.~ | <bf f'>2.~ |<bf f'>2.~ | <bf f'>4. s4. }
  >>
  % 15
  | <<
    { \once \shape #'((0 . -5) (3 . 0) (0 . 0) (0 . 0)) Slur r4^\mf( r8 d'4.) }
    \\
    {  (<bf, f'>2.) }
  >>
  | <g' d'>4.( <g, d'>)
  | <c g'>( <f, f'>)
  | <<
    { \once \shape #'((0 . -5) (3 . 0) (0 . 0) (0 . 0)) Slur r4( r8 d''4.) }
    \\
    {  <bf, f'>2. }
  >>
  | <<
    \new Voice
    { \voiceOne bf''4(\arpeggio^\markup {\italic cresc.} a8 g4.) }
    \\
    { \voiceTwo <g,d'>2.\arpeggio }
  >>
  | <<
    { \once \shape #'((0 . -4) (3 . 0) (0 . 0) (0 . 0)) Slur r4( r8 f'4.) }
    \\
    { <d, a'>2. }
  >>
  | <<
    { e'4.( d4 f8 | e4.) r4 \once \shape #'((1.5 . 0.5) (0 . 0) (0 . 0) (0 . 0))( \change Staff = "upper" e''8)^\markup {\raise #2 \italic "m.e"}( | b4. fs'4 e8 | c!4.\arpeggio f) }
    \\
    { a,,,4. f | a (<a, e'!>) | s2. | \stemUp <f f'>2.\arpeggio}
  >>
  | <<
    { \once \shape #'((0 . -5) (3 . 0) (0 . 0) (0 . 0)) Slur r4( r8 d''4.) }
    \\
    {  <bf, f'>2. }
  >>
  | <<
    { \once \shape #'((0 . -4) (3 . 0) (0 . -0.5) (0 . 0)) Slur r4( r8 bf''4.) }
    \\
    {  (<g, d'>2.) }
  >>
  | <<
    { ef'4\arpeggio (bf'8 a4\arpeggio g8) }
    \\
    { <c,, g'>4.\arpeggio <f c'>\arpeggio }
  >>
  | <<
    { \once \shape #'((0 . -5) (3 . 0) (0 . 0) (0 . 0)) Slur r4( r8 d'4.) }
    \\
    {  <bf, f'>2. }
  >>
  | <<
    { (bf''4\arpeggio^\markup {\italic cresc.} a8 g4.) | (d4 e8 f4.) }
    \\
    { <g, d>2.\arpeggio | <d a'>2. }
  >>
  | <<
    { <ef'! bf'>4.\arpeggio^>^\markup {\italic "più cresc."} <gf bf c> | <bf c ef>2.\arpeggio}
    \\
    { gf,2.~ | gf2. }
  >>
  | <<
    { r4^\markup {\dynamic p \italic dolce} r8 ef'4.( | d c4 f,8) }
    \\
    { <f, f'>2.~| <f f'>4.~ <f f'>4 f'8_- }
  >>
  | <<
    { r4^\markup {\italic dolcissimo} r8 <f d'>4.( | <c' f> <d bf'>4)\once \shape #'((0.5 . 4) (0.5 . 3) (0 . 0) (0 . 0))(\change Staff = "upper" f''8)^\markup {\raise #2 \italic "m.e"}(| c4. g'4 f8 | d'2.\fermata) }
    \\
    { <bf,,,, f'>2.~ | <bf f'>~ | <bf f'>~ | <bf f'>4.^\ppp <bf f' bf>\fermata}
    \\
    { s2. | s2. | s2. | s4. \crossStaff d'4.}
  >>

  \label #'lastPage
}

titol = "Evensong"
subtitol = "Cançó del vespre"
compositor = "Música: Liza Lehmann"
lletrista = "Lletra: Constance Morgan"
traductor = "Traducció: Viviana Salisi"

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
      \new Voice = "mel_f" { \set Staff.midiInstrument = "voice oohs" \autoBeamOff \melody_first }
      \new Lyrics \lyricsto mel_f \catala_first
      \new Lyrics \lyricsto mel_f \angles_first
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
        \RemoveEmptyStaves
        \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #3
      }
      \context {
        \PianoStaff
        \consists "Span_stem_engraver"
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
