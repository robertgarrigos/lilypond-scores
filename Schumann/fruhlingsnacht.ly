\version "2.25.14"
\language "english"

data = #(strftime "%d-%m-%Y - %H:%M:%S" (localtime (current-time)))


global = {
  % \overrideTimeSignatureSettings
  % 4/4        % timeSignatureFraction
  % 1/4        % baseMomentFraction
  % 2,2        % beatStructure
  % #'()       % beamExceptions
  \key fs \major
  \time 2/4
  \tempo "Molt ràpid. Apassionat."
  \set Score.tempoHideNote = ##t
  \tempo 4=66
  % \set PianoStaff.connectArpeggios = ##t

}


melody_first = \relative c' {
  \clef treble
  \global

  | r4 r8 fs16^\p e
  | ds8. ds16 ds ([fss as]) cs
  | cs8 b r4
  | es,8. es16 es gss bs ds
  | cs4 r8 ds16 as
  | b!8 b as8. es16
  | fs8 fs r4
  | as8. ds,16 ds ds^.^\(^\markup {\italic ritard.} es^. fs^.\)
  | es4 r4
  | as8.^\p as16 as as as as
  | b8 b r8 b16 b
  | as8. as16 b( as gs) fs
  | \appoggiatura fs8 b4 r8 b16 b
  | bs( cs) cs8 css8. css16
  | css8 ds r8 ds16 ds
  | ds4~ ds16^\markup {\italic ritard.} ds fs16. es32
  | cs4 r4
  | r4 r8 fs,16 e
  | ds8. ds16 ds16([cs'8]) cs16
  | cs8 b r8 gs16 fs
  | es!8. es16 es([ gss bs]) ds
  | cs4 r8 ds16 as
  | b!8. b16 b([ cs8]) gs16
  | as8 as4 es'16 ds
  | cs4~ cs16 css ds cs
  | fs,4 r4
  | R2
  | R2
  | R2
  | R2
  | R2 \bar "|."
}

% melody_second = \relative c'' {
%   \clef treble
%   \global

%   a b c d
% }

catala_first = \lyricmode {
  So -- bre~els prats, cre -- uant per l'ai -- re,
  veig les aus del lluny ve -- nint,
  ja la pri -- ma -- ve -- ra flai -- ra,
  ja la pra -- da va flo -- rint.

  Jo de goig plo -- rar vol -- dri -- a
  puix m'a -- par que~és som -- ni meu;
  me -- ra -- ve -- lla ço se -- ri -- a;
  de la llu -- na~el raig ho féu.

  La ce -- lís -- ti~a~ho diu ra -- dian -- ta
  i la pra -- da~al lluny ho duu
  i tot ro -- ssi -- nyol ho can -- ta:
  ˝e -- lla~és te -- va,~e -- lla~és per tu!˝
}

alemany_first = \lyricmode {
  Ü -- ber'n Gar -- ten durch die Lüf -- te
  hört' ich Wan -- der -- vö -- gel ziehn,
  das be -- deu -- tet Früh -- lings -- düf -- te,
  un -- ten fängt's schon an zu blühn.

  Jauch -- zen möcht' ich, möch -- te wei -- nen,
  ist mir's doch, als könnt's nicht sein!
  Al -- te Wun -- der wie -- der schei -- nen
  mit dem Mon -- des -- glanz her -- ein.

  Und der Mond, die Ster -- ne sa -- gen's,
  und im Träu -- men rauscht's der Hain,
  und die Nach -- ti -- gal -- len schla -- gen's:
  ˝Sie ist dei -- ne! Sie ist dein!˝
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

  | \tupletUp \tuplet 3/2 8 { r16\p <cs as'> <cs as'> <cs as'> [<cs gs'> <cs gs'>] <cs gs'> [<cs fs> <cs fs>] <cs fs> <cs e> <cs e>}
  \omit TupletNumber
  | \tuplet 3/2 8 { r16 <cs ds>\< <cs ds> <cs ds> [<cs ds> <cs ds>] <cs ds> <cs ds> <cs ds> <cs ds> [<cs ds> <cs ds>]\! }
  | \tuplet 3/2 8 { r16 <ds b'>\< <ds b'> <ds b'> [<ds as'> <ds as'>] <ds as'> <ds gs> <ds gs> <ds gs> [<ds fs> <ds fs>]\! }
  | \tuplet 3/2 8 { r16 <ds es>\< <ds es> <ds es> [<ds es> <ds es>] <ds es> <ds es> <ds es> <ds es> [<ds es> <ds es>]\! }
  | \tuplet 3/2 8 { r16 <es bs' cs> <es bs' cs> <es bs' cs> [<es as cs> <es as cs>] r16\< <ds as' ds> <ds as' ds> <ds as' ds> [<ds as' ds> <ds as' ds>]\! }
  | \tuplet 3/2 8 { r16 <ds as' b!> <ds as' b> <ds as' b>[ <ds gs b> <ds gs b>] r16\< <css gs' as> <css gs' as> <css gs' as>[ <css gs' as> <css gs' as>]\!}
  | \tuplet 3/2 8 { r16 <ds fs as> <ds fs as> <ds fs as> [<ds fs as> <ds fs as>] <ds fs as>( cs!) <cs fs as><cs fs as> [<cs fs as> <cs fs as>]}
  | \tuplet 3/2 8 { r16 <bs fs' as> <bs fs' as> <bs fs' as>[ <bs fs' as> <bs fs' as>] } \autoBeamOff <bs fs' as> <bs d>^.(_\markup {\italic ritard. }<bs es>^. <bs fs'>^.) \autoBeamOn
  | \tuplet 3/2 8 { r16 <gs es'>\<^\markup {\italic "Im Tempo"} <gs es'> <gs es'>[ <gs ds'> <gs ds'>] <gs ds'> <gs cs> <gs cs> <gs cs>\!\>[ <es b'> <es b'>]\!}
  | <<
    { b'16\rest\p as(\< ds cs bs as gs fs\! }
    \\
    { s16 fs8.~ fs4 }
  >>
  | <<
    { b8) as'16([ gs] fs es ds cs | as16) as( ds cs b as gs fs | b8) as'16([ gs] fs es ds cs)}
    \\
    { fs,16( es) r8 r4 | r16 fs8.~ fs4 | fs16( es) r8 r4}
    \\
    { \stemDown b'2 \stemNeutral | s2 | \stemDown b2 \stemNeutral}
  >>
  | \tuplet 3/2 8 { r16 <bs, bs'>16\< <bs bs'> r <cs cs'> <cs cs'> r <css gs'! css> <css gs' css> <css gs' css>[ <css gs' css> <css gs' css>]\!}
  | \tuplet 3/2 8 { r16 <ds fs ds'> <ds fs ds'> <ds fs ds'>[ <ds fs ds'> <ds fs ds'>] r16 <es gs ds' es> <es gs ds' es> <es gs ds' es>[ <es gs ds' es> <es gs ds' es>]}
  | \tuplet 3/2 8 { r16 <gs ds' fs> <gs ds' fs> <gs ds' fs>[ <gs ds' fs> <gs ds' fs>]} \autoBeamOff <gs ds' fs>  <ds' fs>^.(_\markup {\italic ritard. } <fs as>^. <es gs>^.)\autoBeamOn
  | \tuplet 3/2 8 { r16 <gs, cs es>[\<^\markup {\italic "Im Tempo"} <gs cs es>] <gs cs es> <gss bs fs'> <gss bs fs'> <gss bs fs'>[ <as cs fss> <as cs fss>] <as cs fss> <b cs gs'!> <b cs gs'>}\!
  | \tuplet 3/2 8 { r16 <cs as'>\< <cs as'> <cs as'>[ <cs gs'> <cs gs'>] <cs gs'> <cs fs> <cs fs> <cs fs>[ <cs e> <cs e>]}\!
  | \tuplet 3/2 8 { r16 <cs ds>\< <cs ds> <cs ds>[ <cs ds> <cs ds>] <cs ds> <cs ds> <cs ds> <cs ds>[ <cs ds> <cs ds>]\! }
  | \tuplet 3/2 8 { r16 <ds b'>\< <ds b'> <ds b'>[ <ds as'> <ds as'>]\! <ds as'>\>[ <ds gs> <ds gs>] <ds gs> <ds fs> <ds fs>\!}
  | \tuplet 3/2 8 { r16 <ds es!>[\< <ds es>] <ds es> <ds es> <ds es>  <ds es> <ds es> <ds es> <ds es>[ <ds es> <ds es>]\! }
  | \tuplet 3/2 8 { r16 <es as cs>[ <es as cs>] <es as cs> <es as cs> <es as cs> r16\f <ds as' ds>[ <ds as' ds>] <ds as' ds> <ds as' ds> <ds as' ds> }
  | \tuplet 3/2 8 { r16 <ds gs b!>[ <ds gs b>] <ds gs b> <ds gs b> <ds gs b> r16\f <cs gs' b>[ <cs gs' b>] <cs gs' b> <cs gs' b> <cs gs' b>  }
  | <<
    { \voiceOne s16\f \once \override NoteColumn #'ignore-collision = ##t cs(\< b' as gs fs es ds)\! }
    \\
    { \voiceTwo b16\rest \once \override NoteColumn #'ignore-collision = ##t cs8.~ cs8 r8  }
  >>
  | \tuplet 3/2 8 { r16 <fs, cs'>[\< <fs cs'>] <fs cs'> <fs cs'> <fs cs'> } \autoBeamOff <fs cs'>\! <fs css'>_.(\f <fs ds'>_. <es cs'>_.) \autoBeamOn
  | <<
    { fs2^>~ | fs4 \tuplet 3/2 8 { r16 <b, gs'> <b gs'> r16 <b gs'> <b gs'> } }
    \\
    { \tuplet 3/2 8 { r16 <as e'>[ <as e'>] <as e'> <as e'> <as e'> <as e'> <as e'> <as e'> <as e'>[ <as e'> <as e'>] | <b e>[^\< <b e> <b e>] <b ds> <b ds> <b ds>\!} \autoBeamOff ds8_> <cs es>8 \autoBeamOn }
  >>
  | <<
    { fs2~ | fs2~ | fs4 \once \override Slur.positions = #'(2 . 0) fs_~( | <fs fs'>4) b4\rest }
    \\
    { \tuplet 3/2 8 { r16 <as, cs>[ <as cs>] <as cs> <as cs> <as cs>  <as cs> <as cs> <as cs> <as cs>[ <as cs> <as cs>] | <as cs> <as cs> <as cs> <as cs>[ <as cs> <as cs>]^\markup {\italic ritard.} <as cs> <as cs> <as cs> <as cs>[ <as cs> <as cs>]} | <as cs>4 as~\p | as s4 }
  >>


}

lower = \relative c {
  \clef bass
  \global

  | \tuplet 3/2 8 { fs16 \clef treble <cs' as'> [<cs as'>] <cs as'> <cs gs' as> <cs gs' as> <cs gs' as> [<cs fs as> <cs fs as>] <cs fs as> <cs e as> <cs e as>}
  \omit TupletNumber
  | \clef bass \tuplet 3/2 8 { fss,16  \clef treble <cs' ds as'> [<cs ds as'>] <cs ds as'> [<cs ds as'> <cs ds as'>] <cs ds as'> <cs ds as'> <cs ds as'> <cs ds as'> [<cs ds as'> <cs ds as'>] }
  | \clef bass \tuplet 3/2 8 { gs \clef treble <ds' b'> [<ds b'>] <ds b'> [<ds as' b> <ds as' b>] <ds as' b> <ds gs b> <ds gs b> <ds gs b> [<ds fs b> <ds fs b>]}
  | \clef bass \tuplet 3/2 8 { gss,16 \clef treble <ds' es! bs'>[ <ds es bs'>] <ds es bs'> <ds es bs'> <ds es bs'> <ds es bs'> <ds es bs'> <ds es bs'> <ds es bs'> [<ds es bs'> <ds es bs'>] }
  | \clef bass \tuplet 3/2 8 { as16 \clef treble <es' bs' cs>[ <es bs' cs>] <es bs' cs> <es as cs> <es as cs> \clef bass fss, \clef treble <ds' as' cs>[ <ds as' cs>] <ds as' cs>[ <ds as' cs> <ds as' cs>] }
  | \clef bass \tuplet 3/2 8 { gs, \clef treble <ds' as' b!>[ <ds as' b>] <ds as' b> [<ds gs b> <ds gs b>] \clef bass es, \clef treble <css' gs' as>[ <css gs' as>] <css gs' as>[ <css gs' as> <css gs' as>]}
  | \clef bass \tuplet 3/2 8 { ds, \clef treble <ds' fs as>[ <ds fs as>] <ds fs as>[ <ds fs as> <ds fs as>] <ds fs as>( cs) <cs fs as> <cs fs as> [<cs fs as> <cs fs as>] }
  | \clef bass \tuplet 3/2 8 { gs \clef treble <bs fs' as>[ <bs fs' as>] <bs fs' as>[ <bs fs' as> <bs fs' as>]} \autoBeamOff <bs fs' as> <fs' gs>_.( <es gs>_. <ds fs>_.) \autoBeamOn
  | \clef bass \tuplet 3/2 8 { cs, <cs' es>[ <cs es>] <cs es>[ <b! es> <b es>] <b es> <as es'> <as es'> <as es'>[ <gs cs> <gs cs>]}
  | \tuplet 3/2 8 { fs,\sustainOn <cs' cs'>[ <cs cs'>] <cs cs'>[ <cs cs'> <cs cs'>] <cs cs'> <cs cs'> <cs cs'> <cs cs'>[ <cs cs'> <cs cs'>]\sustainOff}
  | \tuplet 3/2 8 { gs\sustainOn <cs cs'>[ <cs cs'>]^\< <cs cs'>[ <cs cs'> <cs cs'>] <cs cs'> <cs cs'> <cs cs'> <cs cs'>[ <cs cs'> <cs cs'>]\!\sustainOff }
  | \tuplet 3/2 8 { gs\sustainOn <cs cs'>[ <cs cs'>]^\< <cs cs'>[ <cs cs'> <cs cs'>] <cs cs'> <cs cs'> <cs cs'> <cs cs'>[ <cs cs'> <cs cs'>]\!\sustainOff }
  | \tuplet 3/2 8 { gs\sustainOn <cs cs'>[ <cs cs'>]^\< <cs cs'>[ <cs cs'> <cs cs'>] <cs cs'> <cs cs'> <cs cs'> gs[ <cs cs'> <cs cs'>]\!\sustainOff }
  | \tuplet 3/2 8 { gss <cs cs'>[ <cs cs'>] as <cs cs'>[ <cs cs'>] r16 <css gs'! css>[ <css gs'! css>] as <css gs'! css>[ <css gs'! css>]}
  | \tuplet 3/2 8 { b!16 <ds fs ds'> <ds fs ds'> <ds fs ds'>[ <ds fs ds'> <ds fs ds'>] r16 <es gs ds'> <es gs ds'> <es gs ds'>[ <es gs ds'> <es gs ds'>]}
  | \tuplet 3/2 8 { bs^\sf <gs' ds' fs> <gs ds' fs> <gs ds' fs> [ <gs ds' fs> <gs ds' fs>]} \autoBeamOff <gs ds' fs> \clef treble <ds' fs>_.(<fs as>_. <es gs>_.) \clef bass \autoBeamOn
  | \tuplet 3/2 8 { cs, <cs' es> <cs es> <cs es>[ <cs ds> <cs ds>] <cs ds> [<cs dss> <cs dss>] <cs dss>[ <cs es> <cs es>]}
  | \tuplet 3/2 8 { <fs,,! fs'!>^\sf \clef treble <cs'' as'>[ <cs as'>] <cs as'> <cs gs' as> <cs gs' as> <cs gs' as>[ <cs fs as> <cs fs as>] <cs fs as>[ <cs e as> <cs e as>]} \clef bass
  | \tuplet 3/2 8 { fss, \clef treble <cs' ds as'>[ <cs ds as'>] <cs ds as'>[ <cs ds as'> <cs ds as'>] <cs ds as'> <cs ds as'> <cs ds as'> <cs ds as'>[ <cs ds as'> <cs ds as'>]} \clef bass
  | \tuplet 3/2 8 { gs \clef treble <ds' b'>[ <ds b'>] <ds b'> <ds as' b> <ds as' b> <ds as' b> <ds gs b> <ds gs b> <ds gs b>[ <ds fs b> <ds fs b>]} \clef bass
  | \tuplet 3/2 8 { gss, \clef treble <ds' es! bs'>[ <ds es bs'>] <ds es bs'> <ds es bs'> <ds es bs'> <ds es bs'> <ds es bs'> <ds es bs'> <ds es bs'>[ <ds es bs'> <ds es bs'>]} \clef bass
  | \tuplet 3/2 8 { as \clef treble <cs es cs'>[ <cs es cs'>] <cs es cs'> <cs es cs'> <cs es cs'> \clef bass fss, \clef treble <ds' as' cs>[ <ds as' cs>] <ds as' cs> <ds as' cs> <ds as' cs>} \clef bass
  | \tuplet 3/2 8 { gs,! \clef treble <ds' gs b!>[ <ds gs b>] <ds gs b> <ds gs b> <ds gs b> \clef bass es, \clef treble <cs' gs' b>[ <cs gs' b>] <cs gs' b> <cs gs' b> <cs gs' b>} \clef bass
  | \tuplet 3/2 8 { fs,! \clef treble <cs' fs as>[ <cs fs as>] <cs fs as> <cs fs as> <cs fs as> <cs fs as> [<cs fs as> <cs fs as>] \clef bass bs, <gs' ds' fs>[ <gs ds' fs>]}
  | <<
    { \tuplet 3/2 8 { r16 <as cs>[ <as cs>] <as cs> <as cs> <as cs> } \autoBeamOff <as cs> <cs, a' bs>_._( <cs gs' b>_. <cs gs' cs>_. )\autoBeamOn}
    \\
    { cs4~ cs16 s8. }
  >>
  | <<
    { f16\rest \once \override NoteColumn #'ignore-collision = ##t cs_( gs'16. fs32) fs16_( e ds cs  ) }
    \\
    { s16 \once \override NoteColumn #'ignore-collision = ##t cs4.. }
    \\
    { \stemDown  fs,2}
  >>
  | <<
    { b16 ds \once \override NoteColumn #'ignore-collision = ##t fs b s4 }
    \\
    { \autoBeamOff \once \shape #'((0 . 0) (2 . -2) (7 . -4) (7 . 10)) Slur fs,8_( \once \override NoteColumn #'ignore-collision = ##t fs'~ fs4) \autoBeamOn }
  >>
  | <<
    { r16 cs16\< ( gs' fs ds cs\! b as | gs fs\> ds cs b as gs\! fs ) fs4 <fs'~ cs'~> | <fs cs'> d'4\rest}
    \\
    { fs,2~| \once \shape #'((0 . 0) (0 . 0) (0 . -4) (0 . -2)) Slur fs2( | fs4) \stemUp fs(\sustainOn | \stemDown fs,) s4\sustainOff }
  >>



  \label #'lastPage
}

titol = "Frühlingsnacht, Op. 39, n. 12 (Liederkreis)"
subtitol = "Nit de primavera"
compositor = "R. Schumann (1810 - 1856)"
lletrista = "J. von Heichendorff (1788 - 1857)"
traductor = "Trad. Joaquim Pena (1873 - 1944)"


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
