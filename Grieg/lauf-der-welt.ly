\version "2.24.3"
\language "english"

% #(set-global-staff-size 17)
data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))






global = {
  % \overrideTimeSignatureSettings
  % 2/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 1,1        % beatStructure
  % #'()       % beamExceptions
  \key d \major
  \time 2/4
  \tempo "Allegro leggiero"
  \set Score.tempoHideNote = ##t
  \tempo 4=98
  \set PianoStaff.connectArpeggios = ##t

}


melody = \relative c' {
  \clef treble
  \global

  | R2
  | r4 r8 fs8^\pp
  | fs d fs a
  | fs d fs a
  | a fs a cs
  | a4. a8
  | b16 [a] g [a] b [a] b [d]
  | b8 b16 [a] b8 g16 [a]
  | b16 [a] g [a] b [a] b [d]
  | b4.^\< e8
  | e8^>\! cs cs b
  | b e,^\< e e'
  | e8^>\! cs cs b
  | b e, e4
  | R2
  | r4 b'
  | b8^\markup { \italic "poco rit."} g b fs'
  | \grace {e16\=1( [fs]} e4.\=1) d8
  | d2~^\markup {\italic "a tempo"}
  | d4 r4
  | R2
  | r4 r8 fs,
  | fs d fs b
  | fs d fs b
  | d4. cs8
  | cs8. b16 b4
  | R2
  | r4 r8 g
  | g e g cs
  | g^\markup {\italic "cresc."} e g cs
  | e4. d8
  | d8. cs16 cs4
  | R2
  | R2
  | r4 ef^\pp
  | ef8. ef16 ef4
  | r4 e!
  | e8. e16 e4
  | r4 ef^\markup {\italic "poco cresc."}
  | ef8. ef16 ef4
  | r4 e!^\<
  | e e
  | e2~\!^\f
  | e2~^\>
  | e4 r4\!
  | R2
  | R2
  | r4 r8 fs,8^\pp
  | fs d fs a
  | fs d fs a
  | a fs a cs
  | a4. a8
  | b16 [a] g [a] b [a] b [d]
  | b8 b16 [a] b8 g16 [a]
  | b16 [a] g [a] b [a] b [d]
  | b4.^\< e8
  | e8^>\! cs cs b
  | b e,^\< e e'
  | e8^>\! cs cs b
  | b (e,) e4
  | R2
  | r4 b'
  | b8 g b fs'
  | \grace {e16\=1( [fs]}^\markup { \italic "poco rit."} e4.\=1) (d8)
  | d2~^\markup {\italic "a tempo"}
  | d4 r4
  | R2
  | R2
  | R2
  | R2

}

catala = \lyricmode {
  Els ves -- pres sur -- to tot con -- tent
  a -- munt pel verd ca -- mí.
  I e -- lla des del seu jar -- dí
  es -- guar -- da~el meu pas -- seig.
  No hem cre -- uat en -- ca -- ra~un mot,
  no~ens cal res més, ai -- xí~és l'a -- mor,
  no~ens cal res més, ai -- xí~és l'a -- mor.

  No sé pas com s'es -- de -- vin -- gué:
  un jorn la vaig be -- sar,
  sen -- se per -- mís, no va dir sí,
  tam -- poc em va~a -- tu -- rar.
  Un bes a -- llà, un bes a -- quí,
  ens dei -- xem fer, quin gran pla -- er.

  L'o -- reig fes -- te -- ja~el ro -- se -- ret,
  no~es -- pe -- ra mai a -- mor.
  La flor de la ro -- sa -- da beu
  mes mai no li diu: vés!
  L'es -- tim de cor, m'es -- tim de ver,
  però mai di -- em: t'es -- ti -- mo!
  però mai di -- em: t'es -- ti -- mo!
}

alemany = \lyricmode {
  An je -- dem A -- bend geh' ich aus
  Hin -- auf den Wie -- sens -- teg.
  Sie schaut aus ih -- rem Gar -- ten -- haus,
  es ste -- het hart am Weg.
  Wir ha -- ben uns noch nie bes -- tellt,
  es ist nur so der Lauf del Welt,
  es ist nur so der Lauf del Welt.

  Ich weiß nicht, wie es so ges -- chah,
  seit lan -- ge küss' ich sie,
  Ich bit -- te nicht, sie sagt nicht: ja!
  Doch sagt sie: nein! auch nie.
  Wenn Lip -- pe gern auf Lip -- pe ruht,
  wir hin -- dern's nicht, uns dünkt es gut.

  Das Lüft -- chen mit der Ro -- se spielt,
  es fragt nicht: hast mich Lieb.
  Das Rös -- chen sich am Ta -- ue kühlt,
  es sagt nicht lan -- ge: gib!
  Ich lie -- be sie, sie lie -- bet mich,
  doch kei -- nes sagt: ich lie-be dich!
  doch kei -- nes sagt: ich lie-be dich!
}

