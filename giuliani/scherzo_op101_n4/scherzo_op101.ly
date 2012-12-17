\version "2.17.9"
\language "english"
\include "functions/fingering.ly"
\include "functions/arpegio.ly"
\include "functions/glissando.ly"
\include "functions/rest.ly"
\include "functions/stringNumber.ly"
\include "functions/noteColumn.ly"
\include "functions/fingeringSlideEngraver.ly"
\include "functions/stem.ly"

\header {
  title = "Scherzo"
  subtitle = "op. 101, Nr.4"
  composer = "Mauro Giuliani"
}


\paper {
  ragged-last-bottom = ##f
}


markIt = #(define-music-function (parser location str) (string?)
    #{
            -\markup { \italic $str }
    #})

upper = \relative c''' {
  \key a \major
  \time 3/4
  \partial 4
  \tempo "Allegro vivace, giocoso"
  \set Staff.connectArpeggios = ##t
  \override Staff.Arpeggio #'stencil = #ly:arpeggio::brew-chord-bracket
  \override Staff.Arpeggio #'script-priority = #1000
  \setFgLe \fgInStaff \arpExtFg a\arpeggio\p |
  \arpExtFg <a-4>\arpeggio gs fs\arpeggio | % 1
  <fs-3> e <d-4> | % 2
  d2. | % 3
  \arpExtFg cs4\arpeggio r \arpExt #-1.4 a\arpeggio | % 4
  <a-3> \glissRiPad #1.5  <gs-1>\glissando <a-1> | \break % 5
  <b e> <d-2> <a cs>\arpeggio | % 6
  <gs-1 b>2.-\tweak #'extra-offset #'(-2 . 0) \f | % 7
  r2 a'4 | % 8
  a gs fs | % 9
  <fs-3> \fgup <es-2> <d-2> | % 10
  d cs <gs-1 b> | \break % 11
  <fs-3 a-1> r <a-3 c-2 fs-4>\sf | % 12
  \arpExt #-2.4 <a cs!-2 e>\arpeggio <<\new Voice {\voiceOne \fgAddStemSupport \fgup <ds-3>8 \fgup <e-4> \arpNoSpace \arpExt #-1 cs\arpeggio a} 
     \\ \new Voice {\voiceFour s4 \hideNotes a\arpeggio \unHideNotes }>> | % 13
  \restPos #1 r4 <e cs'> <d b'> | % 14
  <cs a'> r r | % 15
  \glissmap #1 #1 \glissPad #3 #1.5 <fs-3 d'-2>2\glissando \glissPad #1 #2.5  <e-1 cs'-2>4\glissando | % 16
  \glissPad #4 #1 <ds bs'>2\glissando <e cs'>4 | \break % 17
  <d b'> <fs-4> \glissmap #0 #1 \glissPad #3 #1.5 <gs-1>\glissando | % 18
  <cs,-3 a'-1>2 r4 | % 19
  \snAlignRi <d'-3 fs-4\2>2 \glissPad #2 #3 <cs-2 e-1>4\glissando | % 20
  \glissLePad #5 <bs ds>2\glissando \glissmap #1 #0 \glissPad #2 #1.5 <cs e>4\glissando | % 21
  \fgup <d!-1> <b-0> <e-3> | % 22
  \setSnLe <a,-3-\snTwkYMove #-.5 #4 cs-2-\snTwkYMove #.5 #3 >2. \bar ".|:-||" \break | % 23
    \fgPrio <gs-2 cs-4>4\p q q | % 24
  <a cs>\arpeggio r8 <fs-3> <a \tweak #'transparent ##t cs>\arpeggio cs | % 25
  fs4 \glissmap #0 #1 \glissRiPad #2 <a-4>\glissando <cs,-\fgTwkYMove #.4 #1 gs'-4>\f | % 26
  \arpExtFg \arpPos #-5 #2 <a cs fs>2\arpeggio r4 | % 27
  <a b>\mf q q | \break % 28
  <gs b> r8 gs b e | % 29
  gs4 fs ds | % 30
  e2. | % 31
  \slurDown e4 f8( e) d c | % 32
  \slurUp c4( b) g | \break % 33
  c \slurDown d8( c) b c | % 34
  \fgup <g cs!-3>4 d' g, | % 35
  e'8 g, f'( e) d-. c-. | % 36
  c( b) a g a b | % 37
  \acciaccatura d c b c d e f | \break % 38
  r g, cs! g d' g, | % 39
  r4 <g e'> <gs d' e> | % 40
  <a c e> f'8( e) d c | % 41
  r4 <a b> q | % 42
  <gs b>2 r4 | \break % 43
  << {<b-2>8\glissando \glissSkipOne <d-1> a\glissando \glissSkipOne c \glissPad #2 #2.5 gs\glissando \glissSkipOne b } \\
     \new Voice {\hideNotes s8 \glissRiPad #1.5 d4\glissando c b8} >> | % 44
  <a-2 c-1>2. | % 45
  \fgup <c-3>8 <e-4> << {<b-2>\glissando \glissSkipOne <d-1> a c} \\ 
     \new Voice {s8 \hideNotes d4\glissando c8} >> | % 46
  <gs b>2. | % 47
  <<{\glissRiPad #1.5 <d'-3>8\glissando \glissSkipOne <b'-4> c, a'} \\ 
    \new Voice {s8 \hideNotes b4\glissando a8} >> <b,-1> <gs'-2> | % 48
  <c,-3 a'-4>2. | \break % 49
  <e-3>8\glissando \glissSkipOne <c'-2> << {\glissRiPad #1.5 d,\glissando \glissSkipOne <b'-4> c, a'} \\
     \new Voice {s8 \hideNotes b4\glissando a8} >> | % 50
  <b,-1 gs'-2>2 <c-3 ds-2 a'-4>4 | % 51
  <b-1 e-3 gs-2>2 <ds, a'>4 | % 52
  <b e gs>2 a''4 | % 53
  a gs fs | % 54
  fs es fs | % 55
  fs e! d | \break % 56
  d cs r | % 57
  <gs-1 b> <gs b> \glissRiPad #1.5 \glissmap #0 #0 <gs b>\glissando | % 58
  <a-1 e'>\sf \slurDown <fs'-1>8( e) \fgdo <d-2> \fgdo <cs-1> | % 59
  <gs-1 b>4 q q | % 60
  <a e'>2. | % 61
  \fgup <es'-4>4\arpeggio-"IV" es es | % 62
  \fgup \arpPos #-.5 #3 <gs-4>4.(\arpeggio-"II" fs8) d \fgdo <b-3> | \break % 63
  a4\arpeggio cs <d, gs b> | % 64
  a' r r | % 65
  r8 \fgup << {<fs-3>\arpeggio a \fgdo <d-2> e, cs'} \\ \new Voice {\ign \hideNotes fs\arpeggio } >> | % 66
  << {r  \fgdo \glissLePad #6.5 \glisstofing \glissLeY #-5 <ds,-1>\glissando \glissSkipOn \fgdo <a'-3> \fgdo  c \glissSkipOff \fgdo <e,-1> \fgdo cs'} \\
     \new Voice {s4. \hideNotes \glissPad #4 #.3 \fgInStaff \fgdo \glisstofing \glissLeY #-2 <c-2>4\glissando \fgdo <cs-2>8} >> | % 67
  r d,! gs b cs b | \break % 68
  a4 r r | % 69
  r8 \setFgDo \setSnDo \snAlignCe \snInStaff <a-2\4> <d-3\3> <fs-4\2> <cs-2> <e-1> | % 70
  r <a,-4> << {\glissPad #1 #1.5 \glissY #-.7 #-.3 <c-2>\glissando \glissSkipOne \fgYmove #-1.1 <ds-1> <cs-2> <e-1>} \\
    \new Voice {s8 \hideNotes \glissLePad #2.5 \glissY #1.4 #1.7 ds4\glissando e8} >>| % 71
  r \setFgLe \fgNoSpace \glissRiPad #1.5 <fs,-3>\glissando \glissSkipOn a d \glissSkipOff <gs,-3 b-0>4 | % 72
  <a cs>2 r4 | % 73
  <e-2>2. | \break % 74
  e | % 75
  cs'4 b cs | % 76
  d b gs | % 77
  e'2. | % 78
  <b fs'> | % 79
  r4 <b d gs>2 | % 80
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  <a cs a'>2. \mark \markup {\fontsize #-2 \italic "fine"} \bar ":|." \break | % 81
  
  \key d \major
  \repeat volta 2 {
    
    R2.\tweak #'extra-offset #'(-20 . 1) -\markup {\fontsize #4 "Trio"} | % 82
    <a-1>4 <d-2> <fs-1> | % 83
    a \arpExtFg <a, d-2 fs>\arpeggio q | % 84
    \fgup <a cs g'-2>2.\arpeggio | % 85
    R | % 86
    a4 <cs-2> e | % 87
    a <a, cs e> q | \break % 88
    <a d fs>2. | % 89
    << \new Voice {\voiceOne \slurDown \setFgLe  fs'8\arpeggio a, \fgNoSpace <g'-2>( fs) \fgNoSpace <e-4> fs} \\ \new Voice {\ign \hideNotes a,4\arpeggio } >> | % 90
    \slurDown <a'-4>8 a, g' a, <e'-0> <a,-1> | % 91
    fs' a, g'( fs) e fs | % 92
    a a, g' a, e' a, | \break % 93
    fs' a, g'( fs) \setFgDo <e-0> <d-4> | % 94
    \glisstofing <cs-2>\glissando \glissSkipOne \fgle \fgNoSpace <e-0> <a-2> cs \snSpanner "2" b\startTextSpan a | % 95
    \setFgLe \fgNoSpaceOn \fgup <gs-2>\stopTextSpan \snAddStemSupport \snup <fs-3\3> <e-0> \snup <d-4\2> <cs-2> b | % 96
    r a e cs a4 |\break % 97
  }
  
  \repeat volta 2 {
    r8 a' cs e a4 | % 98
    a2 gs4 | % 99
    r8 a, cs e g!4 | % 100
    g2 fs4 | % 101
    r8 g, <cs-1>\glissando \glissSkipOne e \fgup <d-1>4 | \break % 102
    r8 a cs g' <a, d fs>4 | % 103
    b8 as b d cs b | % 104
    \fgup \arpPos #-5 #2.5 \arpExt #-2 <as-3>\arpeggio <fs-3> as cs fs4 | % 105
    b,8 as b cs d b | % 106
    r fs' cs as fs <as cs> | \break % 107
    r fs' d b fs <b d> | % 108
    r fs' cs as fs <as cs> | % 109
    r fs' d b fs <b d> | % 110
    r fs' cs as fs <as cs> | % 111
    r fs' cs as fs <as cs> | \break % 112
    r <g'-4> <cs,-2> a! e <a cs> | % 113
    r g' cs, a e <a cs> | % 114
    <a cs g'>2.\fermata | % 115
    <a,-0>4\f <d-4> <fs-3> | % 116
    a,8 <a'-1> d, <d'-2> <fs,-3> \glissY #2.2 #2.6 <fs'-1>\glissando | % 117
    a4 <a, d fs> q | \break % 118
    <a cs g'>2. | % 119
    a,4\p <cs-4> <e-1> | % 120
    a,8 <a'-2> <cs,-3> <cs'-1> <e,-1> <e'-0> | % 121
    <a-4>4 <a, cs e> q | % 122
    <a d fs>2. | % 123
    c | \break % 124
    b4 a g | % 125
    d'2. | % 126
    \fgup <cs!-2>4 b <a-1> | % 127
    \fgNoSpaceOff <g'-2>2. | % 128
    <fs-2>4 e <d-2> | % 129
    b <e-4> <cs-1> | \break % 130
    <d-1>8 <cs-4> <d-1> <e-0> <fs-1> <g-2> | % 131
    \slurDown \fgup <gs-3>( <a-4>) <g, cs>4 gs'8( a) | % 132
    <g, cs>4 gs'8( a) <g, cs>4 | % 133
    <d'-1> \snup \snAlignRi \snRevStemSupport <fs-4\2> \glissmap #1 #0 <g, cs-1 e>\glissando | % 134
    \override Score.RehearsalMark.break-align-symbols = #'(key-signature)
    \override Score.KeySignature.break-align-anchor-alignment = #RIGHT
    d' <d fs d'-4>2\arpeggio \mark \markup {\fontsize #-2 \italic "d.c. al fine"} \bar ":|." % 135
    \key a \major
  }
}



lower = \relative c'' {
  \partial 4
  \setFgLe <cs-2 e>4\arpeggio |
  <b-2 d>2\arpeggio <a cs>4\arpeggio | % 1
  <gs-1 b-0>2 <e gs>4 | % 2
  \fgdo \glissmap #0 #0 \glissPad #3 #2 <es-3 gs>2.\glissando | % 3
  <fs-3 a>4\arpeggio r \arpPos #-1.8 #-.4 \fgYmove #-.4 <cs-3 e>\arpeggio | % 4
  <b-2 d>2 <a-4 cs-3>4 | % 5
  <gs-3>2 a4 | % 6
  e <gs-4> <b-2> | % 7
  <e-3> e, <cs'' e> | % 8
  <b d>2 <a cs>4 | % 9
  \glissmap #0 #1 \glissPad #3 #1.5 <gs-1 b>2\glissando \glissmap #0 #0 <fs-3 a-1>4\glissando | % 10
  \override Glissando.breakable = ##t
  
  \fgdo <es-3 gs>2 <cs-4>4\glissando | % 11
  \fgYmove #-.4 <d-4> r <ds-1> | % 12
  \arpPos #-2 #-1  e\arpeggio d\rest d\rest | % 13
  e,2 \glissLePad #2.5 <gs-4>4\glissando | % 14
  a a\p a | % 15
  <a-0> a a | % 16
  a a a | % 17
  a a a | % 18
  \fgYmove #-.4 <a-4> a a | % 19
  a a a | % 20
  a a a | % 21
  <<\new Voice {\voiceThree \force #.3 \setFgLe \fgXmove #1.6 \glissPad #6 #1.5 <fs'-2>2\glissando \force #.3 <gs-2>4} 
    \\ \new Voice {\voiceTwo a, a a}>> | % 22
  a2. | % 23
  
  \fgNoSpace <es-1>4 es es | % 24
  fs\arpeggio <a-0> r | % 25
  r2 <es'-2 b'-\fgTwkYMove #-.3 #3 >4 | % 26
  <fs-3>\arpeggio fs, r | % 27
  b ds b | % 28
  e,8 b' e4 r | % 29
  r <as cs> a | % 30
  gs e e, | % 31
  <c' g'>2.-\markIt "dolce" | % 32
  <d g>2 f4 | % 33
  <e g>2. | % 34
  \fgPrio <b-2>4 r r | % 35
  c2. | % 36
  d | % 37
  e | % 38
  b | % 39
  c2 b4 | % 40
  a r r | % 41
  d2 ds4 | % 42
  e e,\p e | % 43
  e e e | e\sf e e | % 44-45
  e e e | e\sf e e | % 46-47
  e e e | e\sf e e | % 48-49
  e e e | e e e\sf | % 50-51
  e e <e c'>\sf | % 52
  e e <cs'' e> | % 53
  <b d>2 <a cs>4 | % 54
  <gs b>2 <a cs>4 | % 55
  <gs b>2 <fs a>4 | % 56
  <es gs>2 r4 | % 57
  d d d | % 58
  <cs-3> b\rest b\rest | % 59
  d d d | % 60
  cs2. | % 61
  <cs b'>4\f\arpeggio q q | % 62
  <d a'>2\arpeggio r4 | % 63
  e2\arpeggio e,4 | % 64
  <a cs> a\p a | % 65
  a2. | % 66
  a | % 67
  a | % 68
  <a cs>4 a a | % 69
  a2. | % 70
  a | % 71
  a2 a4 | % 72
  a2 r4 | % 73
  a\p gs a | % 74
  b gs e | % 75
  <<\new Voice {\voiceThree \setFgLe  \force #.2 <e'-1>2. \force #.2 <e-2> } \\ 
    \new Voice {\voiceTwo \setFgLe a,4-\markIt "cresc." <gs-4> a <b-1> <gs-4> e}>> | % 76-77
  <a cs'-2> <b-1 b'> <cs-3 a'-1> | % 78
  <d a'>2. | % 79
  e,4\f e' e, | % 80
  a2. | % 81
  
  % TRIO
  
  a4\f <d-4> <fs-3> | % 82
  R2. | % 83
  r4 d d | % 84
  e2.\arpeggio | % 85
  a,4\p <cs-4> << \new Voice {\voiceTwo \fgdo <e-1>\arpeggio } \\ \new Voice {\hideNotes a\arpeggio } >> | % 86
  R2. | % 87
  r4 a, a | % 88
  d2. | d\mf | a2 <cs-3>4 | d2. | a2 cs4 | % 89-93
  d2. | e,\f | e | a4 r r | % 94-97
  a2.\f | % 98
  <<\new Voice {\voiceFour \ign \stemLen #6.5 <b' d>2. } \\ \new Voice { \voiceTwo a,4\sf a a }>> | % 99
  a2. | % 100
  <<\new Voice {\voiceFour \ign \stemLen #6.5 <a' d>2. } \\ \new Voice { \voiceTwo a,4 a a }>> | % 101
  a2 <a fs'-2>4 | % 102
  a2 d4 | <g,-3>2.\mf | fs\arpeggio | <g-3> | % 103-106
  fs2\f fs'4 | fs,2 fs'4 | fs,2 fs'4 | fs,2 fs'4 | % 107-110
  fs,2 fs'4 | fs2-\markIt "dim. poco a poco" fs4 | \arpPos #-2 #-.5 e2\arpeggio e4 | e2 e4 | % 111-114
  e2.\fermata | % 115
  \multiRestPos #-9 R | % 116
  a,4 d fs\glissando | % 117
  a d, d | % 118
  a2.\sf | % 119
  \multiRestPos #-9 R | % 120
  a4 cs e | % 121
  <a-1> a, a | % 122
  d2. | % 123
  r4\sf <<\new Voice {\voiceThree d d} \\ \new Voice {\voiceTwo \fgle <fs,-2> fs}>> | % 124
  <g d'>\> a b\! | % 125
  r\sf <<\new Voice {\voiceThree e e} \\ \new Voice {\voiceTwo gs, gs}>> | % 126
  \fgPrio <a e'-1>\> <b-1> <cs-3>\! | % 127
  r\sf <<\new Voice {\voiceThree a' a} \\ \new Voice {\voiceTwo cs, cs}>> | % 128
  <d a'-1> <e-1> <fs-3> | % 129
  <g,-2 g'>2 <a g'>4 | % 130
  <d-3 fs-2>2 r4 | % 131
  r a2 | % 132
  a a4 | % 133
  <d-3 fs-2> r a | % 134
  <d-3 fs-2> d2
  
  
}

\score {
  \new Staff \with {
    \consists "Span_arpeggio_engraver"
  } { << \upper \\ \lower >> }
  \layout { 
    \context {
    \Score
    \remove "Bar_number_engraver"
    }
    \context {
      \Voice
      \consists \fingeringSlideEngraver
    }
  
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 132 4)
    }
  }
}
