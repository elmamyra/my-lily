\version "2.17.7"
\language "english"
\include "function/noteColumn.ly"
\include "function/beam.ly"
\include "function/rest.ly"
\header {
  title = "Étude 11 op.6"
  composer = "Fernando Sor"
  tagline = ##f
}

\paper {
  ragged-last-bottom = ##f
}

global = {
  \key e \minor
  \time 4/4
  \tempo "Allegro Moderato"
}

addSpace = {\once \override Stem #'extra-spacing-width = #'(-0.6 . 0)}
addSpaceAcc = {\once \override Accidental #'extra-spacing-width = #'(-0.4 . 0)}

upper = \relative c' {
  \global
  \voiceOne
  %\set Score.skipTypesetting = ##t
  s b' e e | % 1
  e b b b | % 2
  s b e g | % 3
  g2 fs | % 4
  s4 fs fs fs | % 5
  fs b, b s | % 6
  s fs' g fs | % 7
  fs2 e | % 8
  s4 g g g | % 9
  g fs fs2 | % 10
  s4 a a a | % 11
  a g g2 | % 12
  s4 b b b | % 13
  b a a2 | % 14
  s4 g g g | % 15
  g fs fs2 | % 16
  s4 fs fs fs | % 17
  fs g g2 | % 18
  s4 a a a | % 19
  as b b2 | % 20
  s4 g g g | % 21
  s a s c | % 22
  s fs, fs fs | % 23
  fs g g2 | % 24
  s4 f f f | % 25
  f e s a | % 26
  a g g fs  | % 27
  g2 s | % 28
  s1 | % 29
  a2 gs | % 30
  s4 e fs gs | % 31
  b2 a | % 32
  s4 e a g | % 33
  g fs fs2 | % 34
  s4 fs e fs | % 35
  a2 g | % 36
  s4 g g g | % 37
  g2 fs | % 38
  s4 fs fs fs | % 39
  fs2 e | % 40
  s4 g g g | % 41
  g2 fs | % 42
  s4 fs fs fs | % 43
  fs2 e | % 44
  s4 e e e | % 45
  g2 fs | % 46
  s4 fs fs fs | % 47
  a2 gs | % 48
  s4 gs gs gs | % 49
  b a a g | % 50
  g fs fs e | % 51
  e ds ds2 | % 52
  s4 e e e | % 53
  e ds ds2 | % 54
  s4 e e e | % 55
  e ds ds2 | % 56
  s4 b b b |\pageBreak % 57
  \bar "||" \key e \major 
  \set Score.skipTypesetting = ##f
  b gs' gs2 | % 58
  s4 fs fs fs | % 59
  fs e e2 | % 60
  s4 e ds cs | % 61
  cs b b2 | % 62
  s4 ds ds ds | % 63
  ds e e2 | % 64
  s4 b b b | % 65
  b gs' gs2 | % 66
  s4 fs fs fs | % 67
  fs e e2 | % 68
  s4 e ds cs | % 69
  cs b b2 | % 70
  s4 ds ds ds | % 71
  e gs fs e | % 72
  fs e ds cs | % 73
  cs b b2 | % 74
  s4 ds ds ds  | % 75
  e s2. | % 76
  s4 b e ds | % 77
  s b fs' e | % 78
  s b gs' fs | % 79
  s b, fs' e | % 80
  s b e ds | % 81
  s b fs' e | % 82
  s b gs' fs | % 83
  s b, e2 | % 84
  s4 b e2 | % 85
  s4 b e b | % 86
  e2 s | \bar "|." % 87
  
  
}

middle = \relative c' {
  \global
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
   \mergeDifferentlyHeadedOn
  \scaleDurations 2/3 { \restPos $0 r8 \addSpace e g b e, g e' e, g e' e, g  | % 1
    e' e, g b e, g b e, g b e, g | % 2
    r \addSpace e g b e, g e' e, g g' e, g | % 3
    r \addSpace e a c e, a r e a c e, a | % 4
    r \addSpace e a fs' e, a fs' e, a fs' e, a | % 5
    r ds, a' b ds, a' b ds, a' \voiceThree c, ds a' \voiceTwo | % 6
    r \addSpaceAcc ds, a' fs' ds, a' g' ds, a' fs' ds, a' | % 7
    f\rest \addSpace e a b e, a e' e, g b e, g | % 8
    r \addSpace e b' g' e, b' g' e, b' g' e, cs' | % 9
    r a d fs a, d fs a, d \voiceThree d, a' d \voiceThree | % 10
    \voiceThree fs, c' d \voiceTwo a' c, d a' c, d \moveBeam #-2 #-2 a' c, d | % 11
    a' b, d g b, d g b, d \voiceThree g, b d \voiceTwo | % 12
    \voiceThree r b d \voiceTwo b' b, d b' b, d b' b, d | % 13
    b' c, e a c, e a c, e \voiceThree c, c' e \voiceTwo | % 14
    r bf e g bf, e g bf, e g bf, e | % 15
    \moveBeam #-1.8 #-2.2 g a, d fs a, d fs a, d \voiceThree d, a' d \voiceTwo | % 16
    \voiceThree r a d \voiceTwo fs a, d fs a, d fs a, d | % 17
    \moveBeam #-2.8 #-2.8 fs g, d' g g, d' g g, d' \voiceThree b, g' d' \voiceTwo | % 18
    r d, c' a' d,, c' a' d,, c' a' d,, c' | % 19
    as' d,, b' b' d,, b' b' d,, b' \voiceThree g, d' g \voiceTwo | % 20
    \voiceThree e, g' b \voiceTwo g' g, b g' g, b g' g, b | % 21
    \voiceThree c, c' e \voiceTwo a c, e \voiceThree a,, c' e \voiceTwo c' c, e | % 22
    \voiceThree d, a' c \voiceTwo fs a, c fs a, c fs a, c | % 23
    fs a, c g' g, b g' g, b \voiceThree e, g b \voiceTwo | % 24
    \voiceThree r gs d' \voiceTwo f gs, d' f gs, d' f gs, d' | % 25
    f a, d e a, c \voiceThree a, c' e \voiceTwo a c, e | % 26
    a b, d g b, d g a, c fs a, c | % 27
    r g b \voiceThree d, g b b, g' b d, g b \voiceTwo | % 28
    s1. | % 29
    r8 e, b' d e, b' gs' e, b' d e, b' | % 30
    r \addSpace b d e b d fs b, d gs b, d | % 31
    r gs, d' e gs, d' r a c e a, c | % 32
    r \addSpace a c e a, c a' a, c g' a, c | % 33
    r a c fs a, c fs a, c \voiceThree d, a' c \voiceTwo | % 34
    r a c fs a, c e a, c fs a, c | % 35
    r \addSpace fs, c' d fs, c' g' g, b d g, b | % 36
    r \addSpace b d g b, d g b, d g b, d | % 37
    r \addSpaceAcc ds, a' b ds, a' r ds, a' b ds, a' | % 38
    r \addSpaceAcc ds, a' fs' ds, a' fs' ds, a' fs' ds, a' | % 39
    r \addSpace e g b e, g e' e, g b e, g | % 40
    r \addSpace e g g' e, g g' e, g g' e, g | % 41
    r \addSpaceAcc ds a' b ds, a' fs' ds, a' b ds, a' | % 42
    r \addSpaceAcc ds, a' fs' ds, a' fs' ds, a' fs' ds, a' | % 43
    r \addSpace e g b e, g r e g b e, g | % 44
    r \addSpace g b e g, b e g, b e g, b | % 45
    g' e, a c e, a fs' e, a c e, a | % 46
    r \addSpace e a fs' e, a fs' e, a fs' e, a | % 47
    r \addSpace e b' d e, b' r e, b' d e, b' | % 48
    r \addSpace b d gs b, d gs b, d gs b, d | % 49
    b' c, e a c, e a b, d g b, d | % 50
    \moveBeam #-2.4 #-2.4 \ign g a, c fs a, c fs g, cs e g, cs | % 51
    e fs, b ds fs, b ds fs, b \voiceThree b, fs' b \voiceTwo | % 52
    r \addSpace g as e' g, as e' g, as e' g, as | % 53
    e' fs, b ds fs, b ds fs, b \voiceThree b, fs' b \voiceTwo | % 54
    r \addSpace g as e' g, as e' g, as e' g, as | % 55
    e' fs, b ds fs, b ds fs, b \voiceThree b, fs' b \voiceTwo | % 56
    s1. | % 57
    
    b8 e, gs gs' e, gs gs' e, gs \voiceThree e, e' gs \voiceTwo | % 58
    r \addSpace a ds fs a, ds fs a, ds fs a, ds | % 59
    \moveBeam #-2.3 #-2.3 fs a, ds e gs, cs e gs, cs \voiceThree cs, gs' cs \voiceTwo | % 60
    r \addSpace a cs e a, cs ds e, b' cs e, a | % 61
    cs e, a b e, gs b e, gs \voiceThree e gs b \voiceTwo | % 62
    r \addSpace fs a ds fs, a ds fs, a ds fs, a | % 63
    ds fs, a e' e, gs e' e, gs b e, gs | % 64
    g\rest \addSpace e gs b e, gs b e, gs b e, gs | % 65
    b e, gs gs' e, gs gs' e, gs \voiceThree e, e' gs \voiceTwo | % 66
    r a ds fs a, ds \moveBeam #-2.1 #-2.1 fs a, ds fs a, ds | % 67
    fs a, ds e gs, cs e gs, cs \voiceThree cs, gs' cs \voiceTwo | % 68
    r \addSpace a cs e e, cs' ds e, b' cs e, a | % 69
    f\rest e a b e, gs b e, gs \voiceThree b, e gs \voiceTwo | % 70
    r \addSpace fs a ds fs, a ds fs, a ds fs, a | % 71
    g\rest \addSpace e gs gs' e, gs fs' e, gs e' e, gs | % 72
    fs' e, ds' e e, cs' ds e, b' cs e, a | % 73
    f\rest e gs b e, gs b e, gs \voiceThree b, e gs \voiceTwo | % 74
    g\rest \addSpace fs a ds fs, a ds fs, a ds fs, a | % 75
    e' gs, b e, gs b e, gs b e, gs b | % 76
    r \addSpace fs a b fs a e' fs, a ds fs, a | % 77
    r \addSpace e gs b e, gs fs' e, gs e' e, gs | % 78
    r ds a' b ds, a' gs' ds, a' fs' ds, a' | % 79
    r \addSpace e gs b e, gs fs' e, gs e' e, gs | % 80
    r \addSpace fs a b fs a e' fs, a ds fs, a | % 81
    r \addSpace e gs b e, gs fs' e, gs e' e, gs | % 82
    r ds a' b ds, a' gs' ds, a' fs' ds, a' | % 83
    r e gs b e, gs e' e, gs \voiceThree b, e gs \voiceTwo | % 84
    r e gs b e, gs e' e, gs \voiceThree b, e gs \voiceTwo | % 85
    \voiceThree e, e' gs \voiceTwo b e, gs e' e, gs b e, gs | % 86

  }
  s2 r | % 87
  
}

