\version "2.17.9"
\language "english"
\include "fingering.ly"

\header {
  title = "Étude 5 op.60"
  composer = "Fernando Sor"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

\paper {
  ragged-last-bottom = ##f

}

upper = \relative c'' {
  \key a \minor
  \time 6/8
  \mergeDifferentlyDottedOn
  \override Rest #'staff-position = #0
  \setFgLe \fgInStaff \fgNoSpaceOn \slurDown
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \repeat volta 2 {
    r8 <a-2> b <c-1> <d-4> e | % 1
    r <d-4> e <f-1> <d-4> b | % 2
    r \fgup <gs-1> b r e <d-4> | % 3
    r <c-1> b <d-4>( <c-1>) b | % 4
    r <a-2> b <c-1> <d-4> e | % 5
    r <d-4> e <f-1> <d-4> b | % 6
    r \fgup <gs-1> b <a-3> <e-2> <c'-1> | % 7
    b \fgup <gs-1> e' e,,4 r8 | \break % 8
  }
  \repeat volta 2 {
    r \fgup <gs'-1> b e <d-4> b | % 9
    <c-1> <a-3> <c-1> e <c-1> <a-3> | % 10
    r \fgup <gs-1> b e <d-4> b | % 11
    r <c-1> b <a-2> <c-1> e | % 12
    d, <f'-1> f g, b b | % 13
    <c,-3> e' e <f,-3> <a-2> a | % 14
    d, b' b <e,-2> \fgdo <gs-1> gs | % 15
    a, <a'-3> <e-2> a,4 r8 \mark \markup {\fontsize #-2 \italic "fine"} | \break % 16
  }
  \key a \major
  \repeat volta 2 {
    r <cs'-2> <a-1> e'4. | % 17
    r8 <d-2> <cs-1> b4. | % 18
    r8 <cs-1> b <a-1> b <cs-2> | % 19
    b e \fgup <ds-4> <fs-1>( e) \fgup <d-2> | % 20
    r <cs-1> <d-2> e4. | % 21
    r8 <d-2> <cs-1> b4. | % 22
    r8 <cs-2> e <d-4> b <gs-1> | % 23
    a, <a'-2> <cs-3> a,4 r8 | \break % 24
  }
  \repeat volta 2 {
    r <gs'-1> b <d-3>4. | % 25
    r8 <cs-1> e <a-4>4. | % 26
    r8 <gs-3> <fs-1> fs e <d-2> | % 27
    <cs-1> <d-2> \fgup <ds-3> e <cs-3> <a-2> | \break % 28
    r <gs-1> b <d-4>4. | % 29
    r8 <cs-1> e <a-4>4. ~ | % 30
    a8 <fs-1> \fgup <ds-3> b <a-2> <fs-4> | % 31
    r <gs-1> b e <d-4> b | \break % 32
    r <cs-2> <a-1> e'4. | % 33
    r8 <d-2> <cs-1> b4. | % 34
    r8 <cs-1> b <a-1> b <cs-2> | % 35
    b e \fgup <ds-4> <fs-1>( e) \fgup <d-2> |\break % 36
    r <cs-1> <d-2> e4. ~ | % 37
    e8 <d-2> <fs-1> <a-4>4. ~ | % 38
    a8 e <cs-2> ~ cs <d-4> b | % 39
    <a-3> <e-2> <cs'-4> a,4 r8 \mark \markup {\fontsize #-2 \italic "D.C. al fine"} | % 40
    \key a \minor
  }
}

lower = \relative c' {
  \setFgLe 
  a2. | d | <e-2>4. e, | a2. | % 1-4
  a | d | <e-2> | b2.\rest | % 5-8
  <e-2>2. ~ | e | e, | a | % 9-12
  d4. g | c, f | d e | a, r | % 13-16
  a2. | e | e | e | % 17-20
  a | e | e | a4. r | % 21-24
  e2. | e | e ~ | e | % 25-28
  e | e | e | <e'-2> | % 29-32
  a, | e | a | e | % 33-36
  a | d | <e-1>4. e, | a r | % 37-40
  
  
}

\score {
  \new Staff \with {
  } { << \upper \\ \lower >> }
  \layout { 
    \context {
    \Score
    \remove "Bar_number_engraver"
  }
  
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
