\version "2.25.23"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))

moreVerticalDynamicTextSpannerWhiteoutII =
#(define-music-function (parser location adds)(pair?)

   (define (flexible-stencil-whiteout add stencil)
     (let*
      ((x-ext (ly:stencil-extent stencil X))
       (y-ext (ly:stencil-extent stencil Y)))
      (ly:stencil-add
       (stencil-with-color
        (ly:round-filled-box
         (interval-widen x-ext (car add))
         (interval-widen y-ext (cdr add))
         0.0)
        white)
       stencil)))

   (define more-stencil-whiteout
     (lambda (grob)
       (let* ((stil (ly:line-spanner::print grob))
              (x-ext (ly:stencil-extent stil X))
              (y-ext (ly:stencil-extent stil Y))
              (whiteout-stil (flexible-stencil-whiteout adds stil)))
         (ly:make-stencil
          (ly:stencil-expr whiteout-stil)
          x-ext
          y-ext))))
   #{
     %% Needed for 2.17.x:
     \override DynamicTextSpanner #'vertical-skylines = #'()
     \once \override DynamicTextSpanner #'stencil =
     #more-stencil-whiteout
   #})

global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key ef \major
  \time 4/4
  \tempo "Tranquillo"
  \set Score.tempoHideNote = ##t
  \tempo 4=60
  \set PianoStaff.connectArpeggios = ##t

}


melody_first = \relative c'' {
  \clef treble
  \global

  | R1*6
  | r2 r8 c^\p c bf
  | af4. af8 af g af bf
  | g2 af4 r8 af8
  | f' ef d c bf f g af
  | g2 r8 g^\> g g\!
  | b^\pp b b b a4. a8
  | d2 g,4^\< d'
  | ef2. ef4\!
  | e2.~ e8 r8
  | R1
  | R1
  | r8 g, g g c4. g8
  | g f g af d,4 ef
  | r8 g g g c2~
  | c8 c d ef d8. a16 a4
  | r8 d^\< d d\! ef4 d
  | r8^\pp d4 d8 fs4. d8
  | cs2 b4^\< fs
  | f!2.\! c'!4^\>
  | bf2.\! r4
  | r4^\markup {\italic {con espressione}} g4^\p ef'4. bf8
  | bf2~ bf8 c d ef
  | g,2( f4) g
  | bf2 af4 r4
  | ef' a,8.^\< a16 a4 \tuplet 3/2 4 { a8 bf c }\!
  | f4. af,8 g4^\markup {\italic "molto espress."} \tuplet 3/2 4 { g8 bf ef }
  | g2~ g8 ef^\< d ef\!
  | af4. g8 c,4 f
  | r4 ef d4. c8
  | bf2^\> r2\!
  | R1
  | r2 r4 b4
  \set melismaBusyProperties = #'()
  | c2.( d,4)
  | ef2 r2
  | R1
  | R1
  | R1 \bar "|."
}

% melody_second = \relative c'' {
%   \clef treble
%   \global

%   a b c d
% }

catala_first = \lyricmode {
  Pos -- a~a la tau -- la~el tan flai -- rós re -- se -- da
  que l'úl -- tim às -- ter roig ens duu de l'any
  i~al -- tra ve -- ga -- da fem d'a -- mor con -- ver -- sa,
  com ans pel maig.

  Do -- na'm la mà, per -- què~en se -- cret l'es -- tre -- nyi
  i si~al -- gú~ho veu, tant m'és, en ve -- ri -- tat,
  sols u -- na do'm de tes mi -- ra -- des ten -- dres,
  com ans pel maig.

  Per -- fums i flors hi~ha~a -- vui en ca -- da tom -- ba
  un cop a l'any fes -- ta pels morts es fa,
  vi -- ne~al meu cor per -- què~a ser me -- va tor -- nis,
  com ans pel maig,
  com ans pel maig.
}

