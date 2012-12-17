\version "2.17.9"
\language "english"
\include "functions/rest.ly"
\include "functions/noteColumn.ly"
\include "functions/stem.ly"
\include "functions/fingering.ly"
\include "functions/stringNumber.ly"
\include "functions/rightHandFinger.ly"
\include "functions/arpegio.ly"
\include "functions/barre.ly"
\include "functions/glissando.ly"


\header {
  title = \markup  \center-column {"Capriccio" \null \null }
  composer = "Johann Kaspar Mertz"
}

\paper {
  ragged-last-bottom = ##f
  system-system-spacing #'basic-distance = #20
  bottom-margin = #15
  
  
}

markIt = #(define-music-function (parser location str) (string?)
    #{ -\markup { \italic $str } #})
enerF = \markup { \dynamic f \italic energico }

rom = #(define-music-function (parser location str) (string?)
    #{ -\markup { \halign #CENTER $str } #})


upper = \relative c'' {
  \key d \minor
  \time 4/4
  \mergeDifferentlyHeadedOn \mergeDifferentlyDottedOn \stemExtreme
  \set Staff.connectArpeggios = ##t
  \override Staff.Arpeggio #'stencil = #ly:arpeggio::brew-chord-bracket
  %\set Score.skipTypesetting = ##t
  \override StrokeFinger.avoid-slur = #'ignore
  \slurDown \setFgLe \fgInStaff \setRhUp \rhAddStemSupport \setSnDo \snInStaff \snAddStemSupport
  \tempo "Presto"
  <a-2 d-3 f-4\rh #4 >16 f'\rh #3 f\rh #2 f\rh #3  f(\rh #4 e) d\rh #2 e\rh #3 
    f\rh #4 f\rh #3 f\rh #2 f\rh #3 f(\rh #4 e) ds\rh #2 e\rh #3 | % 1
  f(\rh #4 e) d\rh #2 e\rh #3 f(\rh #4 e) d\rh #2 e\rh #3 f4\rh #4 r | % 2
  <bf-2\rh #4 >16 bf\rh #3 bf\rh #2 bf\rh #3 bf(\rh #4 <a-1>) <g-4\2\rh #2 > a\rh #3 bf bf bf bf bf( a) g a | % 3
  bf(\rh #4 a) g\rh #2 a\rh #3 bf(\rh #4 a) g\rh #2 a\rh #3 bf8.\rh #4 bf16-\markIt "ritard." <bf-2>(\glissando d) <f,-1^\3>8 | % 4
  <e-0\rh #4 >4-\markIt "a tempo" e2-> e'4\rest | % 5
  <g,-4>-> f2-> e'4\rest | % 6
  b, b2-> b4 | % 7
  d c-> c,16\< e g c e e e e | % 8
  e2\! r4 e | % 9
  \fgup \arpPos #-6 #3 <g-4>\arpeggio  f r <e-4>-> | % 10
  r <d-4>-> r cs-> | % 11
  r16 d f-> d a d bf d a d f-> d f, d' e, d' | % 12
  r d f-> d a, d' g,, d'' f,, <d''-4> f-> d d, d' f, d' | % 13
  g, d' e d bf d e d a d e d gs, d' e d | % 14
  g,! d' e d g,, d'' e d a, d' e d bf, d' e d | % 15
  r <f-2\2> <a-1>-> f r f a-> f r <a,-3> <d-4> <f-2> <a-1>4 | % 16
  \once \override TextScript #'extra-offset = #'(-1.6 . -1.6) <a d>4\arpeggio ->-\rom "X" <a f'-4>-> <a, d>->-\rom "I" <a d f>-> | % 17
  ef'\arpeggio-\rom "III" ef2-> d4 | % 18
  \fgup <cs-2> cs2-> cs4 | % 19
  r16 d f-> d a d bf d a d f-> d f, d' e, d' | % 20
  d, d' f-> d a, d' g,, d'' f,, d'' f-> d d, d' f, d' | % 21
  g, d' e d bf d e d a d e d gs, d' e d | % 22
  g,! d' e d g,,! d'' e d a, d' e d bf, d' e d | % 23
  a, f'' a-> f a, f' a-> f a,, a' d f a4 | % 24
  <a d>-> <a f'>-> <a d>-> <a d f>-> | % 25
  ef ef2-> d4 | % 26
  cs cs2-> cs4 | % 27
  d8 d,16 a' d, gs-> d a'-> d, bf'-> d, a'-> <a f'>8 d | % 28
  \fgup <cs-2>8 g!16 c bf!-> c a c gs c g c f, c' e, c' | % 29
  d8 d,16 a' d, gs-> d a'-> d, bf'-> d, a'-> <a f'>8 d | % 30
  cs g!16 c bf!-> c a c gs c g c f, c' e, c' | % 31
  d, <d'-4> a, a' d, f' a,, d' e, \fgup <g! cs-3> a, <g' e'> e <g f'> a, <g' e'> | % 32
  d d' a, a' d, f' a,, d' e, <g! cs> a, <g' e'> e <g f'> a, <g' e'> | % 33
  d'8 r \fgup \snMove #-1.7 #-.5 <c!-3\3>16 <d-1> d d \fgup <b-2> d d d \fgup <bf-3> <d-4> d d | % 34
  a d d d gs, d' d d a d d d <g, cs f>8 <g cs e> | % 35
  <f d'>\arpeggio r \fgup \snup <c!-4\6>16 <d-0> d d \fgup <b-3> d d d \fgup <bf-2> d d d | % 36
  <a-1> d d d \fgdo <gs,-1> d' d d <a-2> d d d <a-0>8 \glissmap #1 #2 \glissRiPad #1.5 <g''!-2 cs-4>\glissando | % 37
  <f-2 a-3 d-4> <a-1\1>16\p a bf( a) a a a4-> a,,8 <cs' e a> | % 38
  a'4 r a,4.-> <cs-2 e-0>8 | % 39
  <a d f>16 f' f f f( e) d e f f f f f( e) d e | % 40
  f( e) d e f( e) d e f( e) d8 <a d>4 | % 41
  <bf! d e> <b d e> <a d e> <a cs a'> | % 42
  <a d>16 f' f f f( e) d e f f f f f( e) d e | % 43
  f( e) d e f( e) d e f( e) d8 <a d>4 | % 44
  <bf d e> <b d e> <a d e> <a cs a'> | % 45
  d'4\rest d d2-> | % 46
  a4\rest a a2-> | % 47
  d,16 a d f d a a, a' f, <a'-2> <d-4> f d a a, a' | % 48
  d, <a' d f> a, q d q a q d q a q f <a'-2 d-4 f> a, <a' d f-1> | % 49
  q4 r <d,-4>16-\markIt "ritard." \fgdo <f-2> f f f( e) d <e-1> | % 50
  <f-2>1\fermata \bar "|."
}

middle = \relative c'' {
  s1*4 | % 1-4
  \voiceTwo \slurUp \setFgLe \fgNoSpaceOn \setRhUp
  \override StrokeFinger.avoid-slur = #'ignore
  \restPos #-.3 r16 <c-1\rh #3 > <bf-4\rh #2 > c\rh #3 r c bf c r c\rh #3 bf\rh #2 c\rh #3 \rhYmove #3 df(^>\rh #4 c) bf\rh #2 c\rh #3 | % 5
  r \arpPos #-1 #2 c\arpeggio af c r c af c r c af c df(^> c) af c | % 6
  \restPosOff \force #1 \restMove #1.4 g\rest \addAccSpace #1 af f af e\rest af f af b\rest af f af e\rest af f af | % 7
  \once \restPos #-.9 r g e g e\rest g e g s2 | % 8
  \restPos #-.5 r16 c b c df(^> c) bf c r c bf c r c bf c | % 9
  r c af c r c af c r bf <g-3> bf r bf g bf | % 10
  \restPos #-1.5 r <a-2> <f-3> a r a f a r g e g \restPosOff e\rest g e g | % 11
  s1*6 | % 12-17
  \restPos #-1 r16 bf! <g-3> bf r bf g bf r bf g bf \restPos #-2 r bf g bf | % 18
  r g <e-1> g \restPosOff f\rest g e g a\rest g e g f\rest g e g | % 19
  s1*6 | % 20-25
  \restPos #-1 r16 bf! g bf r bf g bf r bf g bf \restPos #-2 r bf g bf | % 26
  r g e g \restPosOff f\rest g e g a\rest g e g f\rest g e g | % 27
  s1*11 | % 28-38
  <d' f>8 \snInStaff <a-1\3>16 a bf(-> a) a a s2 | % 39
  s1*6 | % 40-45
  \voiceThree d,16 \setSnUp \snAddStemSupport <a''-3\2> <f-2\3> a \voiceTwo \fgNoSpaceOff <d-4> a f a d a f a \voiceThree d,, a'' f a | % 46
  d,, <f'-2\2> <d-3> f \voiceTwo <a-1> f d f a f d f \voiceThree \sndo \snAlignLe <a,-4\4> f' d f \voiceTwo | % 47
  
}

lower = \relative c' {
  \voiceFour
  d4.-\enerF a8 d4. a8 | % 1
  d8-> a-> d-> a-> d4 r | % 2
  g4. d8 g4. d8 | % 3
  g-> d-> g-> d-> g4 r | % 4
  c,2 c | c c | c c | c c | % 5-8
  c c | f, \arpPos #-6 #2 g\arpeggio | a a | % 9-11
  d4\p a'8\< bf\! a4 f8\< e | % 12
  d4\!\p a8\< g\! \arpPos #-6 #2.5 f4\arpeggio d'8\< f\! | % 13
  g4 bf-> a-> gs-> | % 14
  g!-\parenthesize -> g,!\< a bf | % 15
  a\! a'-> a,4. a8 | % 16
  f''\arpeggio-\markIt "risoluto" a,, f'' a,, f' a, f' a, | % 17
  g2\arpeggio-\markIt "tristamente" g | % 18
  a a | % 19
  d4 a'8\< bf\! a4 f8\< e\! | % 20
  d4 a8\< g\! f4 d'8\< f\! | % 21
  g4\p bf a gs | % 22
  g g,\< a bf | % 23
  a\! a'-> a,4. a8 | % 24
  f''8 a,, f''\sf a,, f' a, f'\sf a, | % 25
  g2 g | % 26
  a a | % 27
  d8 d d d d d d d | % 28
  d g bf\> a gs g f e | % 29
  d\! d d d d d d d | % 30
  d g bf\> a gs g f e\! | % 31
  d\p a d a e'\f\< a, e' a, | % 32
  d\!\p a d a e'\f\< a, e' a,\! | % 33
  d r c'4-> b-> bf-> | % 34
  a-> gs-> a-> a,8\f a | % 35
  \setFgLe \fgMove #1.3 #-1  <d-3> r c4-> b-> bf-> | % 36
  a-> gs-> a-> a8 \fgYmove #-.3 <e''-3> | % 37
  d,2 a''8 d,,\f a4 | % 38
  \force #-1.2 d s a'8 d,\f a <g'-0> | % 39
  d4. a8 d4. a8 | % 40
  d-> a-> d-> a-> d4-> f,\sf | % 41
  g\sf gs\sf a\sf a\sf | % 42
  d4.\p a8 d4. a8 | % 43
  d->-\markIt "cresc." a-> d-> a-> d4-> f,\sf | % 44
  g\sf gs\sf a\sf a\sf | % 45
  d2. d4 | % 46
  d2. a'4 | % 47
  d,4. a8 \arpPos #-6 #2 f4.\arpeggio a8 | % 48
  d\ff a d a d a \arpPos #-6 #2 f\arpeggio a | % 49
  d4 r d4. a8 | % 50
  \fgYmove #-.3 <d-4>1\fermata
  
}

\score {
  \new Staff \with {
    \consists "Span_arpeggio_engraver"
  } { << \upper \\ \middle \\ \lower >> }
  \layout { 
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  
  }
  % \midi {
%     \context {
%       \Score
%       tempoWholesPerMinute = #(ly:make-moment 120 4)
%     }
%   }
}
