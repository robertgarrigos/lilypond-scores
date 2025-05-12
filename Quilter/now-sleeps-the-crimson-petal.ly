\version "2.25.14"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key f \major
  \time 3/4
  \tempo "Moderato quasi andantino tempo rubato"
  \set Score.tempoHideNote = ##t
  \tempo 4=60

}


melody_first = \relative c'' {
  \clef treble
  \global
  | R2.
  | R2.
  | R2. \time 5/4
  | r8 a^\p bf c d c a bf c8. a16 \time 3/4
  | f4~ f8 r r4 \time 5/4
  | r8 f' e d d a a d d c \time 3/4
  | bf4 ~ bf8 r8 r4 \time 5/4
  | r8 c c8. c16 a8 f d e f a \time 3/4
  | c2 r8 c16 c \time 5/4
  | f8 e d4 d, r4 a'8 g \time 3/4
  | c2 e,4^\>
  | f4~ f8\! r8 r4
  | R2.
  | R2. \time 5/4
  | r8 a^\pp bf c d c a bf c a \time 3/4
  | f4~ f8 r r4 \time 5/4
  | r8 f' e d c d a a bf c \time 3/4
  | d,4~ d8 r r4 \time 5/4
  | r8 c' c c d c  a f f a \time 3/4
  | c2 c4 \time 5/4
  | \tuplet 3/2 {f8 ^\markup {\dynamic pp \italic "ad lib."} e d} d4 d, r4 a'8 g \time 3/4
  | c4~ c8 r d,4
  | bf'2 a4
  | c2.~
  | c8 r r4 r4
  | R2.
  | R2. \bar "|."

}

% melody_second = \relative c'' {
%   \clef treble
%   \global

%   a b c d
% }

catala_first = \lyricmode {
  S'a -- dorm el pè -- tal roig, tam -- bé el blanc;
  ja no~es be -- llu -- ga cap xi -- pré~al ca -- mí;
  no fa l'u -- llet l'a -- le -- ta de l'es -- tany:
  la llu -- er -- na s'al -- ça: al -- ça't doncs amb mi.

  El lli -- ri ple -- ga to -- ta sa dol -- çor,
  suau -- ment da -- va -- lla~al fons de l'es -- ta -- nyol;
  ple -- ga't tam -- bé~es -- ti -- ma -- da i a -- ma -- ra't
  en el meu pit __ _ i __ _ fon i fon -- te~en mi.
}