upper = \relative c' {
  \clef treble
  \global

  | R2
  | r4 r8 <d fs>16(_\pp <cs a'>16
  | <d fs>8) <d fs>16( <cs a'>16 <d fs>8) <d fs>16( <cs a'>16
  | <d fs>8) <d fs>16( <cs a'>16 <d fs>8) <fs a>16( <e cs'>16
  | <fs a>8) <fs a>16( <e cs'>16 <fs a>8) <fs a>16( <e cs'>16
  | <fs a>4.) <fs a>8
  | <g b>16 <d a'> <b g'> <d a'> <g b> <d a'> <g b> d'
  | <g, b>8 <g b>16( <d a'> <g b>8) <b, g'>16 <d a'>
  | <g b> < d a'> <b g'> <d a'> <g b> <d a'> <g b> d'
  | <g, b>4.\< <a cs e>8
  | <a cs e>_.\!_> <e a cs>_. <e a cs>_. <e g b>_.
  | <e g b>_. <g, b e>_. <g b e>_. <a' cs e>_.
  | <a cs e>_._> <e a cs>_. <e a cs>_. <e g b>_.
  | <e g b> <g, b e> <g b e>4
  | <e' g b>2^(
  | <ds fs b>)
  | <d! g b>_\markup {\italic "poco rit."}
  | <g, cs g' b>\arpeggio
  | r8 <d' fs>16 (a') r8 <d, fs>16 (a')
  | r8 <d, fs>16 (a') r8 <d, fs>16 (a')
  | r8 <d, fs>16 (as') r8 <d, fs>16 (as')
  | r8 <d, fs>16 (as') r8 <d, fs>16 (as')
  | r8 <d, fs>16 (b') r8 <d, fs>16 (b')
  | r8 <d, fs>16 (b') r8 <d, fs>16 (b')
  | r8 <d, g>16 (b') r8 <d, g>16 (b')
  | r8 <d, g>16 (b') r8 <d, g>16 (b')
  | <<
    {d4.^> cs8}
    \\
    {r8 d,16 (g) r8 d16 (g)}
  >>
  | <<
    {cs8. b16 b4}
    \\
    {r8 d,16 (g) r8 d16 (g)}
  >>
  | r8 <e g>16 (cs') r8 <e, g>16 (cs')
  | r8 <e, g>16 (cs') r8 <e, g>16 (cs')
  | r8 <e, g>16 (cs') r8 <e, g>16 (cs')
  | r8 <e, g>16 (cs') r8 <e, g>16 (cs')
  | <<
    {e4.^> d8}
    \\
    {r8 d,16 (g) r8 d16 (g)}
  >>
  | <<
    {d'8. cs16 cs4}
    \\
    {r8 d,16 (g) r8 d16 (g)}
  >>
  |r8 <ef df'>16 (<g ef'>) r8 <ef df'>16 (<g ef'>)
  |r8 <ef df'>16 (<g ef'>) r8 <ef df'>16 (<g ef'>)
  |r8 <e! cs'!>16 (<g e'!>) r8 <e cs'>16 (<g e'>)
  |r8 <e cs'>16 (<g e'>) r8 <e cs'>16 (<g e'>)
  |r8 <ef df'>16 (<g ef'>) r8 <ef df'>16 (<g ef'>)
  |r8 <ef df'>16 (<g ef'>) r8 <ef df'>16 (<g ef'>)
  |r8 <e! cs'!>16 (<g e'!>) r8 <e cs'>16 (<g e'>)
  |r8 <e b'>16 (<g e'>) r8 <e b'>16 (<g e'>)
  |r8 <e a>16 (<g e'>) r8 <e a>16 (<g e'>)
  |r8 <e a>16 (<g e'>) r8 <e a>16 (<g e'>)
  |r8 <cs, a'>16 (<g' b>) r8 <cs, a'>16 (<g' b>)
  |r8 <cs, a'>16 (<g' b>) r8 <cs, a'>16 (<g' b>)
  | R2
  | r4 r8 <d fs>16(_\pp <cs a'>16
  | <d fs>8) <d fs>16( <cs a'>16 <d fs>8) <d fs>16( <cs a'>16
  | <d fs>8) <d fs>16( <cs a'>16 <d fs>8) <fs a>16( <e cs'>16
  | <fs a>8) <fs a>16( <e cs'>16 <fs a>8) <fs a>16( <e cs'>16
  | <fs a>4.) <fs a>8
  | <g b>16 <d a'> <b g'> <d a'> <g b> <d a'> <g b> d'
  | <g, b>8 <g b>16( <d a'> <g b>8) <b, g'>16 <d a'>
  | <g b> < d a'> <b g'> <d a'> <g b> <d a'> <g b> d'
  | <g, b>4.\< <a cs e>8
  | <a cs e>_.\!_> <e a cs>_. <e a cs>_. <e g b>_.
  | <e g b>_. <g, b e>_. <g b e>_. <a' cs e>_.
  | <a cs e>_._> <e a cs>_. <e a cs>_. <e g b>_.
  | <e g b> <g, b e> <g b e>4
  | <e' g b>2^(
  | <ds fs b>)
  | <d! g b>
  | <g, cs g' b>\arpeggio
  | r8 <d' fs>16( <cs a'>16 <d fs>8) <d fs>16( <cs a'>16
  | <d fs>8) <d fs>16( <cs a'>16 <d fs>8) <d fs>16( <cs a'>16
  | <d fs>2~)
  | <d fs>4 r4
  | R2
  | R2
}