lower = \relative c' {
  \global \voiceFour \mergeDifferentlyDottedOn \mergeDifferentlyHeadedOn
  e,1 | \force #-2 e | % 1-2
  e | e | % 3-4
  e | e2. c'4 | % 5-6
  b1 | e, | % 7-8
  e | d'2. d4 | % 9-10
  fs2. \force #-1 fs4 | \force #-1.1 g2. g4 | % 11-12
  g,1 | \ign c2. c4 | % 13-14
  cs1 | \force #-1.1 d2. d4 | % 15-16
  c1 | \force #-1.5 b2. b4 | % 17-18
  fs1 | \force #-1.8 g2. g4 | % 19-20
  e2. e'4 | % 21
  c2 a | % 22
  d2. \force #-1.2 ds4 | % 23
  \force #-1.2 \once \override Dots #'extra-offset = #'(.2 . .7) e2. e4 | % 24
  b1 | % 25
  \force #-1.5 c2 a | % 26
  \force #-1.7 d1 | % 27
  g,4 d' b d | % 28
  g, d'' b' a | % 29
  e,,1 | % 30
  e | % 31
  a | % 32
  a | % 33
  d2. d4 | % 34
  d1 | g, | % 35-36
  g | b | % 37-38
  b | e, | % 39-40
  e | b' | % 41-42
  b | e, | % 43-44
  e | \force #-1.9 e | % 45-46
  e | e | % 47-48
  e | \ign a | % 49-50
  a2 \force #-1.5 as | \force #-1.9 b2. b4 | % 51-52
  b1 | \force #-1.9 b2. b4 | % 53-54
  b1 | \force #-1.9 b2. b4 | % 55-56
  b s2. | % 57
  \force #-1.8 e,2. e4 | b'1 | % 58-59
  \ign a2. cs4 | a1 | % 60-61
  \force #-1.8 b2. e4 | b1 | % 62-63
  \force #-1.9 e, | e | % 64-65
  \force #-1.8 e2. e4 | b'2 \ign bs | % 66-67
  \force #-1.8 cs2. cs4 | a1 | % 68-69
  b2. b4 | b1 | % 70-71
  e, | \force #-1.9 a | % 72-73
  b2. b4 | b1 | % 74-75
  \force #-2 e,1 | e | % 76-77
  e | e | % 78-79
  e | e | % 80-81
  e | e | % 82-83
  e2. b'4 | e,2. b'4 | % 84-85
  e,2 \force #-2 e | e s | % 86-87
   
}

\score {
  \new Staff \with {
    
  } {  << \upper \\ \middle \\ \lower >> }
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
