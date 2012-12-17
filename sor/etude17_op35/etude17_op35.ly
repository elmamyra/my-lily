\version "2.17.9"
\language "english"
\include "functions/beam.ly"
\include "functions/noteColumn.ly"
\include "functions/fingering.ly"



\header {
  title = "Étude Op. 35 n°17"
  composer = \markup \override #'(baseline-skip . 2) \center-column {
 	{"Fernando Sor"} {\fontsize #-4 "(1778-1839)"} }
  % Supprimer le pied de page par défaut
  tagline = ##f
}

\paper {
  ragged-last-bottom = ##f
  

}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

global = {
  \key d \major
  \time 4/4
  \tempo "Moderato"
}

upper = \relative c'' {
  \key d \major
  \time 4/4
  \tempo "Moderato"
  \setFgLe \fgAlignRi \fgInStaff
  \partial 4 <a-1> |
  <fs'-2>4. fs8 e4. e8 | % 1
  <d-2>4. <fs-1>8 <a,-1>4. a8 | % 2
  b4. b8 e4. <d-2>8 | % 3
  <d-3>4. <cs-2>8 e4 r8 <a,-1> |\break % 4
  <fs'-2>4. fs8 e4. e8 | % 5
  <d-2>4. d8 \fgup <ds-4>4. ds8 | % 6
  e4. b8 <cs-2>4. e8 | % 7
  <fs,-3 d'>4 s2 r8 fs' |\break % 8
  e4. e8 \fgup <ds-4>4. ds8 | % 9
  e4. e8 <cs-2>4. cs8 | % 10
  <d-2>4. d8 b4. e8 | % 11
  <d-4>2 <cs-4>4 r8 e8 |\break % 12
  e4. e8 \fgup <es-1>4. es8 | % 13
  <fs-1>4. fs8 <b,-0>4. \fgup <bs-2>8 | % 14
  <cs-4>4. cs8 <d-2>4. b8 | % 15
  <cs-1>4 s2 r8 <a'-4>8 |\break % 16
  a4. a8 \fgup <c,-1>4. c8 | % 17
  b4. b8 <fs'-4>4. fs8 | % 18
  <g-4>4. g8 \fgup <bf,-1>4. bf8 | % 19
  a4. a8 <e'-0>4. e8 |\break % 20
  f4. d8 cs4. e8 | % 21
  d4. e8 f4. e8 | % 22
  <d-4>4. d8 <e-0>4. e8 | % 23
  <cs-1>2 r4 r8 a |\break % 24
  fs'4. fs8 e4. e8 | % 25
  <d-2>4. <fs-1>8 a,4. d8 | % 26
  b4. b8 e4. d8 | % 27
  d4. cs8 e4. a,8 |\break % 28
  \slurDown <fs'-2>4. \setFgUp \fgAddStemSupport \fgAlignCe <g-4>16( <fs-2>) e4. <fs-2>16( <e-0>) | % 29
  ds2 e4. <fs-1>16 <e-0> | % 30
  \setFgLe <d-2>4. d8 <cs-2>4. cs8 | % 31
  <fs,-3 d'-2>2 s4 r \bar "|." | % 32
  
}

lower = \relative c' {
  \setFgLe 
  \partial 4 r4 |
  r8 d a'4 r8 a, g'4 | % 1
  r8 d fs4 r8 \fgNoSpace \fgPad #.3 <d-4> fs4 | % 2
  r8 <g,-2> g'4 r8 \fgMoveSharp <gs,-3> e'4 | % 3
  r8 a, <e'-1>4 r8 a, e'4 | % 4
  r8 d <a'-1>4 r8 a, g'4 | % 5
  r8 <b,-1> <fs'-3>4 r8 a, fs'4 | % 6
  r8 <g,-2> <e'-1 g>4 r8 a, <e' g>4 | % 7
  r8 <d-4> <a'-1> fs d4 r | % 8
  r8 <cs-3> <a'-1>4 r8 \fgMoveSharp <bs,-2> <a'-1>4  | % 9
  r8 <cs,-3> <a'-1>4 r8 a, a'4 | % 10
  r8 <b,-1> <fs'-3>4 r8 <e-2> \fgMoveSharp <gs-1>4 | % 11
  r8 e gs e \fgYmove #-.2 <a-3> <e-2> a,4 | % 12
  r8 <cs-4> <a'-2>4 r8 cs, a'4 | % 13
  r8 d, <a'-2>4 r8 \fgMoveSharp <ds,-1> <a'-3>4 | % 14
  
  r8 <e-2> <a-3>4 <<\new Voice {\voiceTwo  \ign e,2 } \\ 
    \new Voice { \voiceThree  \moveBeam #0 #0.5 \ign 
    \once \override NoteHead #'duration-log = #1 e8[ \fgle <e'-1>] \stemDown b'[ \fgInStaff \fgdo <gs-1>] } >> | %15
  << \new Voice {\voiceTwo a,4 s} \\ \new Voice { \voiceThree \ign \moveBeam #0 #1.8 a8[ <a'-1>] <e-1>[ <cs-4>]} >>
  \stemUp a4 s4 | %16
  \voiceTwo r8 <fs'-3> a4 r8 <e-2> <a-3>4 | % 17
  r8 ds, <a'-3>4 r8 ds, a'4 | % 18
  r8 <e-2> g4 r8 <d-3> <g-4>4 | % 19
  r8 <cs,-3> <g'-4>4 r8 cs, g'4 | % 20
  r8 <d-4> \fgMoveNat <f-2>4 r8 <e-1> g4 | % 21
  r8 f a4 r8 d, a'4 | % 22
  r8 bf, <a'-2>4 r8 bf, \fgMoveSharp <gs'-2>4 | % 23
  r8 a, <a'-1> <e-1> <cs-4> e a,4 | % 24
  r8 d a'4 r8 cs, g'4 | % 25
  r8 <d-4> fs4 r8 d fs4 | % 26
  r8 g, g'4 r8 gs, e'4 | % 27
  r8 a, e'4 r8 a, e'4 | % 28
  r8 d <a'-1>4 r8 as, g'4 | % 29
  r8 <b,-1> <fs'-3> <a-1> <g-0> e, <g b'>4 | % 30
  r8 a <fs'-3 a-1>4 r8 a, <e'-1 g>4 | % 31
  r8 <d-4> <a'-1> <fs-3> <d-4>4 s | % 32
  
}

\score {
  \new Staff \with {
  } { << \upper \\ \lower >> }
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
