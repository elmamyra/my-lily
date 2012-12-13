\version "2.17.8"
\language "english"
\include "functions/noteColumn.ly"
\include "functions/rest.ly"
\include "functions/fingering.ly"
\include "functions/stringNumber.ly"
\include "functions/barre.ly"
\include "functions/fingeringSlideEngraver.ly"
\include "functions/glissando.ly"
\header {
  title = "Andante sentimentale"
  composer = "J. Viñas"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  ragged-last-bottom = ##f

}

harm = #(define-music-function
     (parser location string)
     (string?)
   #{ ^\markup \italic \small \halign #CENTER #string #})



upper = \relative c'' {
  \key a \minor
  \time 3/4 \slurDown
  %\set Score.skipTypesetting = ##t
  s2.*4 | % 1-4
  \setFgLe <a-2 f'>4 <bf-3 f'> <b-4 f'> | % 5
  <a-3 c-2 fs-4>2. | % 6
  <e'-0>2. | % 7
  e2 e4\fermata |\bar "||" % 8
  \fgup <e-2>4-\markup {\italic \bold \halign #-0.8 "con sentimento"} fs8-4 gs-1 a-2 b-4\glissando   | % 9
  c2.-4 | % 10
  c2 <b-3>4 | % 11
  b2 a4 | % 12
  <a, c e> ds8[-4 e]-0 \acciaccatura g-3 f e | % 13
  e2 d4 | % 14
  d4 cs8[ d]-4 \acciaccatura f-1 e-0 d | % 15
  d2 c4 | % 16
  <e-2> fs8 gs a b | % 17
  \fgup <c-4>2. | % 18
  c | % 19
  <e,-3 g-2 b-1>8 as(-1 b)-2 <fs\2>(-1 g)-2 <ds\2>(-1 | % 20
  e)-2 as,(-1 b)-3 fs(-2 g)-4 e-1 | % 21
  d'\rest b-0 as-4 b-0 c(-2 b)-0 | % 22
  \fgup <g'-4>2 fs4 | % 23
  <g, b e>2 b4\rest | \bar "||"\break % 24
  %\set Score.skipTypesetting = ##f
  \slurUp <f'-\fgTwkXMove #1.7 #2 >8->([ <e-0>)] f->([ e)] f->([ e)] | % 25
  \snInStaff \setSnDo \harm "XII" <b'\2>2.\harmonic  | % 26
  <f-1>8->([ e)] f->([ e)] f->([ e)] | % 27
  \harm "VII" <a\4>2.\harmonic | % 28
  s2. | % 29
  <a, c> | % 30
  s | % 31
  <a d> | % 32
  s | % 33
  <a-1 ds-4>2 ds8-4\glissando <a'\2>-4 | % 34
  \setFgUp <a-4>4-\barreText "BVIII" \slurDown \acciaccatura <a-4>8 \glisstofing <c\2>4-4\glissando <ds,>-4 | % 35
  e2. | % 36
  \override NoteHead.style = #'harmonic-black
  \oneVoice \snOutStaff \harm "VII" <d'\3>4 \harm "XII" <b\2> \harm "IX" <gs\6> | % 37
  \revert NoteHead.style
  \harm "VII" <e\5>2.\harmonic | % 38
  <d,\5>4-4 b-1 gs-3 | % 39
  e2.\fermata |\bar "||" % 40
  \voiceOne \slurDown \fgup <e''-2>4 fs8 gs a b | % 41
  c2. | % 42
  c2 \fgup <b-3>4 | % 43
  b2 a4 | % 44
  <a, c e> ds8[ e] \acciaccatura g f e | % 45
  e2 \fgup <d-4>4 | % 46
  d4 cs8[ d] \acciaccatura f e d | % 47
  d2 c4 | % 48
  a,8(-0 c)-4 e-2 a-3 c-1 e-0  | % 49
  g2-4 f4 | % 50
  b,,8 d( f) gs b d | % 51
  \fgup <f-2>2 e4 | % 52
  \setFgLe <bf-3 d-4>8[ f']-1 \glisstofing f[-\tweak #'transparent ##t -1 \glissando bf]-1 bf[ d]-4 | % 53
  \snInStaff <a,-3 c-1>[ e']-0 e[( a]-1) a[ c]-4 | % 54
  <d,-3 b'-4>[ <b gs'>] <a-3 f'!-2>[ <gs-1 e'-0>] <gs d'>[ b] | % 55
  a2 b4\rest | \bar "||" % 56
  \key a \major
  r8 a-2 cs-3 e-0 fs(-4 e) | % 57
  r d(-4 b) gs e4 | % 58
  r8 gs d' e fs( e) | % 59
  r d( cs) a e4 | % 60
  \dbarre "V" r8\stasp e' a\stosp r es-3 a | % 61
  r fs-3 a-1 r fs as-1 | % 62
  r fs-3 b-4 r fs \glissmap #0 #1 \glisstofing bs-4\glissando | % 63
  \fgup <es, cs'-4>2-\barreText "½BVI"  r4 | % 64
  r8 a, cs e fs( e) | % 65
  r d( b) gs e4 | % 66
  r8 gs d' e fs( e) | % 67
  r d( cs) a e4 | % 68
  r8 e'-0 b'(-4 a)-2 e-0 \glisstofing <cs\3>-3\glissando | % 69
  b-0 d-2 gs(-4 fs)-1 d b-0 | % 70
  a( gs) fs' e \slurUp <gs, d'>( b) \slurDown | % 71
  a4 r r | % 72
  R2. | % 73
  R | % 74
  <a-3 c-2 fs-4>4 <c ds a'> <ds fs c'> | % 75
  <fs a ds>2. | % 76
  \snle <fs'\2\harmonic>-\harm "VII"  | % 77
  r8. <cs,-3 e-1 a-2 e'-4>16 q2 | % 78
  r4 <b-3 ds-4 fs-1> <b-3 d-2 gs-4> | % 79
  \override TextScript #'script-priority = #10000 <a cs a'-4>2-\barreText "½BII" \fermata r4 | \bar "|."% 80
  
  
  
}

middle = \relative c'' {
  s2.*6 | % 1-6
  \voiceThree \slurDown c4 \acciaccatura e8 d4-4 c  | % 7
  b \acciaccatura d8-4 c4 s | % 8
  s2. | % 9
  \voiceTwo \restPos #0 \dbarre "V" r4\stasp <c e> q\stosp | % 10
  r \setFgLe <d-2 f-3> q | % 11
  \dbarre "V" r\stasp <c e> q\stosp | % 12
  s2. | % 13
  g4\rest <e-3 gs-1>2 | % 14
  \restPos #-4 <e gs>4 r r | % 15
  f\rest <e a>2 | % 16
  s2. | % 17
  \restPos #0 \dbarre "V" r4\stasp <c' e> q\stosp | % 18
  r <c-1 f-2> <c fs-3> | % 19
  s2.*3 | % 20-22
  r4 <a-3 b> <a b> | % 23
  s2. | % 24
  s2.*16 | % 24-40
  s2. | % 41
  \voiceTwo \restPos #0 \dbarre "V" r4\stasp <c e> q\stosp | % 42
  r <d f> q | % 43
  r <c e> q | % 44
  s2. | % 45
  g4\rest <e gs>2 | % 46
  \restPos #-4 <e gs>4 r r | % 47
  f\rest <e a>2 | % 48
  s2.*8 | % 49-56
}

lower = \relative c {
  \oneVoice e4-\tweak #'extra-offset #'(-3.2 . 1) \mf fs8 gs a b | % 1
  c2. | % 2
  a4 b8 c d e | % 3
  f2. | % 4
  \voiceFour d4 d d | % 5
  \setFgLe <ds-1>2. | % 6
  <e-2 a-3>2. | % 7
  <e a>2 <e gs b>4\fermata | % 8
  R2. | % 9
  a,2. | a | % 10-11
  a | c4 r r | % 12-13
  \fgdo <b-2>2. | \ign e, | % 14-15
  a | R | % 16-17
  a | a | % 18-19
  b8 \restPos -7 r r4 r | \once \multiRestPos -7 R2. | % 20-21
  \fgdo <ds-1> | \fgdo <b-2> | % 22-23
  e, | % 24
  <d' gs-1 b>4 q q | % 25
  s2. | % 26
  <c a'>4 q q | % 27
  s2. | % 28
  \oneVoice \slurDown a8( b c) d( e f) ~ | % 29
  \voiceFour f2. | % 30
  \oneVoice \tieDown a,8( b c) d( e f) ~ | \noBreak % 31
  \voiceFour f2. | % 32
  \oneVoice a,8( b c) d( e-1 f)-2 ~| % 33
  \voiceFour f2 f4\rest \tieNeutral| % 34
  <f ds'> f\rest <f-2 a-1>\glissando | % 35
  <e gs>2. | % 36
  s2.*4 | % 37-40
  R2. | % 41
  a,2. | a | % 42-43
  a | c4 r r | % 44-45
  b2. | \ign e, | % 46-47
  a | % 48
  \multiRestPos -7 R | % 49
  r4 <e'-\fgTwkXMove #3.7 #1 bf'-3 cs-4> <d a' d> | % 50
  \multiRestPos -7 R2. \stopMultiRestPos | % 51
  g4\rest <d gs-1 b> <c a' c> | % 52
  d2. | % 53
  e4 e\rest e\rest | % 54
  e,2 e4 | % 55
  a2 s4 | % 56
  a2. | e | % 57-58
  e | a | % 59-60
  <cs'-2>4. cs | <d-2> d | % 61-62
  <d-2> d | cs2 s4 | % 63-64
  a,2. | e | % 65-66
  e | a | % 67-68
  \fgdo <cs-1> | d | % 69-70
  e,2 e4  | % 71
  a8 e fs gs a b | % 72
  cs^\markup {\bold Vivo} a\< b cs d e\! | % 73
  f!2. | % 74
  <ds-1>4 fs a | % 75
  c2. | % 76
  s | % 77
  e,, | % 78
  e2 <e'-1>4 | % 79
  <a,-0 e'>2\fermata r4 | % 80
  
}

\score {
  \new Staff \with {
    
  } { << \upper \\ \middle \\ \lower >> }
  \layout {
    \context {
      \Voice
      \consists \fingeringSlideEngraver
    }
  }
  %\midi {
    %\context {
      %\Score
      %tempoWholesPerMinute = #(ly:make-moment 100 4)
    %}
    
  %}
}
