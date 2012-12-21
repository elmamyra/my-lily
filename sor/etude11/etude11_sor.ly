\version "2.17.7"
\language "english"
\include "function/noteColumn.ly"
\include "function/beam.ly"
\include "function/rest.ly"
\include "function/fingering.ly"
\include "function/barre.ly"
\include "function/rightHandFinger.ly"
\include "function/stem.ly"

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
  \override Score.Fingering #'padding = #0.3
  \setFgUp \fgInStaff \fgAlignRi 
  s <b'-0> <e-0> e | % 1
  e b b b | % 2
  s <b-0> <e-0> <g-4> | % 3
  \setRhUp <g-4\rh 4>2 <fs-4\rh 4> | % 4
  s4 fs fs fs | % 5
  fs\rh 4 <b,-0\rh 4> b s | % 6
  s <fs'-4\rh 4> <g-4\rh 4> <fs-4\rh 4> | % 7
  fs2 <e-0\rh 4> | % 8
  s4 g\rh 4 g g | % 9
  <g-4> fs fs2 | % 10
  s4 a a a | % 11
  a g g2 | % 12
  s4 b b b | % 13
  b a a2 | % 14
  s4 g g g | % 15
  <g-4> <fs-2> fs2 | % 16
  s4 fs fs fs | % 17
  fs g g2 | % 18
  s4 a a a | % 19
  \fgup <as-4> <b-4> b2 | % 20
  s4 <g-4> g g | % 21
  s a s c | % 22
  s fs, fs fs | % 23
  fs g g2 | % 24
  s4 f f f | % 25
  f e s a | % 26
  a g g fs  | % 27
  <g-4>2 s | % 28
  s1 | % 29
  \setFgLe <a-4>2 <gs-4> | % 30
  s4 e fs gs | % 31
  <b-4>2 a | % 32
  s4 e a << {\fgPrio <g-4>} \\ \new Voice {\voiceFour \force #-1 \fgdo <ef,-2>4 } >> | % 33
  g' fs fs2 | % 34
  s4 fs e fs | % 35
  a2 g | % 36
  s4 g g g | % 37
  <g-4>2 <fs-4> | % 38
  s4 fs fs fs | % 39
  fs2 e | % 40
  s4 g g g | % 41
  g2 fs | % 42
  s4 fs fs fs | % 43
  fs2 e | % 44
  s4 e e e | % 45
  g2 fs | % 46
  s4 fs fs fs | % 47
  <a-4>2 \fgup <gs-4> | % 48
  s4 gs gs gs | % 49
  b a a g-\barreText "½BIII" | % 50
  
  g fs fs e | % 51
  e ds ds2 | % 52
  s4 e e e | % 53
  e ds ds2 | % 54
  s4 e e e | % 55
  e ds ds2 | % 56
  s4 b b b |\break % 57
  \bar "||" \key e \major 
  
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
  e <gs-4> <fs-3> <e-0> | % 72
  fs e ds cs | % 73
  <cs-4> b b2 | % 74
  s4 ds ds ds  | % 75
  e s2. | % 76
  s4 <b-0> <e-0> <ds-4> | % 77
  s b <fs'-3> e | % 78
  s b <gs'-4> <fs-3> | % 79
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
  \mergeDifferentlyHeadedOn \stemShort #'(0)
  \scaleDurations 2/3 { \restPos $0 r8 \addSpace \setFgUp \fgInStaff \rhAddStemSupport \setRhDo <e-2\rh 2> <g-0\rh 3> b\rh 4 e,\rh 2 g\rh 3 e'\rh 4 e,\rh 2 g\rh 3 e'\rh 4 e,\rh 2 g\rh 3  | % 1
    e' e, g b e, g b e, g b e, g | % 2
    r \addSpace e g b e, g e' e, g g' e, g | % 3
    r \addSpace e\rh 1 a\rh 2 c\rh 3 e,\rh 1 a\rh 2 r e\rh 1 a\rh 2 c\rh 3 e,\rh 1 a\rh 2 | % 4
    r \addSpace e\rh 2 a\rh 3 fs' e, a fs' e, a fs' e, a | % 5
    r \fgAlignRi <ds,-1> <a'-3> b ds, a' b ds, a' \voiceThree \fgle <c,-4> <ds-1> <a'-3> \voiceTwo | % 6
    r \addSpaceAcc ds,\rh 2 a'\rh 3 fs' ds, a' g' ds, a' fs' ds, a' | % 7
    f\rest \addSpace e\rh 1 a\rh 2 b\rh 3 e,\rh 1 a\rh 2 e' e,\rh 1 g\rh 2 b\rh 3 e,\rh 1 g\rh 2 | % 8
    r \addSpace <e-2\rh 2> <b'-0\rh 3> g' e, b' g' e, b' g' <e,-2> <cs'-3> | % 9
    r <a-1> \fgle <d-3> fs a, d fs a, d \voiceThree d, a' d \voiceThree | % 10
    \voiceThree fs, <c'-3> <d-1> \voiceTwo <a'-4> c, d a' c, d \moveBeam #-2 #-2 a' c, d | % 11
    \setFgLe <a'-4> <b,-2> <d-1> \dbarre "III" g\stasp b, d g b, d \voiceThree g, b d\stosp \voiceTwo | % 12
    \voiceThree \barre "III" r\stasp <b-2> d \voiceTwo <b'-4> b, d b' b, d b' b, d | % 13
    <b'-4> <c,-2> <e-3> a c, e a c, e \voiceThree c, c' e\stosp \voiceTwo | % 14
    \dbarre "III" r\stasp  bf <e-3> g bf, e g bf, e g bf, e\stosp | % 15
    \moveBeam #-1.8 #-2.2 g <a,-1> <d-3> fs a, d fs a, d \voiceThree d, a' d \voiceTwo | % 16
    \voiceThree \dbarre "II" r\stasp a <d-3> \voiceTwo fs a, d fs a, d fs a, d\stosp | % 17
    \moveBeam #-2.8 #-2.8 <fs-2> g, d' <g-4> g, d' g g, d' \voiceThree b, g' d' \voiceTwo | % 18
    r <d,-0> <c'-3> <a'-4> d,, c' a' d,, c' a' d,, c' | % 19
    as' <d,,-0> <b'-0> b' d,, b' b' d,, b' \voiceThree g, d' g \voiceTwo | % 20
    \voiceThree e, g' b \voiceTwo g' g, b g' g, b g' g, b | % 21
    \voiceThree c, <c'-2> <e-3> \voiceTwo <a-4> c, e \voiceThree \dbarre "V" a,,\stasp c' e \voiceTwo <c'-4> c, e\stosp | % 22
    \voiceThree d, <a'-3> <c-2> \voiceTwo <fs-4> a, c fs a, c fs a, c | % 23
    <fs-4> a, <c-1> g' <g,-0> <b-0> g' g, b \voiceThree e, g b \voiceTwo | % 24
    \voiceThree \dbarre "I" r\stasp gs <d'-4> \voiceTwo f gs, d' f gs, d' f gs, d' | % 25
    f a, d\stosp e a, <c-1> \voiceThree a, <c'-2> <e-3> \voiceTwo <a-4> c, e | % 26
    a <b,-2> <d-3> g^\barreText "III" b, d <g-4> <a,-2> <c-1> <fs-3> a, c | % 27
    r g b \voiceThree d, g b b, g' b d, g b \voiceTwo | % 28
    s1. | % 29
    r8 <e,-1> <b'-3> <d-2> e, b' gs' e, b' d e, b' | % 30
    r \addSpace b d e b d fs b, d gs b, d | % 31
    \dbarre "V" r\stasp \fgdo \fgAlignCe <gs,-2> <d'-3> e gs, d' r a c e a, c | % 32
    r \addSpace a c e a, c a' a, c g' a, c\stosp | % 33
    \barre "V" r\stasp a c fs a, c fs a, c \voiceThree d, a' c\stosp \voiceTwo | % 34
    r <a-3> <c-1> <fs-4> a, c <e-0> a, c <fs-4> a, c | % 35
    \barre "III" r\stasp \addSpace fs, c' d fs, c' g' g, b d g, b | % 36
    r \addSpace b d g b, d g b, d g b, d\stosp | % 37
    r \addSpaceAcc ds, a' b ds, a' r ds, a' b ds, a' | % 38
    r \addSpaceAcc ds, a' fs' ds, a' fs' ds, a' fs' ds, a' | % 39
    r \addSpace <e-2> g b e, g e' e, g b e, g | % 40
    r \addSpace e g g' e, g g' e, g g' e, g | % 41
    r \addSpaceAcc ds a' b ds, a' fs' ds, a' b ds, a' | % 42
    r \addSpaceAcc ds, a' fs' ds, a' fs' ds, a' fs' ds, a' | % 43
    g\rest \addSpace e g b e, g g\rest e g b e, g | % 44
    g\rest \addSpace g b e g, b e g, b e g, b | % 45
    <g'-4> <e,-2> <a-3> <c-1> e, a fs' e, a c e, a | % 46
    r \addSpace e a fs' e, a fs' e, a fs' e, a | % 47
    r \addSpace <e-1> <b'-3> <d-2> e, b' r e, b' d e, b' | % 48
    r \addSpace b d gs b, d gs b, d gs b, d | % 49
    <b'-4> <c,-2> <e-3> <a-4> c, e a <b,-2> <d-1> g b, d | % 50
    \moveBeam #-2.4 #-2.4 \ign <g-4> <a,-2> <c-1> <fs-3> a, c fs g, \fgup <cs-2> e g, cs | % 51
    <e-0> <fs,-2> <b-3> \fgup <ds-4> fs, b ds fs, b \voiceThree b, fs' b \voiceTwo | % 52
    r \addSpace <g-4> \fgdo <as-2> <e'-0> g, as e' g, as e' g, as | % 53
    e' fs, b ds fs, b ds fs, b \voiceThree b, fs' b \voiceTwo | % 54
    r \addSpace g as e' g, as e' g, as e' g, as | % 55
    e' fs, b ds fs, b ds fs, b \voiceThree b, fs' b \voiceTwo | % 56
    s1. | % 57
    
    b8 e, gs gs' e, gs gs' e, gs \voiceThree e, e' gs \voiceTwo | % 58
    \barre "II" r\stasp \addSpace a <ds-3> fs a, ds fs a, ds fs a, ds | % 59
    \moveBeam #-2.3 #-2.3 fs a, ds\stosp <e-0> <gs,-1> <cs-2> e gs, cs \voiceThree cs, gs' cs \voiceTwo | % 60
    r \addSpace <a-1> <cs-2> <e-0> a, cs \dbarre "II" <ds-4>\stasp <e,-1> <b'-3> cs e, a | % 61
    cs e, a\stosp <b-0> <e,-2> <gs-1> b e, gs \voiceThree e gs b \voiceTwo | % 62
    \barre "II" r\stasp \addSpace <fs-3> a <ds-4> fs, a ds fs, a ds fs, a\stosp | % 63
    ds fs, a e' e, gs e' e, gs b e, gs | % 64
    g\rest \addSpace e gs b e, gs b e, gs b e, gs | % 65
    b e, gs gs' e, gs gs' e, gs \voiceThree e, e' gs \voiceTwo | % 66
    \barre "II" r\stasp a <ds-3> fs a, ds \moveBeam #-2.1 #-2.1 fs a, ds fs a, ds | % 67
    fs a, ds\stosp e gs, cs e gs, cs \voiceThree cs, gs' cs \voiceTwo | % 68
    r \addSpace <a-1> <cs-2> <e-0> e, cs' \dbarre "II" ds\stasp e, b' cs e, a | % 69
    f\rest e a\stosp b e, gs b e, gs \voiceThree b, e gs \voiceTwo | % 70
    \barre "II" r\stasp \addSpace fs a ds fs, a ds fs, a ds fs, a\stosp | % 71
    g\rest \addSpace e gs gs' e, gs fs' e, gs e' e, gs | % 72
    <fs'-2> <e,-1> <ds'-4> <e-0> e, <cs'-2> \dbarre "II" <ds-4>\stasp e, <b'-3> cs e, a\stosp | % 73
    f\rest <e-3> <gs-1> b e, gs b e, gs \voiceThree b, e gs \voiceTwo | % 74
    \barre "II" g\rest\stasp \addSpace fs a ds fs, a ds fs, a ds fs, a\stosp | % 75
    e' gs, b e, gs b e, gs b e, gs b | % 76
    r \addSpace <fs-3> <a-1> b fs a e' fs, a ds fs, a | % 77
    r \addSpace e gs b e, gs fs' e, gs e' e, gs | % 78
    r <ds-1> <a'-2> b ds, a' gs' ds, a' fs' ds, a' | % 79
    r \addSpace e gs b e, gs fs' e, gs e' e, gs | % 80
    r \addSpace fs a b fs a e' fs, a ds fs, a | % 81
    r \addSpace e gs b e, gs fs' e, gs e' e, gs | % 82
    r ds a' b ds, a' gs' ds, a' fs' ds, a' | % 83
    r <e-3> <gs-1> b e, gs e' e, gs \voiceThree <b,-2> e gs \voiceTwo | % 84
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
  \setFgDo <fs-2>2. \force #-1 fs4 | \force #-1.1 <g-3>2. g4 | % 11-12
  g,1 | \ign c2. c4 | % 13-14
  \fgdo <cs-2>1 | \force #-1.1 d2. d4 | % 15-16
  <c-2>1 | \force #-1.5 <b-1>2. b4 | % 17-18
  \setFgLe <fs-1>1 | \force #-1.8 g2. g4 | % 19-20
  e2. \force #-1 <e'-2>4 | % 21
  <c-1>2 a | % 22
  d2. \force #-1 \fgdo  <ds-1>4 | % 23
  \force #-1.2 \once \override Dots #'extra-offset = #'(.2 . .7) \fgdo <e-2>2. e4 | % 24
  b1 | % 25
  \force #-1.5 <c-3>2 a | % 26
  \force #-1.7 d1 | % 27
  <g,-2>4 d' <b-1> d | % 28
  <g,-2> <d''-1> <b'-4> <a-4> | % 29
  e,,1 | % 30
  e | % 31
  a | % 32
  a | % 33
  d2. d4 | % 34
  <d-0>1 | g, | % 35-36
  g | <b-2> | % 37-38
  b | e, | % 39-40
  e | b' | % 41-42
  b | e, | % 43-44
  e | \force #-1.9 e | % 45-46
  e | e | % 47-48
  e | \ign a | % 49-50
  a2 \force #-1.5 \fgdo <as-1> | \force #-1.9 b2. b4 | % 51-52
  b1 | \force #-1.9 b2. b4 | % 53-54
  b1 | \force #-1.9 b2. b4 | % 55-56
  b^\fermata s2. | % 57
  \force #-1.8 e,2. e4 | b'1 | % 58-59
  \force #-1 \fgdo <cs-4>2. cs4 | a1 | % 60-61
  \force #-1.8 b2. e4 | b1 | % 62-63
  \force #-1.9 e, | e | % 64-65
  \force #-1.8 e2. e4 | b'2 \ign \fgdo <bs-2> | % 66-67
  \force #-1.2 \fgdo <cs-4>2. cs4 | a1 | % 68-69
  b2. b4 | b1 | % 70-71
  e, | \force #-1.9 a | % 72-73
  <b-2>2. b4 | b1 | % 74-75
  \force #-2 e,1 | e | % 76-77
  e | e | % 78-79
  e | e | % 80-81
  e | e | % 82-83
  e2. b'4 | e,2. b'4 | % 84-85
  e,2 \force #-1.3 e | e s | % 86-87
   
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
