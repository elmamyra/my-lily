\version "2.17.9"
\language "english"
\include "functions/noteColumn.ly"
\include "functions/beam.ly"
\include "functions/rest.ly"
\include "functions/arpegio.ly"
\include "functions/barre.ly"
\include "functions/fingering.ly"
\include "functions/stringNumber.ly"
\include "functions/stem.ly"
\include "functions/dynamic.ly"
\include "functions/slur.ly"
\include "functions/glissando.ly"
\include "functions/fingeringSlideEngraver.ly"
\include "functions/markup.ly"

\header {
  title = \markup  \center-column {"Elegie" \null }
  composer = "J.K Mertz"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

\paper {
  system-system-spacing #'padding = #2
  bottom-margin = #15
  ragged-last-bottom = ##f
  


}
harmBlack = {\once \override NoteHead.style = #'harmonic-black }
harmXII = ^\markup {\small \center-align "XII"}

rom = #(define-music-function (parser location str) (string?)
    #{ -\markup { \small \center-align $str } #})

romSpace = #(define-music-function (parser location str) (string?)
    #{ -\markup { \small \center-align \hspace #4 $str } #})



fi = \relative c'' { c64 f e a, c f e}
fii = \relative c'' { b64 f' e gs, b f' e}


upper = \relative c' {
  %\set Score.skipTypesetting = ##t
  \key a \minor
  \time 12/8
  \tempo "largo"
  \set Score.connectArpeggios = ##t
  \mergeDifferentlyDottedOn \mergeDifferentlyHeadedOn
  
  \setFgLe \fgAutoXPad #.3
  
  <e a c>4.\p q4 q8 <c f a>2. | % 1
  <a' b>4. q4 q8 <e gs>2. | % 2
  \once \override TextSpanner #'(bound-details left text) = "arpa"
  \once \override TextSpanner #'(bound-details left-broken text) = ##f 
  e'4.\<\arpeggio\stasp e4 e8 c'4\!\> a8 f d b\! | \break % 3
  <f'-1>4 e8\stosp \fgup \acciaccatura <g!-4> \fgPrio <f-1>4 e8 <gs, b e>4 r8 r <gs d' f> e' | % 4
  <e-1 c'-4>4.-\markIt "espressivo il canto" <e c' ~ >4 c'16. <b-4>32 \arpPos #-3 #3 <f a>2.\arpeggio | \break % 5
  <b-4>4. b4 ~ b16. a32 gs4.\arpeggio ~ gs4 <gs-1>8 | \noBreak % 6
  <a-1>4. \fgPrio <b-4>4 <b-4>16( <d-4>) d4-> <c-1>8 <c-4>4-> <b-3>8 | \break % 7
  e,4. ~ <a, c e>8 q q <e'-1 a-1> q <c e a> q q q | % 8
  b b b f'4. \bar "" \break
    f e4 ~ e16. e32 | % 9
  e4. \fgup \fgPrio <fs-3>4-> ~ fs16. \fgdo \fgInStaff <f-1>32 e4. \fgPrio <fs-3>4-> ~ fs16. \fgdo <f-1>32 | \break % 10
  e4.-> e \fgPrio <b-0 gs'-4>8 <b e> \fgPrio <b f'-1> \fgPrio <b-0 gs'-1> <b-0 e-0> <b gs'-4> | % 11
  <gs b e>4 r8 r \times 2/3 { g'16\rest <b, es gs>[\pp q] }\times 2/3 { q q q } <b e gs>4 r8 f''\rest
  \times 2/3 { g,16\rest <gs, d' f>[\pp q] } \times 2/3 { q-\markIt "rit." q q } \pageBreak | % 12
  
  \stemExtreme #'(2.3)
  e'8-\romSpace "IV" <f-1>-> <e-0> \restPos #6.5 r <f-1>-> <e-0> r <f-2>-> <e-1> \bar "" \break r <f-2>-> <e-1> | % 13
  r <f-1>-> <e-0> r <f-1>-> e \bar "" \break r <c'-4> <b-4> <a-1> <g-4> <f-2> | % 14
  <e-0>-\romSpace "IV" f-> e \bar "" \break r f-> e r f-> e r f-> e | % 15
  r f-> e r f-> e r c'-> b \bar "" \break a g! f | % 16
  e d c b c d \bar "" \break e2.-> | % 17
  \restPos #7.5 r8 e4-> r8 <f-1>4-> r8 e4-> \bar "" \break r8 e4-> | % 18
  \voiceTwo s2. \restPos #0 \restMove #2 r8 c c c c c | % 19
  s2. \restMove #2 r8 c c c c c | % 20
  \voiceOne  \restPos #7 r4.-\rom "IX" e' r \bar "" \break e | % 21
  \restPos #0 r4.-\markIt "misterioso" \arpExt #1 #1 f,,->\arpeggio r e->\arpeggio | % 22
  r d->\arpeggio d\fermata r \bar "||" | % 23

  \time 4/4 \tempo "Andante con espressione" \slurDown
  s1 | % 24
  %\stemShort #'(1 0)
  \stemExtremeOff
  \stemExtreme #'(2 1.9 1.3)
  c''4 c8. <b-4>16 b4 <a-1>8. <e-0>16 | % 25
  \slurUp <g-4>4(  \times 2/3 { <f-1>8) c8. <d-4>16 } <e-0>4 \scaleDurations 2/3 { e8 e8. e16 } | % 26
  \slurDown \times 2/3 { ds4 ds8 } \scaleDurations 2/3 { \times 2/3 { \shape #'((0.5 . 3) (.5 . 3) (0 . 2.5) (0 . 2)) Slur \beamExt #.5 
    \fgup \glisstofing \glissmap #1 #0 <gs, d'-4>16[(\glissando \fgup <b'-4>) b] } \fgup <gs-1> <e-0> f! d \dynSpan #4 c8.^\< b16 c d\! } e4 | % 27
  \scaleDurations 2/3 { \beamExt #.3 \snAddStemSupport <b-1\3>16 <c-2> \fgup <ds-1> <e-0> \times 2/3 { \fgup <gs-1>[ \slurPos #1.8 #2.3 a( d?)] } <d-3> <c-1> <a-2> <e-0> 
    \fgup <ds-4> \fgup <d-3> \tieDown \dynSpan #5 c8^\<-> ~ c b16 c\! gs^\> e' ds e e e\! } | % 28
  <c'-4>4 c8. b16 b4 a | % 29
  \times 2/3 { <d,-3 g-4>4 \slurPos #1.8 #2.5 <g-4>16(-\markIt "(ben legato)" <d'-4>) }  \scaleDurations 2/3 { \times 2/3 { \setFgUp <d-4> cs c } 
    \times 2/3 { <b-1>[-\markIt "dim." \sndo \snInStaff <a-4\2> <g-2>] } \times 2/3 { <fs-1> <g-2>16. \sndo <f\1>32 }} <f-1>4 e8. e16 | % 30
  \scaleDurations 2/3 { e8 d e \setFgLe <g-4>16 f \times 2/3 { <e-0>([ f) <a,-1>] } \fgup \beamExt #.5 <af-4> <d-4> d c b c 
    \times 2/3 { <e-0>[ \slurPos #1.8 #2.5 <g-4>( <d'-4>)] } d8. c16 \fgup <ds,-4> <e-0> | % 31
    
    <g, b a'-4>8.-> \setFgUp <gs'-3>16 <g-2> <fs-1> f-\markIt "rit." \setFgLe <e-0> <fs, ds'>_\markIt "dolcissimo" <e'-0> \stopDynSpan <g,-0 e'-0>\pp <f d'> } c'4-\markIt "a tempo" b'\rest | % 32
  \mkMove #-4 #-1.5 <c-4>4-\markIt "dolce" \scaleDurations 2/3 { <f, c'>8 <f b-3> <f-2 a-1> } <a-4>4-> \scaleDurations 2/3 { \beamExt #.3 <e-4 g-2>16 g \fgup <fs-1> \fgup <g-2> <e-1 c'-4>[ <e-0>] } | % 33
  <a-1>4-> \scaleDurations 2/3 { <a-4>8 <g-2>-> <g-2>16 <f-1> } \fgup \fgPrio <ds-4>4-> \scaleDurations 2/3 { <e-0>4 e8 | % 34
  <c'-4>4 <c-4>16(\glissando \fgYmove #.4 \mkPad #2 <f-4>)_\markIt "dolcissimo" <f-4> <e-3> <d-1> <c-4\2> <b-3> <a-1> } <a-4>4 \scaleDurations 2/3 { <e-4 g-2>8[ \grace { g16[( a) g fs( g])
    \once \override Flag #'stroke-style = #"grace" \tiny \slurPos #1.8 #2.5 g( \normalsize 
    \once \override TextSpanner #'(bound-details left text) = \markup \markItCmd "rit."
    \once \override TextSpanner #'direction = #DOWN  e'16)[\pp\stasp e e e e] }
    \once \slurUp <e-2>-.(_\markIt "dolce" \setSnDo \snYmove #-.5 <c-3\2>-. <g-1\3>-. <e-0>-.)]\stosp } | % 35
  <f-2 a-1>4->-\markIt "ten." \scaleDurations 2/3 { <g, b a'-4>8 <g b g'-2> q16 <f'-1> } e4 \scaleDurations 2/3 { e8 <g, e'> <g c e> | % 36
   r16 \mkMove #-1.5 #.3 <e'-0>-\markIt "espress." \fgPrio \fgYmove #.3 <d-4 f-2> e <d-1 a'-4> \fgup <gs-3> <gs-4>([ <c-4>)] <d,-2 c'-4>8.-> <b'-3>16 <a-1>8 \fgup <g-4>8. <f-2>16 <e-0>8 <e g> q | % 37
   r16 <e-0> <d f> e <b'-4>32 \fgup <gs-1>_\markIt "cresc." \fgdo \glisstofing \glissPad #0 #-1.3 <b-4>(\glissando \fgdo <e-\tweak #'transparent ##t -4>) 
   e16-> \mkXMove #-1.5 <d-2>-\markIt "espress." d <c-4> c <b-3> <b-4>-> <a-1> a-> \fgup <g-4> g-> <f-2> <e-0>8 <e g> q  | % 38
   \stemExtreme #'(2 1.9 1.9)
   \mkYMove #3 \fgPad #.5 <f-2 a-1>16.-\rom "V" a32 <f a>4 \fgPad #.5 <e-1 a-1>16. a32 <e a>4 \fgPad #.3 <fs-4 a-1>16. a32 <fs a>4 <c'-4>8 <b-4> <a-1> } | % 39
   \stemExtreme #'(2.3 1.9 1.5)                                                                          
   \scaleDurations 2/3 { <e-0>8 \mkYMove #-.3 <e'-4>_\markIt "dolce" \fgup <ds-3> ds e e r b as as b b | % 40
   \arpExt #.5 #.5 \fgPrio \mkMove #-.5 #-2 <c-4>4->\arpeggio-\rom "VII" \fgup <b-2>8\arpeggio c4->\arpeggio b8\arpeggio e,4 \fgup <ds!-1>8 
   \ign gs4->\arpeggio \fgup <fs-4>8 | % 41
   e e' ds ds e e r b as as b b | % 42
   c4->\arpeggio b8\arpeggio c4->\arpeggio b8\arpeggio e,4 ds8 \ign gs4->\arpeggio fs8 | % 43
   r e \once \override Score.AccidentalPlacement #'left-padding  = #2 ds e  f! e r ds e \setFgUp \fgPrio  \ign <gs-1>4->\arpeggio <fs-4>8 | % 44
   r e ds e f! e r ds e  \ign gs4->\arpeggio fs8 | % 45
   e ds e \tieUp e4. ~ e8 ds e e4. ~ | % 46
   e8 ds e e4. \dynSpan #5 r8^\< \fgYmove #.5 \setFgLe <d-1> <e-0>\! <f-4>^\> <e-0> <d-1>\! | % 47
   
   <d-3>16 <a'-4> a8 \fgup <gs-4> <gs-4>16( <c-4>) c8 <b-3> \slurPos #1.8 #2.5 <b-4>16( <f'-4>) f8 f f <e-3> <e,-0>} | % 48
   
  %\stemShort #'(1 0)
  \stemExtremeOff
  \stemExtreme #'(2 1.9 1.3)
  c'4 c8. <b-4>16 b4 <a-1>8. <e-0>16 | % 49
  g!8. f16 \scaleDurations 2/3 { f8 c8. d16 } <e-0>4 \scaleDurations 2/3 { e8 e8. e16 } | % 50
  \slurDown \scaleDurations 2/3 {  ds8 e ds \set tupletSpannerDuration = #(ly:make-moment 1 12) \times 2/3 { \shape #'((0.5 . 3) (.5 . 3) (0 . 2.5) (0 . 2)) Slur \beamExt #.5 
    \fgup  <gs, d'>16( b') b  \setFgUp \beamExt #.3 <a-2>[ <gs-1> <e-0>] <f!-2> <b,-0> <e-0> } <d-4> c \times 2/3 { b[ c e] } g16.-> f32 e8 ~ e e16.[ d32]  }  | % 51
  \scaleDurations 2/3 { \beamExt #.3 \snAddStemSupport <b-1\3>16 <c-2> \fgup <ds-1> <e-0> \times 2/3 { \fgup <gs-1>[ \slurPos #1.8 #2.3 a( d)] } <d-3> <c-1> <a-2> <e-0> 
    \fgup <ds-4> \fgup <d-3> \tieDown c8 ~ c b16 c gs e' ds e e e } | % 52
  <c'-4>4 c8. b16 b4 a | % 53
  \unset tupletSpannerDuration \times 2/3 { \setFgLe <d,-3 g-4>4 \slurPos #1.8 #2.5 <g-4>16( <d'-4>) }  \scaleDurations 2/3 { \times 2/3 { \setFgUp <d-4> cs c } 
    \times 2/3 { <b-1>[ \sndo \snInStaff <a-4\2> <g-2>] } \times 2/3 { <fs-1> \fgPrio \once \override Script #'staff-padding = #'() <g-2>16._> \sndo <f\1>32 }} \fgPrio<f-1>4-> e8. e16 | % 54
  \scaleDurations 2/3 { e8 d e \setFgLe <g-4>16 f \times 2/3 { <e-0>([ f) <a,-1>] } \fgup \beamExt #.5 <af-4> <d-4> d c b c 
    \times 2/3 { <e-0>[ \slurPos #1.8 #2.5 <g-4>( <d'-4>)] } d8. c16 \fgup <ds,-4> <e-0> | % 55
    
    <g, b a'-4>8.-> \setFgUp <gs'-3>16 <g-2> <fs-1> f-\markIt "rit." \setFgLe <e-0> <fs, ds'>_\markIt "dolce" <e'-0> \stopDynSpan <g,-0 e'-0> <f d'> <e c'>8-\markIt "a tempo" <g c e> q q q <c e> }  | % 56
  <c'-4>4 \scaleDurations 2/3 { <f, c'>8 <f b-3> <f-2 a-1> } <a-4>4-> \scaleDurations 2/3 { \beamExt #.3 <e-4 g-2>16 g \fgup <fs-1> \fgup <g-2> <e-1 c'-4>[ <e-0>] } | % 57
  <a-1>4-> \scaleDurations 2/3 { <a-4>8 <g-2>-> <g-2>16 <f-1> } \fgup \fgPrio <ds-4>4-> \scaleDurations 2/3 { <e-0>4 e8 | % 58
  <c'-4>4 <c-4>16(\glissando \fgYmove #.4 \mkPad #2 <f-4>)_\markIt "dolcissimo" <f-4> <e-3> <d-1> <c-4\2> <b-3> <a-1> } <a-4>4 \scaleDurations 2/3 { <e-4 g-2>8[ \grace { g16[( a) g fs( g])
    \once \override Flag #'stroke-style = #"grace" \tiny \slurPos #1.8 #2.5 g( \normalsize 
    \once \override TextSpanner #'(bound-details left text) = \markup \markItCmd "rit."
    \once \override TextSpanner #'direction = #DOWN  e'16)[\pp\stasp e e e e] }
    \once \slurUp <e-2>-.(_\markIt "dolce" \setSnDo \snYmove #-.5 <c-3\2>-. <g-1\3>-. <e-0>-.)]\stosp } | % 59
  <f-2 a-1>4-> \scaleDurations 2/3 { <g, b a'-4>8 <g b g'-2> q16 <f'-1> } e4 \scaleDurations 2/3 { e8 <g, e'> <g c e> | % 60
   r16 \mkMove #-1.5 #.3 <e'-0>-\markIt "espress." \fgPrio \fgYmove #.3 <d-4 f-2> e <d-1 a'-4> \fgup <gs-3> <gs-4>( <c-4>) <d,-2 c'-4>8. <b'-3>16 <a-1>8 \fgup \fgPrio <g-4>8.-> <f-2>16 <e-0>8 <c e> q | % 61
   r16 <e-0> <d f> e <b'-4>32 \fgup <gs-1>_\markIt "cresc." \fgdo \glisstofing \glissPad #0 #-1.3 <b-4>(\glissando \fgdo <e-\tweak #'transparent ##t -4>) 
   e16-> \mkXMove #-1.5 <d-2>-\markIt "espress." d <c-4> c <b-3> <b-4>-> <a-1> a-> \fgup <g-4> g-> <f-2> <e-0>8 <c e > q  | % 62
   \stemExtreme #'(2 1.9 1.9)
   %\set Score.skipTypesetting = ##f
   \mkYMove #3 \fgPad #.5 <f-2 a-1>16.-\rom "V" a32 <f a>4 \fgPad #.5 <e-1 a-1>16. a32 <e a>4 \fgPad #.3 <fs-4 a-1>16. a32 <fs a>4 <c'-4>8 <b-4> <a-1> } | % 63
   \set Voice.beamExceptions = #'()
   \set Voice.baseMoment = #(ly:make-moment 1 12)
   \set Voice.beatStructure = #'(1 1 1 1 1 1 1 1 1 1 1 1)
   \scaleDurations 2/3 { \setFgDo e,,64 <c''-1> <f-2> <e-0> <a,-3> c f e a,, \fi c \fi e \fi c \fi a \fi \bar "" e <b''-1> <f'-3> <e-0> <gs,-2> b f' e gs,, \fii b \fii e \fii b \fii gs \fii } |  % 64
   \unset Voice.baseMoment
   \unset Voice.beatStructure
   \scaleDurations 2/3 {\setFgLe <a''-1>4. \restPos #8 r8 r16 <c-4> b a <a-1>8-> \fgup \fgup \fgPrio <gs-1>-> gs16 <a-1> \tieUp <c-4>8-> ~ c16 <b-3> c b | % 65
  <a-1>4. r8 r16 <c-4> b a <a-1>8-> \fgup \fgPrio <gs-1>-> gs16 <a-1> <c-4>8-> ~ c16 <b-3> c b | % 66
  <c, e a> a' a <e a> <es gs> <e a> \fgPrio \fgPad #.5 <e-1 b'-4 d-2>8-> \fgPad #.5 <e-3 a-4 c-2> <b f'>16[ <c e>] <gs d' f-1>8-> <a c e> <b-0 e-0>16 <d-1> <a c> <a c> <a b> q q <gs b e> | % 67
  \slurUp <a-3>-.( a-. a-. a-. a-. a-.)  \fgPrio <a-3>-.( a-. a-. a-. a-. a-.) \tweak Dots.transparent ##t e'4.->\arpeggio e4->\arpeggio e8->\arpeggio | % 68
  <c, e a>4 <d' f>16.\fermata e32 <a, c e>4 <c'-4>16.\fermata b32 <c,-1 e-1 a-1>16 <c e a> q q q q q8 q <c e c'>} | % 69
  <a c e a>1\fermata \bar "|." | % 70
                        
  
                         
                         
                         
                                                                                                       
                                                        
  
  
}

middle = \relative c' {
  \voiceTwo \setFgLe \fgInStaff
  s1.*4 | % 1-4
  f8\rest <a-3 c-1>\p q a <a c> q \force #1.1 q\p q q q q q | % 5
  \force #1.1 <b-1 f'-3> <d, b' f'> q q q q \force #1.1 <gs b e> q\p q \fgri \fgPad #0 <gs b f'-4>-\tweak #'extra-offset #'(.3 . 0) ^> <gs b e> <b-1 f'-\fgTwkYMove #-.7 #3 > | % 6
  \moveBeam #-1.8 #-1.8 <c-1 e-1> <a-3 c f-2>^>\p <a c e> \moveBeam #-2.4 #-3 \fgPrio <b-0 d-2> <gs b d>\p q b\rest <c-3 e-2>\p q b\rest <d-2 f-1> q | % 7
  \force #1.1 \moveBeam #-1.7 #-1.7 <a c> q q s4. s2. | % 8
  \moveBeam #-2.3 #-2.3 \fgYmove #-.8 <a-2>8 a a \moveBeam #-2.3 #-2.3 <a b> q q g\rest q q g\rest q q | % 9
  \voiceThree <gs-1 b> q q \voiceTwo \moveBeam #-1.6 #-1.6 \fgri \fgPad #.1 <a-2 c-1> q q \voiceThree <gs b> q q \voiceTwo \moveBeam #-1.6 #-1.6 \fgri \fgPad #.1 <a-1 c-2> q q | % 10
  \voiceThree <gs b> q q q q q s2. | % 11
  s1. | % 12
  \set Voice.beamExceptions = #'()
  \set Voice.baseMoment = #(ly:make-moment 1 8)
  \set Voice.beatStructure = #'(1 1 1 1 1 1 1 1 1 1 1 1)
  \override Beam #'damping = #+inf.0
  \voiceTwo <e'-0>32 <b-1> \fgup <gs-3> b f' b, gs b e b gs b \restPos #0 r b gs b f' b, gs b e b gs b r <c-1>^\rom "V" <a-3> c f c a c e c a c r c a c f c a c e c a c | % 13
  r <d-2>^\rom "VII" <b-4> d f d b d e d b d r d b d f d b d e d b d r <c-1>^\rom "V" <a-3> c c' c, a c b' c, a c a' c, a c g' c, a c f c a c | % 14
  e b gs b f' b, gs b e b gs b r b gs b f' b, gs b e b gs b r c^\rom "V" a c f c a c e c a c r c a c f c a c e c a c | % 15
  r <d-2> <b-4> d f d b d e d b d r d b d f d b d e d b d r c^\rom "V" a c c' \harpYMoveOn #-1 c,\< a c b' c, a c\! a' c,\> a c g'! c, a c f c a c\! | % 16
  e a,\< f a d a f a c a f a\! b a\> f a c a f a d a f a\! \voiceThree <a c>16 e32\pp q e q e q e q e q e q e, q a q e q c' q a q | % 17
  \voiceTwo \restPos #1.5 r <c'-1> <a-3> c e c a c r c a c r c a c f c a c r c a c r b a b e b a b r b a b r b gs b e b gs b r b gs b | % 18
  \voiceThree e,,16 b'32 e gs b, e gs b e, gs b e gs, b e \fgup <gs-1>-\rom "IV" <b,-1> <e-2> gs <b-4>16( <e-4>) \bar "" \break
  e,,,32 <a''-2> <e'-4> a, <c,-1> a' e' a, c, a' ds a c, a' e' a, c, a' f'-> a, c, a' e' a, | % 19
  \revert Beam #'damping e,,16 b'32 e gs b, e gs b e, gs b \bar "" \break e gs, b e gs b, e gs b16( e) 
  \override Beam #'damping = #+inf.0 e,,,32 a'' e' a, c, a' e' a, c, a' ds a c, a' e' a, c, a' f' a, c, a' e' a, | % 20
  \voiceTwo \restPos #0 \revert Beam #'damping r <e-1> <d-3> e \fgup <gs,-2> e' d e <b-0> e d e e' e, d e b e d e gs, e' d e r e d e gs, e' d e b e d e e' e, d e b e d e gs, e' d e | % 21
  s1.*2 | % 22-23
  
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \times 2/3 {\tupletUp r8^\rom "V" a, c \tupletDown e c a \tupletUp r a c \tupletDown e c a} | % 24
  \scaleDurations 2/3 { r a <c-1> <e-1> c a r a c e c a | % 25
  \dynSpan #6 r <f-3>^\< <a-2> <c-1> a f\! g\rest e^\> a c a e\! } | % 26
  s1 | % 27
  s2. \scaleDurations 2/3 { s8. \beamExt #-1 d'16 c b | % 28
  \beamExt #-.5 <e-1>8 a, c e c a r a c e c a } | \noBreak % 29
  s1*2 | % 30-31
  s2. \voiceThree \scaleDurations 2/3 { <g c e>8 q <c e>  | % 32
  \voiceTwo r8 <a-2 f'-1> <a f'> a a <a-3> r <fs ds'> q s4.  | % 33
  s2. s4. \voiceThree \moveBeam #.8 #.8 \ign g8 g \ign g | % 34
  \voiceTwo r <a-2 f'-1> q \fgPad #.5 <c-1 f-1 a-1> <c f a> <c-1 f-1> r <fs, ds'> q s4. } | % 35
  s1*4 | % 36-39
  \set Voice.baseMoment = #(ly:make-moment 1 12)
  \override Beam #'damping = #+inf.0 \setSnDo \snAddStemSupport
  \set Score.proportionalNotationDuration = #(ly:make-moment 1 32) \scaleDurations 2/3 { e'32 \fgNoSpaceOn <b-0> \fgup <gs-2\5> b e' b, gs b ds' b, gs b ds' b, gs b e' b, gs b e' b, gs b 
  \setFgUp r <b-0> <gs-2\4> b b' b, gs b as' b, gs b as' b, gs b b' b, gs b b' b, gs b | % 40
  \once \override Accidental #'extra-offset = #'(2 . 0) \arpXmove #1.5 \setFgLe \fgPrio <b-\fgTwkYMove #-.9 #0 ds-\fgTwkXMove #2.2 #2 >\arpeggio ds a ds a ds a ds 
  <b ds>\arpeggio ds a ds <b ds>\arpeggio ds a ds a ds a ds <b ds>\arpeggio ds a ds e c a c a c a c ds c a c <c ds>\arpeggio c a c a c a c fs c a c | % 41
  e b gs b e' b, gs b ds' b, gs b ds' b, gs b e' b, gs b e' b, gs b r b gs b b' b, gs b as' b, gs b as' b, gs b b' b, gs b b' b, gs b | % 42
  \once \override Accidental #'extra-offset = #'(2 . 0) \arpXmove #1.5 <b ds>\arpeggio ds a ds a ds a ds <b ds>\arpeggio ds a ds <b ds>\arpeggio ds a ds a ds a ds 
  <b ds>\arpeggio ds a ds e c a c a c a c ds c a c <c ds>\arpeggio c a c a c a c fs c a c | % 43
   \setFgUp r <b-1> <gs-3> b <e-0> b gs b <ds-1> b gs b e b gs b <f'-4> b, gs b e b gs b r <c-2> <a-3> c <ds!-1> c a c <e-0> c a c <c ds>\arpeggio c a c a c a c fs c a c | % 44
  r <b-1> <gs-3> b <e-0> b gs b <ds-1> b gs b e b gs b f' b, gs b e b gs b r c a c ds! c a c e c a c <c ds>\arpeggio c a c a c a c fs c a c | % 45
  <e-0> <b-1> <gs-3> b <ds-1> b gs b <e-0> b gs b e b gs b gs b gs b gs b gs b e b gs b <ds-1> b gs b <e-0> b gs b e b gs b gs b gs b gs b gs b | % 46
  e b gs b ds b gs b e b gs b e b gs b gs b gs b gs b gs \unset Score.proportionalNotationDuration b s8 
  \revert Beam #'damping
  \unset Voice.baseMoment
  \unset Voice.beatStructure
  \fgNoSpaceOff
  \setFgLe <gs-3 b-2> <gs b> q q q } | % 47
  s1 | % 48
                 
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \scaleDurations 2/3 { r8 a <c-1> <e-1> c a r a c e c a | % 49
                        r f a c a f g\rest e a c a e } | % 50
  s1 | % 51
  s2. \scaleDurations 2/3 { s8. \beamExt #-1 d'16 c b | % 52
  \beamExt #-.5 <e-1>8 a, c e c a r a c e c a } | \noBreak % 53
  s1*3 | % 54-56
  
  \voiceTwo  \scaleDurations 2/3 { r8 <a-2 f'-1> <a f'> a a <a-3> r <fs ds'> q s4.  | % 57
  s2. s4. \voiceThree \moveBeam #.8 #.8 \ign g8 g \ign g | % 58
  \voiceTwo r <a-2 f'-1> q \fgPad #.5 <c-1 f-1 a-1> <c f a> <c-1 f-1> r <fs, ds'> q s4. } | % 59
  s1*5 | % 60-64
  \scaleDurations 2/3 { <c'-1 e-1>16 <c e> q q q q <c-1 e-1> <c e> q q q q a' <d, f> <d f> q q  q c' <d,-2 e-1> <d e> q q q | % 65
                        <c-1 e-1>16 <c e> q q q q <c e> <c e> q q q q a' <d,-4 f-2> <d f> q q  q c' <d,-2 e-1> <d e> q q q | % 66
                        s1. | % 67
                        s2. <e, a c>16\arpeggio \stopDynSpan q^\pp q q q q <e a b>\arpeggio q^\pp q q \once \override Accidental.extra-offset = #'(1.7 . 0)<e \tweak Accidental.X-extent #'(1.5 . 0) gs b>[\arpeggio q]^\pp | % 68

  
                       } 
  
}

lower = \relative c' {
  \voiceFour \setFgLe \fgInStaff
  a4. a4 a8 f2. | % 1
  <d' f>4. q4 q8 <e, b'>2. | % 2
  <c' e a c>4.\arpeggio <b e gs d'> <a a' c e> <d a'>4 f8 | % 3
  <e-2 a-3 c-1>4. \fgPrio \fgDoLe <ds-1 a'-\fgTwkYMove #.2 #2 c-\fgTwkYMove #.2 #1 >-> e8 f-> d c-> b e, | % 4
  a2. \ign f'\arpeggio | % 5
  \ign d \ign <e, e'>4.\arpeggio r8 r \force #1 d' | % 6
  \ign <c-4>4. \ign gs-^ a d | % 7
  \ign <e, a e' ~ >\p e'16 e,\p a c e a \fgYmove #-.3 <c-1>8. \fgMoveSharp <gs-2>16 <a-3> \fgdo <ds,-2> <e-3> \setSnDo \snAddStemSupport <b-3\6> <c-4> gs-^ <a-0> e | % 8
  \ign f4.-^ ~ \ign f4 ~ f16. f32 e2. | % 9
  r16 e\p gs b f'! e \ign \fgdo \fgPrio <ds-1>4.-> r16 e,\p gs b f'! e \ign \fgdo \fgPrio <ds!-1>4.-> | % 10
  r16 e, gs b f'! e r e, gs b fs' e r e, fs-1 g-2 gs-3 a as-3 b-4 c-2 cs-3 d ds | % 11
  e4 \harmBlack <e\6>8\harmXII \harmBlack <d'\4>4.->\harmXII r4 \harmBlack <e,\6>8\harmXII \harmBlack <b''\2>4.->\harmXII | % 12
  \force #-1.3 e,,,4. d'-> e, <c'-4> | % 13
  e, <b'-3>-> a2. | % 14
  \force #-1.3 e4. d'-> e, c'-> | % 15
  e, <b'-3> \scaleDurations 1/2 {a2. s} | % 16
  \force #-1.3 f e4. e'16 e, a e c' a | % 17
  <e'-2>4 e8 e4 e8 e4 e8 e4 e8 | % 18
  e,2. e | % 19
  \scaleDurations 1/2 {e s} e | % 20
  e \scaleDurations 1/2 {e s} | % 21
  \newSpacingSection e4. d'\sf\arpeggio e, c'\sf\arpeggio | % 22
  e, b'4\sf\arpeggio f8 <e b'>4.\fermata a\rest | % 23
  a2\p a | % 24
  a a | % 25
  a a | % 26
  \scaleDurations 2/3 { b8 fs' a  \mkMove #2 #4 e,-\markIt "dolce" \fgdo <e''-1> gs, a, e' a \dynSpan #4 c^\> a e\! | % 27
  a, a' c e c a e16 e, a c d ds e r r8 r16 e, } | % 28
  \ign a2 a | % 29
  \scaleDurations 2/3 { \dynMove #-2.7 #1.6 <b-1>8\pp d g b-\markIt "dolcissimo" g d <c-3> e g c g e | % 30
  <f,-1> f' a <b-0> a \fgPrio \fgYmove #-.3 <f-3> <g,-3> e' <g-0> <c-3\4> <g-0> \fgPrio <e-1> | % 31
  <g,-1> d' g } b4 \scaleDurations 2/3 { <c, e>8 <g' c e>\p q r16 c,\< b c e g\! } | % 32
  <c,-3>4 s <c-1> \scaleDurations 2/3 { <c-1 g'-0>8 \fgPrio <g'-0 e'-\fgTwkYMove #-.8 #4 > <g-0> | % 33
    <b,-3> <d-0 g-0 f'-2> q <g,-1 g' b>-^ <d'-0 g b>16 \fgdo <cs-3> <d-1 g b>8 \fgdo <c-2> <e-1 g> <e g> e16 <c-2> <b-1> c <e-1> g } | % 34
  <c,-3>4 s <c-1> <c g'-0>8 s | % 35
  \scaleDurations 2/3 { <b-3> <d-0 g-0> <d g> g,-^ <d'-3>16 \fgup cs d8 c <e g> q \set tupletSpannerDuration = #(ly:make-moment 1 12) \times 2/3 { g16 f e d[ c b] a g! f } | % 36
    e8 gs' \fgYmove #-.3 <b-2> e,, \fgYmove #-.3 <gs'-1 b-0> gs a, \fgPrio \fgYmove #-.4 <a'-3 c-1> a \times 2/3 { a,16 f' e d[ c b] a g! f } | % 37
    e8 gs' <gs-2 b-0 d-3> e, <b''-1 e-1 gs-1> <gs-1 b-0 d-3> a,-\markIt "rit." <a'-3 c-1> <a c> \times 2/3 { a,16 f' e d[ c b] a gs a } | % 38
    <f'-4 a-3 c-1>\sf <a c> q q q q <e-3 a-4 c>\sf <a c> q q q q <ds,-2 a'-4 c>\sf <a' c> q q q q <ds,-2 a'-3 c-1>\sf <a' c> q q q q } | % 39
    \force #-1.5 e,2 e | \force #-1.5 e\arpeggio \force #-1.5 e | % 40-41
    \force #-1.5 e e | \force #-1.5 e\arpeggio \force #-1.5 e | % 42-43
    e e | e e | % 44-45
    \force #-1.5 e \force #-1.5 \fgdo <b'-4> | \force #-1.5 \fgdo <gs-1> e | % 46-47
    \scaleDurations 2/3 { e8 <e'-1 b'-3 d> <e b' d> e, <gs'-1 b-0 d-2> <gs b d> \dynSpan #6 e,\< <gs'-1 b-0 d-2> <gs b d>\! \mkYMove #-.5 q\>-\markIt "rit." q q\!} | % 48
  
  a,2 a | % 49
  a a | % 50
  \scaleDurations 2/3 { \fgPrio <b-1>8 \fgdo <fs'-3> <a-2>  e, \fgdo <e''-1> \fgPrio <gs,-1> a, e' <a c> c16 c a e c16. b32 | % 51
                        a8 a' c e c a e16 e, a c d ds e r r8 r16 e, } | % 52
  \ign a2 a | % 53
  \scaleDurations 2/3 { <b-1>8 d g b g d <c-3> e g c g e | % 54
  <f,-1> f' a <b-0> a \fgPrio \fgYmove #-.3 <f-3> <g,-3> e' <g-0> <c-3\4> <g-0> \fgPrio <e-1> | % 55
  <g,-1> d' g b r r } \stopDynSpan c,4\p ~ \scaleDurations 2/3 { c16 c b c e g } | % 56
  <c,-3>4 s <c-1> \scaleDurations 2/3 { <c-1 g'-0>8 \fgPrio <g'-0 e'-\fgTwkYMove #-.8 #4 > <g-0> | % 57
  <b,-3> <d-0 g-0 f'-2> q <g,-1 g' b>-^ <d'-0 g b>16 \fgdo <cs-3> <d-1 g b>8 \fgdo <c-2> <e-1 g> <e g> e16 <c-2> <b-1> c <e-1> g } | % 58
  <c,-3>4 s <c-1> <c g'-0>8 s | % 59
  \scaleDurations 2/3 { <b-3> <d-0 g-0> <d g> g, <d'-3>16 \fgup cs d8 c <e g> q \set tupletSpannerDuration = #(ly:make-moment 1 12) \times 2/3 { g16 f e d[ c b] a g! f } | % 60
  e8 gs' \fgYmove #-.3 <b-2> e,, \fgYmove #-.3 <gs'-1 b-0> gs a, \fgPrio \fgYmove #-.4 <a'-3 c-1> a \times 2/3 { a,16 f' e d[ c b] a g! f } | % 61
  e8 gs' <gs-2 b-0 d-3> e, <b''-1 e-1 gs-1> <gs-1 b-0 d-3> a,-\markIt "rit." <a'-3 c-1> <a c> \times 2/3 { a,16 f' e d[ c b] a gs a } | % 62
  <f'-4 a-3 c-1>\sf <a c> q q q q <e-3 a-4 c>\sf <a c> q q q q <ds,-2 a'-4 c>\sf <a' c> q q q q <ds,-2 a'-3 c-1>\sf <a' c> q q q q } | % 63
  \scaleDurations 2/3 { \dynMove #-2.8 #2 e,8\pp <a-0> <c-4> <e-4> <c-4> <a-0> e \fgdo <gs-1> <b-4> <e-4> <b-4> gs | % 64
  \ign a ~ a16 <c-4> <b-3> <c-4> \ign <b-3>8 <a-0>16 a a a } \ign <b-3>4 e, | % 65
 \scaleDurations 2/3 { \ign a8 ~ a16 <c-4> <b-3> <c-4> \ign <b-3>8 <a-0>16 a a a } \ign <b-3>4 e, | % 66
  \scaleDurations 2/3 { \dynMove #-2 #2 a8\p ~ a16 c' b c <gs-3> gs a a, \fgdo <gs-4> a b b c c <d-3 f-1> <d f-1> e f d ds e e, | % 67
  a4 g!8  \ign \fgPad #.3 \fgNoSpace \fgXmove #.9 <\tweak Accidental.extra-offset #'(2 . -.2) fs-\fgTwkXMove #2 #2 c'-4 ds-1>4 <f c' d>8 } \force #-1.3 
  <e c'>4\arpeggio \scaleDurations 2/3 { \force #-1.3 <e b'>\arpeggio \force #-1.3 <e b'>8\arpeggio | % 68
 a4 <e gs'>8\fermata a4 <e e'-2 gs-1 b-0 d-3>8\fermata a8 ~ a16 <f'-4> <e-3> <c-4> a e a e a e } | | % 69
  a1 | % 70
  
  
}

\score {
  \new Staff \with {}
  {  << \upper \\ \middle \\ \lower >> }
  \layout { 
    \context {
        \Score
        \consists "Span_arpeggio_engraver"
        
        %\remove "Bar_number_engraver"
    }
    \context {
      \Voice
      \consists \fingeringSlideEngraver
    }
  }
  
}