alemany_first = \lyricmode {
Now sleeps the crim -- son pe -- tal, now the white;
Nor waves the cy -- press in the pa -- lace walk;
Nor winks the gold fin in the por -- ph'ry font:
The __ _ fire -- fly wa -- kens: wa -- ken thou with me.

Now folds the li -- ly all her sweet -- ness up,
And slips in -- to the bo -- som of the lake:
So fold thy -- self, my dea -- rest, thou, and slip __ _
In -- to my bo -- som and be lost be lost in me.
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


  | <<
    { r8 f(\< g a c a'\! | g f e f e d) }
    \\
    { s2. | a2 <f a>4 }
  >>
  | <<
    { g8( a\> bf4. a8)\! }
    \\
    { <d, f>2 e4 }
  >>
  | r8 <a, c f>8 (<bf d g>\< <c e a> <d f bf>\! <c e a> <a d f>\> <bf d g> <c e a>4\!)
  | <<
    {  <c c'> c'8( bf f'4~)}
    \\
    { \once \override NoteColumn.force-hshift = 1.5 f,8 e < d f>4 bf'~ }
  >>
  <<
    { f'8 f( e d a' f e d c4) }
    \\
    { bf2 a a4 }
  >>
  |<<
    { bf4 r4 r4 }
    \\
    { \shape #'((0 . 0) (0.5 . 0) (1 . 0) (0 . 0)) Slur a8( g f!4 \grace { \stemUp \shape #'((0 . 0) (-0.5 . 0) (-0.5 . 0) (-0.5 . 0)) Slur g16\=2( a} \stemNeutral  g4\=2) ) }
  >>
  | <<
    { <c, e a>2 <f a> <f a>4 }
    \\
    { s2 d4( c b) }
  >>
  |<<
    { c'8( f c2) }
    \\
    { f,4(\< <d f> <e g>)\! }
  >>
  | <<
    { f'4\f bf8 ( [a g f] d [bf a g]) }
    \\
    { <f a>4 <bf d f>2 r4 r4}
  >>
  | f8 d~ <g, bf d f>4\> <g bf e>\! \clef bass
  | <<
    { r8 f(\<_\markup {\italic "con passione"} g a \clef treble c a' | g f e f e'\!\f d) }
    \\
    { s2. | <a, d>2 <f' a>4 }
  >>
  | <<
    { g8( a\> bf4. a8)\! }
    \\
    { <d, f>2 e4 }
  >>
  | r8 <a, c f>8 (<bf d g>\< <c e a> <d f bf>\! <c e a> <a d f>\> <bf d g> <c e a>4\!)
  | <<
    {  <c c'> c'8( bf f'4~)}
    \\
    { \once \override NoteColumn.force-hshift = 1.5 f,8 e < d f>4 bf'~ }
  >>
  <<
    { f'8 f( e d c4 c bf8 a) }
    \\
    { bf4 bf a g fs }
  >>
  | <<
    { d4~ d8 g( e' d }
    \\
    { c,8 bf s8 g'~g4 }
  >>
  | <<
    { \stemDown <a c>2) \stemNeutral <f a>4 <f a>2 }
    \\
    {
      s2 d8(\< c \after 8 \> b2) <>\!
    }
  >>
  | <<
    { c'8( f c2) }
    \\
    { f,4 <d f>8(\< <ds fs>\> <e g>4) <>\! }
  >>
  | <<
    { f'4 bf8( a g f d bf) a g }
    \\
    { <f! a>4 <bf d f>2 r4 r4 }
  >>
  | f8( ef d2)
  | <<
    { \tuplet 3/2 { d8 (ds e! } bf'4 a) }
    \\
    { <g, bf>4\< <d'! e>\> <c e>\!}
  >>
  | <<
    { g'8( f g\< a c d\!) }
    \\
    { <a, ef'>2 <ef' g>4}
  >>
  | <<
    { <f f'>2 <g bf g'>4\> | \stemDown <a c f a>4\arpeggio  \stemNeutral <a, c>2\!}
    \\
    { \once \override NoteColumn.force-hshift = 1.5  c'8( bf c d \once \override NoteColumn.force-hshift = 1.5  e!4) | s2. }
  >>
  | <a,, c>2.

}

lower = \relative c' {
  \clef bass
  \global

  | <<
    { <a c>2.^\mf }
    \\
    { f2 e4 }
  >>
  | <d a' f'>2 <g b>4
  | <<
    { bf! g c }
    \\
    { c,2. }
  >>
  | <f, c'>2^\p r4 r4 r4
  | a bf \tuplet 3/2 { g8( d' bf' } | d4) e8 f
  <<
    { d2 d4 }
    \\
    { f,2 fs4 }
  >>
  | <g d'>4 <bf d>2
  | r2 r4 d, <g, d'>
  | <<
    { a'( g bf!) }
    \\
    { c, c2 }
  >>
  | <d a'>4 <g~ d'~ f~>2 <g d' f>4 r4
  | <c, a'> <c, c'>2
  | <<
    { c'2. }
    \\
    { f,2 e4 }
  >>
  | <d d'>2 <g d' b'>4\arpeggio
  |<<
    { bf' g c }
    \\
    { c,2. }
  >>
  | <f, c'>2^\p r4 r4 r4
  | a bf \tuplet 3/2 { g8( d' bf' } | d4)
  <<
    { c8 e f4 ef c }
    \\
    { g4 <a~ c>8 <a d> a4 d, }
  >>
  | <g, d'>4.
  <<
    { d''8~( d e | \stemDown <a, c f>2) }
    \\
    { bf,8~ bf4 }
  >>
  \stemNeutral d4 <g, d' a'>2
  | <<
    { a'4 g8( a bf4) }
    \\
    { c,4 c2 }
  >>
  | <d a'>4^\pp <g~ d'!~ f~>2 <g d' f>4 r4
  | <<
    { a8() g fs2) }
    \\
    { c2. }
  >>
  | <c, c'>2 c'4
  | <f, c'>2 <f f'>4
  | <<
    { s2 df''8( c) }
    \\
    { <f, d'>2 f4}
  >>
  | <f c'>4\sustainOn \after 4. \sustainOff <f, c'>2
  | <f c'>2.

  \label #'lastPage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% PDF %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  % \bookOutputSuffix ""
  \header {
    title = "Now sleeps the crimson petal, Op. 3, n. 2"
    subtitle = "S'adorm el pètal roig"
    composer = "Roger Quilter (1877-1953)"
    arranger = "Alfred Tennyson (1809-1892)"
    poet = "Trad. Robert Garrigós"
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