lower = \relative c {
  \clef bass
  \global

  | d,8_.^\pp_\markup { \italic "con Ped."} a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  %5
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  %10
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  %15
  | R2
  | b'2
  | e,
  | <a,, a'>\arpeggio
  | d'8^.^\markup {\italic "a tempo"} a'^. d,^. a'^.
  | d,8^. a'^. d,^. a'^.
  | cs,^.^\< fs^. cs^. fs^.
  | cs^.\! fs^.^\> cs^. fs^.
  | b,^.\! fs'^. b,^. fs'^.
  | b,^. fs'^. b,^. fs'^.
  | b,^. g'^. b,^. g'^.
  | b,^. g'^. b,^. g'^.
  | b,8 g'16 (b b,8) g'16 (b
  | b,8) g'16 (b b,8) g'16 (b
  | b,8^.) g'^. b,^. g'^.
  | b,^.^\markup {\italic "cresc."} g'^. b,^. g'^.
  | b,^. g'^. b,^. g'^.
  | b,^. g'^. b,^. g'^.
  | b,8 g'16 (cs b,8) g'16 (cs
  | b,8) g'16 (cs b,8) g'16 (cs
  | bf,8)^\pp g'16 (df' bf,8) g'16 (df'
  | bf,8) g'16 (df' bf,8) g'16 (df'
  | a,8) g'16 (cs! a,8) g'16 (cs
  | a,8) g'16 (cs a,8) g'16 (cs
  | bf,8) g'16 (df' bf,8)^\markup {\whiteout \italic "poco cresc."} g'16 (df'
  | bf,8) g'16 (df' bf,8) g'16 (df'
  | a,8) g'16^\< (cs! a,8) g'16 (cs
  | a,8) g'16 (d' a,8) g'16 (d'\!
  | a,8)^\f g'16 (cs a,8) g'16 (cs
  | a,8)^\> g'16 (cs a,8) g'16 (cs
  | d,,8)\!^\markup {\italic "dim."} a'16 (e' d,8) a'16 (e'
  | d,8) a'16 (e' d,8) a'16 (e'
  | d,8_.)^\pp a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | R2
  | b'2
  | e,
  | <a,, a'>\arpeggio^\markup {"poco rit."}
  | d8_.^\markup {\italic "a tempo"} a'_. d,_. a'_.
  | d,8_.^\> a'_. d,_. a'_.
  | d,8_.\!^\markup {\italic "poco rit."} a'_. d,_. a'_.
  | d,8_. a'_. d,_. a'_.
  | d,2~^\pp
  | d4 r4 \bar "|."

  \label #'lastPage
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% REMARKABLE %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \bookOutputSuffix "remarkable"
  \header {
    title = "Lauf der Welt, Op. 48, nº 3"
    subtitle = "Així és l'amor"
    composer = "E. Grieg (1843-1907)"
    arranger = "J. L. Uhland (1787 - 1862)"
    % instrument = "localinstrument"
    % meter = "localmetre"
    % opus = "localopus"
    % piece = "localpiece"
    poet = "Trad. Robert Garrigós i Gemma Aïsa"
    tagline = ##f
  }
  \score {
    <<
      \new Voice = "mel" { \autoBeamOff \melody }
      \new Lyrics \lyricsto mel \catala
      \new Lyrics \lyricsto mel \alemany
      \new PianoStaff <<
        \new Staff = "upper" \upper
        \new Staff = "lower" \lower
      >>
    >>
    \layout {
      #(layout-set-staff-size 17)
      \context { \Staff \RemoveEmptyStaves }
    }
    \midi { }
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
       (stretchability . 12))
    markup-system-spacing =
    #'((minimum-distance . 20))
    system-system-spacing =
    #'((minimum-distance . 15))
    % annotate-spacing = ##t

  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% PDF %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  % \bookOutputSuffix ""
  \header {
    title = "Lauf der Welt, Op. 48, nº 3"
    subtitle = "Així és l'amor"
    composer = "E. Grieg (1843-1907)"
    arranger = "J. L. Uhland (1787 - 1862)"
    % instrument = "localinstrument"
    % meter = "localmetre"
    % opus = "localopus"
    % piece = "localpiece"
    poet = "Trad. Robert Garrigós i Gemma Aïsa"
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
      \new Voice = "mel" { \autoBeamOff \melody }
      \new Lyrics \lyricsto mel \catala
      \new Lyrics \lyricsto mel \alemany
      \new PianoStaff <<
        \new Staff = "upper" \upper
        \new Staff = "lower" \lower
      >>
    >>
    \layout {
      #(layout-set-staff-size 17)
      \context { \Staff \RemoveEmptyStaves }
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
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
    markup-system-spacing =
    #'((minimum-distance . 20))
    system-system-spacing =
    #'((minimum-distance . 15))
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