alemany_first = \lyricmode {
  Stell auf den Tisch die duf -- ten -- den Re -- se -- den,
  die letz -- ten ro -- ten As -- tern trag her -- bei,
  und laß uns wie -- der von der Lie -- be re -- den,
  wie einst im Mai.

  Gib mir die Hand, daß ich sie heim -- lich drüc -- ke
  und wenn man's sieht, mir ist es ei -- ner -- lei,
  gib mir nur ei -- nen dei -- ner sü -- ßen Blic -- ke,
  wie einst im Mai.

  Es blüht und fun -- kelt heut auf je -- dem Gra -- be,
  ein Tag im Jah -- re ist den To -- ten frei,
  komm an mein Herz, daß ich dich wie -- der ha -- be,
  wie einst im Mai,
  wie einst im Mai.
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

  | <<
    \new Voice {
      \voiceOne <bf g'>2( ef4. bf8)
    }
    \\
    \new Voice{
      \voiceTwo g2. r4
    }
  >>
  | <<
    \new Voice {
      \voiceOne bf2~( bf8 c) d^. ef^.
    }
    \\
    \new Voice{
      \voiceTwo <bf, ef>2 r2
    }
  >>
  | <<
    \new Voice {
      \voiceOne <ef g>2~<ef g>8 <d f>4( <ef g>8)
    }
    \\
    \new Voice{
      \voiceTwo <bf>2~ bf8 bf4.
    }
  >>
  | <bf\=1( df\=2( e g\=3^( bf\=4^(>2 <af\=1) c\=2) f\=3) af\=4)>8 <g' bf>4(\< <af c>8)
  | <bf,\=1( df\=2( e\=3^( g\=4^(>2 <bf\=1) df\=2) e\=3) g\=4)>8 <af c f af> (<g' bf> <af c>)\!
  | <c, af' c>8( <af' c af'>) <af c af'>4.( <bf c g'>8)\> <af c f>4~^(
  | <af c f>8 <g bf c>8) <f af c>4.( <c g' bf>8) <c f af>4~\!
  | < c f af>4 <af c f>4~( <af c f>8 <g c e> <af c f> <bf c g'>)
  | <<
    \new Voice {
      \voiceOne e2( f4)
    }
    \\
    \new Voice{
      \voiceTwo g,8( c bf g) af4
    }
  >>
  r4
  | <<
    \new Voice {
      \voiceOne <d f>8( <ef g> <f af> <fs a> <f bf>) <bf, d f>( <bf d g> <bf d af'>)
    }
    \\
    \new Voice{
      \voiceTwo bf2~ bf8 s8 s4
    }
  >>
  | <<
    \new Voice {
      \voiceOne g'1
    }
    \\
    \new Voice{
      \voiceTwo
      \shape #'((1 . -0.7) (0 . 0) (-1 . 1) (0 . 1)) Slur
      <g, ef'>8^( bf^~ \stemUp bf4^~\> bf8 c4 cs8)\!
    }
    \\
    \new Voice{
      \voiceThree
      \shape #'((-1 . -2) (0 . -1.5) (0 . -1) (0 . -0.5)) Slur
      \once \override Stem.stencil = ##f
      \hide
      g4_( \stemDown g2.)
    }
  >>
  | <b d g>4.\pp <b\=1_( d\=2^( g>8 <a\=1) d\=2) fs>4. <a d fs a>8
  | <<
    \new Voice {
      \voiceOne a'2( g4) d'4
    }
    \\
    \new Voice{
      \voiceTwo a8( fs d a g4 d''8 <d, g>)
    }
  >>
  | <<
    \new Voice {
      \voiceOne ef'2~ ef8 ef4.
    }
    \\
    \new Voice{
      \voiceTwo ef8( <g, df'> ef) r8 r
      \mergeDifferentlyDottedOn
      ef'8( <g, df'> ef)
    }
  >>
  | <<
    \new Voice {
      \voiceOne e'2~ e8 e4.
    }
    \\
    \new Voice{
      \voiceTwo e8( <g, df'> e) r8 r
      \mergeDifferentlyDottedOn
      e'8( <g, df'> e)
    }
  >>
  | <<
    \new Voice {
      \voiceOne <af f'>8(^> df4 af f ef8)
    }
    \\
    \new Voice{
      \voiceTwo f2 s2
    }
  >>
  | <<
    \new Voice {
      \voiceOne <ef, ef'>2 s2
    }
    \\
    \new Voice{
      \voiceTwo
      df'4^( c) a'8\rest s4.
    }
  >>
  | <c, ef g c>2. <g\=1( c\=2( ef\=3^(>4^(
  | <g\=1) b\=2) ef\=3)>8 <f b d> <g b ef> <af b f>)
  <<
    \new Voice {
      \voiceOne b4( c~)
      | <ef, c'>8 <g c ef>_( <f g d'> <ef g c>) <g ef' g>2
    }
    \\
    \new Voice{
      \voiceTwo af8( f ef4~) |
      % \once \override Stem.stencil = ##f
      \override Stem #'transparent = ##t
      \hide
      ef8 s8 s2.
    }
  >>
  | <<
    \new Voice {
      \voiceOne c''4( <bf, bf'>) <a c_~ d_~ a'~>2
      | <c d a'!>4\< <bf d g bf> <ef ef'>8(\! fs~ <d fs d'>4)
    }
    \\
    \new Voice{
      \voiceTwo  <c ef>2 s2 | s2 ef4 s4
    }
  >>
  | r4 <d fs a>4\pp <d! fs d'!>2~
  | <d fs d'>2.
  <<
    \new Voice {
      \voiceOne fs4( | f!2.)

      c'4( | bf2.) <bf af'>4
    }
    \\
    \new Voice{
      \voiceTwo <b, d>4~\< | <b d>8\! d~ <b d>4~_( [b8\> c]) \shape #'((0 . 0) (0 . 0) (2 . -2.5) (6 . 3)) Slur
      c'(<c, ef f>^~\! | <d f> bf g' <bf, d>~ <bf d>4) s4
    }
    \\
    \new Voice{
      \voiceThree s4 |
      \shape #'((-0.5 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur
      \override Stem #'transparent = ##t \hide  f'2( \override Stem #'transparent = ##f ef4) s4 | s2 af2
    }
  >>
  | <<
    \new Voice {
      \voiceOne <bf g'>2( ef4. bf8) | bf2~( bf8 c d ef)
    }
    \\
    \new Voice{
      \voiceTwo g,2.\p r4 | <bf, ef>2 r2
    }
  >>
  | <bf ef g>2( <d f>8 bf <ef g> bf)
  | <bf df e g bf>2( <af c f af>8) <g' bf>4( \stemUp <af c>8))
  | \stemNeutral <gf a c gf'>2.\cresc \tuplet 3/2 4 { <a c>8 <bf d> <c ef> }
  \shape #'((1.2 . -1) (0 . -1.5) (0 . -1) (-0.2 . -1)) Slur
  |  <bf f' af!\=1( bf>2~ <bf ef g\=1) bf>8 <g ef' g>8( <bf g' bf> <ef g ef'>)
  | <g ef' g>2~ <g ef' g>8 <ef g ef'>8( <d g d'> <ef g ef'>)
  | <af c af'>4.\ff( <g bf g'>8) <c, g' c>4( <f c' f>)
  | <<
    \new Voice {
      \voiceOne r4 <ef, f c' ef>4
      \once \override NoteColumn.force-hshift = #0.3
      <d d'>4._( <c c'>8)
    }
    \\
    \new Voice{
      \voiceTwo s4 s4 <f bf>4 <ef af!>
    }
  >>
  |
    % \override Score.SpacingSpanner.strict-note-spacing = ##t
    % \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
  <<
    \new Voice {
      \voiceOne bf'2~ bf8 df( c bf)
      | <g bf>4( <f af> <bf, c e g> <af c f>)
    }
    \\
    \new Voice{
      \voiceTwo bf8\> (<f' af>~ <bf, f' af>4\! <df g>2)\dim
      | e8 df c af s2
      | \stemUp <bf ef! bf'>2\p
    }
    \\
    \new Voice {
      % per espaiar la primaera blanca del compàs 38
      % afegeixo una tercera veu amb notes invisibles
      \voiceThree s1 | s1 |  \override Stem #'transparent = ##t \hide d4 \hide d4
    }
  >>
    <b ef gf b>2\arpeggio
  | <c ef gf c>2\arpeggio <a ef' f>4(\> <af d f bf>\!\arpeggio)
  | <g ef' ef'>\arpeggio \tuplet 3/2 4 { r8 r g (bf ef g bf ef g)}
  | <<
    \new Voice {
      \voiceOne df'2( c4 bf~
      | bf)\> ef,2( f4)
      \once \set PianoStaff.connectArpeggios = ##f
      | <g, bf ef g>1\arpeggio\!
    }
    \\
    \new Voice{
      \voiceTwo r4 \tuplet 3/2  { r8 df'~ <df ff>~ } <df ff>2
      | <bf c\=1(> <af cf\=1)>
    }
  >>



}


lower = \relative c {
  \clef bass
  \global

  | ef,8(\sustainOn bf' ef g bf ef  g4) \tweak X-offset 2 \sustainOff
  | g,,,8(\sustainOn g' bf ef g2) \tweak X-offset 7 \tweak Y-offset -4 \sustainOff
  | bf,2( <af af'>4 <g g'>4)
  | <f c' g'>2~ ^(<f c' f>4) r4
  | r8 f,8(\sustainOn c' f c'2~
  | c4.\tweak X-offset 3 \sustainOff  f,8\sustainOn f'4. c'8
  | f4) r8\sustainOff c,8( f2~
  | f8) c,( f af c2 )
  | <f, c'>2\sustainOn f'8( \tweak X-offset -1 \sustainOff c\tweak X-offset -1.5 \sustainOn f,4)\tweak X-offset 3 \sustainOff
  | <<
    \new Voice {
      \voiceOne af'8( g f ef d) af'( g f)
    }
    \\
    \new Voice{
      \voiceTwo  bf,2~ bf8 bf4.
    }
  >>
  | <<
    \new Voice {
      \voiceOne ef4. ef8~ \stemUp <bf ef>2
    }
    \\
    \new Voice{
      \voiceTwo <ef, bf'>2\sustainOn
      \shape #'((-3.2 . 1) (-2 . -3) (0 . 0) (0 . 0)) Slur
      bf'4(\tweak X-offset 2 \sustainOff ef,)
    }
    \\
    \new Voice{
      \voiceThree
    }
  >>
  | d8([\sustainOn d'] d') r8\sustainOff c,,8([\sustainOn d'] d')\sustainOff r8\sustainOn

  | <b,, b'>2~_(\tweak X-offset 9 \sustainOff <b b'>8

  \sustainOn [d']^\cresc
  % \moreVerticalDynamicTextSpannerWhiteoutII #'(1 . 0.5)

  d') r\tweak X-offset 0.5  \sustainOff
  | <bf,, bf'>4.( \sustainOn ef'8 ef') r <bf,, bf'>4 \tweak X-offset 3 \tweak Y-offset -4 \sustainOff
  | <bff bff'>4.\sustainOn ( bff''8 bff') r <bff,,, bff'>4 \tweak X-offset 3.5 \tweak Y-offset -4 \sustainOff
  | af8(^>^\mf \sustainOn
  % \moreVerticalDynamicTextSpannerWhiteoutII #'(1 . 0)
  af'^\dim df4 f g!)\tweak X-offset 2 \tweak Y-offset -4 \sustainOff
  | <<
    \new Voice {
      \voiceOne \shape #'((0 . -4) (0 . 0) (0 . 1) (0 . 0)) Slur af,,8(\sustainOn [ef'] af[ ef'] af \change Staff = "upper" \stemDown[c ef af])
    }
    \\
    \new Voice{
      \voiceTwo s2 s8 d,,8\rest d4\rest \tweak X-offset 2 \tweak Y-offset -4 \sustainOff
    }
  >>
  | c,8(^\p \tweak Y-offset -4 \sustainOn g' c ef g c) r8 g,(\tweak X-offset 1 \sustainOff
  | c2~ c4.) g8(
  | c,2~) c8\sustainOn bf( ef bf')\tweak X-offset 1 \tweak Y-offset -4 \sustainOff
  | <<
    \new Voice {
      \voiceOne <a a'>4( <g g'>)~ <g g'>8\sustainOn <fs fs'>_( c' d
      | \stemDown a'4) \stemUp <g, d' g>4\tweak X-offset -1 \sustainOff d'!4.
      \shape #'((-1 . 1) (-0.5 . 0.5) (-0.5 . 0.5) (0 . 0)) Slur
      d8(
      | \stemNeutral d'!8) r8  <a, fs' a>4\tweak X-offset -1 \sustainOff as8(\sustainOn fs' as d)\tweak X-offset 1 \sustainOff
    }
    \\
    \new Voice{
      \voiceTwo ef,2 s2 | s2 gs,2\sustainOn
    }
  >>
  | b,8(^\>\sustainOn fs' d' fs d'4)\!
  <<
    \new Voice {
      \voiceOne d,4~ |
      \shape #'((1 . 0.7) (0.5 . 0.8) (-0.5 . 1) (-1.5 . 0)) Slur
      d2_( \override Stem #'transparent = ##t \hide ef4)\override Stem #'transparent = ##f \tweak X-offset -1 \sustainOff f~ | f g
    }
    \\
    \new Voice{
      \voiceTwo gs,4(\tweak X-offset -1 \sustainOff | a2.)\sustainOn a4(\sustainOn af!\tweak X-offset -1\sustainOff \sustainOn g)\tweak X-offset -1\sustainOff \sustainOn
    }
    \\
    \new Voice{
      \voiceThree s4 b'4\rest b8\rest f8~
      \once \override NoteColumn.horizontal-shift = #-1
      <ef f>4
    }
  >>
  <f, bf>8(^\>\sustainOn f' bf d)\!\tweak X-offset 0.5 \tweak Y-offset -2 \sustainOff
  | ef,,8(\sustainOn bf'^\markup { \italic "con espressione"} ef g bf ef g4)\tweak X-offset 2 \sustainOff
  | g,,,8(\sustainOn g' bf ef g2)\tweak X-offset 12 \sustainOff
  | r8 bf,,8(\sustainOn bf' ef) <af, af'>4_(\tweak X-offset -1 \sustainOff <g g'>)
  | <<
    \new Voice {
      \voiceOne f,8(\sustainOn f' c' g' f4)\tweak X-offset -1 \sustainOff r4
    }
    \\
    \new Voice{
      \voiceTwo \mergeDifferentlyDottedOn s8 f,4.~ f4 s4
    }
  >>
  | ef8\sustainOn (ef' gf a c ef) \tuplet 3/2 4 { <a, c> <bf d> <c ef> }\tweak X-offset 1 \sustainOff
  | \tuplet 3/2 4 { <d, bf' f'>8\sustainOn d,( d' f bf d) } <ef, ef'>4(\tweak X-offset -1 \sustainOff <d d'>)
  | \tuplet 3/2 4 { <c c'>8\sustainOn <c, g'>() c' <c g'> c' \clef treble <c g'> } c') <g, c ef>( <f c' d> <g c ef>)\tweak X-offset 2 \sustainOff
  | \clef bass \tuplet 3/2 4 { <f,, c'>8\sustainOn (f' <f c'> f' <f c'> f')} <bf, c g'>4( <af c f>)\tweak X-offset 1 \sustainOff
  | r4 <a, f' c'>4( <bf f' bf> <c ef af!>)
  | <<
    \new Voice {
      \voiceOne af'4. af8( g2)
    }
    \\
    \new Voice{
      \voiceTwo <d f>2( e)
    }
  >>
  | <<
    \new Voice {
      \voiceOne g4 (f) r2
    }
    \\
    \new Voice{
      \voiceTwo <f, c'>2 ( g4 af)
    }
  >>
  | <<
    \new Voice {
      \voiceOne g'2 <gf a>2\arpeggio
    }
    \\
    \new Voice{
      \voiceTwo bf,2\sustainOn <a ef'>\arpeggio\tweak X-offset -1 \sustainOff \sustainOn
    }
  >>
  | <<
    \new Voice {
      \voiceOne <gf' af!>2\arpeggio <f, f'>4_(\sustainOff \sustainOn <bf, bf'>)\sustainOff \sustainOn
    }
    \\
    \new Voice{
      \voiceTwo <af'! ef'>2\arpeggio \sustainOff \sustainOn
    }
  >>
  | \tuplet 3/2 4 { <ef, ef'>8\tweak X-offset -1 \sustainOff \sustainOn ef( ef' bf' ef) r8} r2
  | <<
    \new Voice {
      \voiceOne \tuplet 3/2  {
        \shape #'((0 . 0) (0 . 0) (0 . 0) (-0.3 . -3.5)) Slur
        <ef, ef'>8(\tweak X-offset -2 \sustainOff \sustainOn \clef treble df''\=1_( ff\=2_( } \stemDown <df\=1) ff\=2) g>2.)
    }
    \\
    \new Voice{
      \voiceTwo \omit TupletNumber \tuplet 3/2  { s8  df4} a''4\rest \stemUp c,4( bf)\tweak X-offset 1 \sustainOff
    }
  >>
  | \clef bass <ef,, c'_( ef>2~\sustainOn <ef cf') ef>\tweak X-offset -1 \sustainOff \sustainOn
  | <<
    \new Voice {

      \voiceOne
      \tweak X-offset -1 \sustainOff <ef bf' ef>1\arpeggio
    }
    \\
    \new Voice{
      \voiceTwo s4\sustainOn s2 s4\sustainOff
    }
  >>



  \label #'lastPage
}

titol = "Dia dels morts, Op. 10, n. 8"
subtitol = "Allerseelen"
compositor = "R. Strauss (1864-1949)"
lletrista = "H. von Glim (1812-1864)"
traductor = "Trad. J. Pena (1873-1944)"

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
      \new Voice = "mel_f"  { \set Staff.midiInstrument = "voice oohs" \autoBeamOff \melody_first }
      \new Lyrics \lyricsto mel_f \catala_first
      \new Lyrics \with {
        \override LyricText.font-shape = #'italic
      } \lyricsto mel_f \alemany_first
      % \new Voice = "mel_s" { \autoBeamOff \melody_second }
      % \new Lyrics \lyricsto mel_s \catala_second
      % \new Lyrics \lyricsto mel_s \alemany_second
      \new PianoStaff  <<
        \new Staff = "upper" \with {
          \consists "Span_arpeggio_engraver"
        } \upper
        \new Staff = "lower" \with {
          \consists "Span_arpeggio_engraver"
        } \lower
      >>
    >>
    \layout {
      #(layout-set-staff-size 16.4)
      \context {
        \Staff
        % \RemoveEmptyStaves
        \RemoveAllEmptyStaves
        % \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #1
        % \override VerticalAxisGroup.staff-staff-spacing.basic-distance = #40
        \override VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 0)
           (minimum-distance . 12)
           (padding . 0)
           (stretchability . 0))
        % \override VerticalAxisGroup.staff-staff-spacing.minimum-distance = #10
        % \override VerticalAxisGroup.staff-staff-spacing.stretchability = #2000
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
       (minimum-distance . 10)
       (padding . 0)
       (stretchability . 14))

    last-bottom-spacing =
    #'((basic-distance . 15)
       (minimum-distance . 10)
       (padding . 1)
       (stretchability . 0))
    % markup-system-spacing =
    % #'((minimum-distance . 0))
    system-system-spacing =
    #'((basic-distance . 15)
       (minimum-distance . 12)
       (padding . 0)
       (stretchability . 100))

    % default-staff-staff-spacing =
    % #'((basic-distance . 0)
    %    (minimum-distance . 0)
    %    (padding . 0)
    %    (stretchability . 10))
    annotate-spacing = ##f
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
