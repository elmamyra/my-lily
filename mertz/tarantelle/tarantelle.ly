\version "2.17.9"
\language "english"
\include "functions/noteColumn.ly"
\include "functions/rest.ly"
\include "functions/fingering.ly"
\include "functions/barre.ly"
\include "functions/fingeringSlideEngraver.ly"
\include "functions/glissando.ly"
\include "functions/stringNumber.ly"
\include "functions/slur.ly"

\header {
  title = "Tarantelle"
  subtitle = "Bardenklänge op.13 n°6"
  composer = "Johann Kaspar Mertz"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

\paper {
  ragged-last-bottom = #ff
}
blackHarm = { \once \override NoteHead.style = #'harmonic-black }
markIt = #(define-music-function (parser location str) (string?)
    #{ -\markup { \italic $str } #})
moveDyn = {\once \override DynamicText #'extra-offset = #'(-2.2 . 2) }

upper = \relative c'' {
  \key a \minor
  \time 6/8
  \tempo "Allegro"
  \mergeDifferentlyDottedOn \slurDown \setFgLe
  \override Beam #'beamed-stem-shorten = #'(0.3)
  %\set Score.skipTypesetting = ##t
  R2. | % 1
  e8 e, e' e,4 e'8 | % 2
  R2. | % 3
  e8 e, e' e,4 e'8 | % 4
  e,, <e' e'> e, e''4-> e8 | % 5
  e,, <e' e'> e, e''4-> e8 | % 6
  <f, f'>2.-> | % 7
  <a ds> | % 8
  <gs e'> | % 9
  e,8 <e' e'> e, e''4 e8 | % 10
  <f, f'>2.-> | % 11
  <ds a'> | % 12
  gs4. e' | % 13
  \blackHarm e'-> e,, | % 14
  gs e' | % 15
  \blackHarm e'-> e,, | % 16
  a e' | % 17
  \blackHarm e'-> e,, | % 18
  gs-\markIt "dim." e' | % 19
  \blackHarm e'-> e,,\fermata \bar "||"  | \break % 20
  
  \tempo "Presto allegramente."
  \time 6/8 <a'-4>8\< a a\! <c, a'>4 <e-0>8 | % 21
  <d f>-> e d <a c e>4 c8 | % 22
  a8^\< a a\! a4. | % 23
  a <gs b>4 e'8 | % 24
  a^\< a a\! <c, a'>4 <e-0>8 | % 25
  \acciaccatura { f16[ g!] } f8 e d <a c e>4-> c8 |  % 26
  b c d c b a | % 27
  gs a b a4. | % 28
  a8 gs a bf4-> <b f'>8 | % 29
  <a b e>4 <gs b e>8 <c a'>4-> e8 | % 30
  a, gs a bf4-> <b f'>8 | % 31
  <a b e>4 <gs b e>8 <c a'>4-> e8 |  % 32
  a, gs a bf4-> <b f'>8 | % 33
  <a b e>4 <gs b e>8 <c a'>4-> e8 | % 34
  c'4-> a8 c4-> a8 | % 35
  c4-> a8 c4-> a8 | % 36
  
  <d,-3 f-2>4 \dbarre "V" <a'-1>8_\markup {\halign #RIGHT \italic "dolce"}\stasp  <c, e>4. | % 37
  <d f>4 a'8 <c, e>4.\stosp |  % 38
  \acciaccatura g'!8 f e-. d-. c-. b-. a-. | % 39
  gs-. a-. b-. c-. d-. e-. | % 40
  \dbarre "V" <d f>4\stasp a'8 <c, e>4. | % 41
  <d f>4 a'8 <c, e>4.\stosp | % 42
  \acciaccatura g'!8 f e d c b a | % 43
  <gs b>4 e'8 a,4. | % 44
  R2. | % 45
  fs'8^\< fs fs\! <gs, b e>4. | % 46
  r4. r4 e'8 | % 47
  fs8^\< fs fs\! <gs, b e>4. | % 48
  q q | % 49
  <b e>4 <b e>8 e,, <gs' b e> e, | % 50
  <d'' gs>4. q | % 51
  q4 q8 e,, <b'' d gs> e,, |  % 52
  a''8^\< a a\! <e a>4 e8 | % 53
  <d f>8-> e d <a c e>4 c8 | % 54
  \acciaccatura gs a^\< a a\! a4. | % 55
  a <gs b>4 e'8 | % 56
  a a a <e a>4 e8 | % 57
  \acciaccatura { f16[ g!] } f8 e d <a c e>4-> c8 |  % 58
  b c d c b a | % 59
  gs a b a4. | % 60
  g!8 g'!-4 gs,-1 a-2 g'! b,-0 | % 61
  c g' g, g'-> g, g' | % 62
  g, g' gs,! a g'! b, | % 63
  c e g, c-> e, g |  % 64
  e-2 e' f,!-3 fs-4 e' gs,!-1 | % 65
  a e' b c-> e a, | % 66
  f! a b b(-> c) a  | % 67
  gs b e r4 r8 | % 68
  g,!8 g'! gs, a g'! b, | % 69
  c g' g, g'-> g, g' |  % 70
  g, g' gs,! a g'! b, | % 71
  c e g, c-> e, g | % 72
  e e' f,! fs e' gs,! | % 73
  a e' b c-> e a, | % 74
  d4 d8 g4 g8 | % 75
  <e, g c>4 r8 r4 r8 | % 76
  g g g g g g |  % 77
  af2.-> | % 78
  <af f'>-> | % 79
  <g e'> | % 80
  <g e'>8 e' e e e e | % 81
  <gs, d' e>4. gs | % 82
  <gs d' f> <gs d' e> | % 83
  <c-3 a'-4> \slurDown \acciaccatura b8-3 c4.-3 | % 84
  a8 a a a a a |  % 85
  <a c>2. | % 86
  <a c>4. <a d> | % 87
  e'8 e e e e e | % 88
  \acciaccatura g!8 f\<-> e-. e-. e-. e-. e-. | % 89
  a,\!\f <c e> g! f q e | % 90
  d q c b q a | % 91
  e'' e e e e e | % 92
  \acciaccatura g! f\<-> e-. e-. e-. e-. e-. | % 93
  a,\!\f <c e> g! f q e | % 94
  d q c b q a | % 95
  e'' e e e e e | % 96
  \acciaccatura g f^\<-> e e e e e\! | % 97
  \acciaccatura g f^\<-> e e e e e\! | % 98
  \slurPos  #'2 #'2.5 \glissPad #.2 #-.5 \glisstofingOn
  gs(-4\glissando e')-\tweak #'transparent ##t -4_\markIt "dolce" e e e e \bar "||" | \break % 99
  \key a \major
  <e-4> e e e e e | % 100
  e e e e e e | % 101
  \acciaccatura e e, e e r e-0 e | % 102
  r e e r e e | % 103
  \slurPos #2 #2.5 \glissRiY #7 \glissRiPad #-.6 \acciaccatura gs-4\glissando e'-\tweak #'transparent ##t -4 e e e e e | % 104
  e e e e e e | % 105
  \acciaccatura e e, e e r e e | % 106
  r e e r e e | % 107
  \slurPos #2 #2.5 \glissRiY #7.5 \glissRiPad #-.6 \acciaccatura a-4\glissando e'-\tweak #'transparent ##t -4 e e e e e | % 108
  e e e e e e | % 109
  \acciaccatura e e, e e r e e | % 110
  r e e r e e | % 111
  \acciaccatura gs e' e e e e e | % 112
  e e e e e e | % 113
  \acciaccatura e e, e e r e e | % 114
  r e e r e e | % 115
  \glissRiY #7 \glissRiPad #-.5 \acciaccatura a-4\glissando cs-\tweak #'transparent ##t -4 cs cs cs cs cs | % 116
  \fgPrio <cs-4> cs cs cs cs cs | % 117
  cs-4( b-1) b b b b | % 118
  <b-4> b b b b b | % 119
  b-4( a-1) a a a a | % 120
  d,, b' a'-1 d,, b' a' | % 121
  <a-1>4 a8 <e-0>4 e8 | % 122
  fs4 fs8 e4 e8 | % 123
  \glissRiY #7 \glissRiPad #-.5 \acciaccatura a-4\glissando cs-\tweak #'transparent ##t -4 cs cs cs cs cs | % 124
  cs cs cs cs cs cs | % 125
  cs( b) b b b b | % 126
  b b b b b b | % 127
  b( a) a a a a | % 128
  d,, b' a'-4 d,, b' a' | % 129
  <a-4>4 a8 e4 e8 | % 130
  e4 e8 <gs-4>4 gs8 | % 131
  \fgup <a!-4>4 a8 e4 e8 | % 132
  e4 e8 gs4 gs8 | % 133
  \slurPos #2 #2.5 \glissRiY #7.5 \glissRiPad #-.6 \acciaccatura a-4\glissando e'-\tweak #'transparent ##t -4 e e e e e | % 134
  <e,-1> <e'-4> e e e e | % 135
  <fs, fs'>4. ~ q | % 136
  <b, d gs> ~ q\fermata \bar "||" | \break % 137
  
  \key a \minor
  <a'-4>8\< a a\! <c, a'>4 <e-0>8 | % 138
  <d f>-> e d <a c e>4 c8 | % 139
  a8^\< a a\! a4. | % 140
  a <gs b>4 e'8 | % 141
  a^\< a a\! <c, a'>4 <e-0>8 | % 142
  \acciaccatura { f16[ g!] } f8 e d <a c e>4-> c8 | % 143
  b c d c b a | % 144
  gs a b a4. | % 145
  a8 gs a bf4-> <b f'>8 | % 146
  <a b e>4 <gs b e>8 <c a'>4-> e8 | % 147
  a, gs a bf4-> <b f'>8 | % 148
  <a b e>4 <gs b e>8 <c a'>4-> e8 | % 149
  a, gs a bf4-> <b f'>8 | % 150
  <a b e>4 <gs b e>8 <c a'>4-> e8 | % 151
  c'4-> a8 c4-> a8 | % 152
  c4-> a8 c4-> a8 | % 153
  <d,-3 f-2>4 \dbarre "V" <a'-1>8_\markup {\halign #RIGHT \italic "dolce"}\stasp  <c, e>4. | % 154
  <d f>4 a'8 <c, e>4.\stosp | % 155
  \acciaccatura g'!8 f e-. d-. c-. b-. a-. | % 156
  gs-. a-. b-. c-. d-. e-. | % 157
  \dbarre "V" <d f>4\stasp a'8 <c, e>4. | % 158
  <d f>4 a'8 <c, e>4.\stosp | % 159
  \slurDown\acciaccatura g'!8 f e d c b a | % 160
  <gs b>4 e'8 a,4. | % 161
  R2. | % 162
  fs'8^\< fs fs\! <gs, b e>4. | % 163
  r4. r4 e'8 | % 164
  fs8^\< fs fs\! <gs, b e>4. | % 165
  q q | % 166
  <b e>4 <b e>8 e,, <gs' b e> e, | % 167
  <b'' g'!>4.-> <b g'>-> | % 168
  q4 q8 g, <g' b g'> g, | % 169
  g'!8 g'!-4 gs,-1 a-2 g'! b,-0 | % 170
  c g' g, g'-> g, g' | % 171
  g, g' gs,! a g'! b, | % 172
  c e g, c-> e, g | % 173
  e-2 e' f,!-3 fs-4 e' gs,!-1 | % 174
  a e' b c-> e a, | % 175
  f! a b b(-> c) a | % 176
  gs b e r4 r8 | % 177
  g,!8 g'! gs, a g'! b, | % 178
  \set Score.skipTypesetting = ##f
  c g' g, g'-> g, g' | % 179
  g, g' gs,! a g'! b, | % 180
  c e g, c-> e, g | % 181
  e e' f,! fs e' gs,! | % 182
  a e' b c-> e a, | % 183
  <a b f'>4. <gs b e> \bar "||" | \break % 184
  
  \tempo "con moto"
  a8 a a c4-> a8 | % 185
  c4-> a8 c4-> a8 | % 186
  c4-> a8 c4-> a8 | % 187
  c4-> a8 c4-> a8 | % 188
  e' a, c e-0 a-2 c-1 | % 189
  \fgup \fgPrio <e-4>4.-> e,8 c a | % 190
  e4.-> <a b> | % 191
  <a b> <gs b e> | % 192
  a8 a a c4-> a8 | % 193
  g,! c' a c4-> a8 | % 194
  fs, c'' a c4-> a8 | % 195
  f,!8 c'' a c4-> a8 | % 196
  e' a, c e a c | % 197
  e( c) a e c a | % 198
  e4.-> <a b> | % 199
  <a b> <gs b e> | % 200
  a4 c8 b4 e8 | % 201
  a,4 c8 b4 e8 | % 202
  a,4 c8 b4 e8 | % 203
  a,4 c8 b4 e8 | % 204
  <c-3 a'-4>4 <e-0>8 e4-> <gs, d' e>8 | % 205
  e'4-> <a, c e>8 e'4-> <gs, b e>8 | % 206
  e'4-> <a, c e>8 e'4-> <gs, d' e>8 | % 207
  e'4-> <a, c e>8 e'4-> <gs, b e>8 | % 208
  <c-3 a'-4>4 <e-0>8 e4-> <gs, d' e>8 | % 209
  e'4-> <a, c e>8 e'4-> <gs, b e>8 | % 210
  e'4-> <a, c e>8 e'4-> <gs, d' e>8 | % 211
  e'4-> <a, c e>8 e'4-> <gs, b e>8 | % 212
  \repeat unfold 4 { <c-3 a'-4>4 <e-0>8 e4-> <gs, b e>8}  | % 213-216
  <a'-4>4. a8 a a | % 217
  \repeat unfold 18 a | % 218-220
  <c, a'>4.-> a'8 a a | % 221
  \repeat unfold 18 a | \break % 222-224
  
  \tempo "Prestissimo."
  <c, a'>4. <a b>-> | % 225
  <a b> <a b> | % 226
  <a b e> <a b f'>-> | % 227
  <a b e> <gs b e> | % 228
  <c a'> f,8 a b | % 229
  d, a' b ds, a' b | % 230
  <a b e>4. <a b f'> | % 231
  <a b e> <gs b e> | % 232
  a b,8 a' a | % 233
  c, a' a d, a' a | % 234
  e a a f a a | % 235
  e a a c, a' a | % 236
  a, a' a b, a' a | % 237
  c, a' a d, a' a | % 238
  e a a f a a | % 239
  e a a c, a' a | % 240
  a,4. <gs' b e>-> | % 241
  <c-3 a'-4>-> <gs b e> | % 242
  a <gs b e>-> | % 243
  <c a'> <gs b e> | % 244
  a <gs b e> | % 245
  <c a'> a,8\< c' a' | % 246
  a,, c' a' a,, c' a' | % 247
  a,, c'\! a'\> a,, c' a' | % 248
  a,, c' a' a,, c' a'\! | % 249
  a,,4. ~ a | % 250
  \moveDyn <c'  e c'>\f ~ q | % 251
  <a c e a> ~ q\fermata \bar "|." | % 252
  
  
}

lower = \relative c {
  \setFgLe \snAddStemSupport
  e8-\tweak #'extra-offset #'(-2 . 2) \p e' e, e'4 e,8 | % 1
  \multiRestPosOn #-7 R2. | % 2
  e8 e' e, e'4 e,8 | % 3
  R2. \multiRestPosOff | % 4
  e4\< e8 e' e, e' | % 5
  e,4 e8\! e' e, e' | % 6
  r4 e,8 e4 e8 | % 7
  r4 e8 e4 e8 | % 8
  r4 e8 e4 e8 | % 9
  e4\< e8 e' e, e'\! | % 10
  r4 e,8 e4 e8 | % 11
  r4 e8 e4 e8 | % 12
  e'4 e,8 e''4 e,,8 | % 13
  \blackHarm e'''4 e,,,8 e'4 e,8 | % 14
  d'4 e,8 e''4 e,,8 | % 15
  \blackHarm e'''4 e,,,8 e'4 e,8 | % 16
  c'4-\markup { \italic { rit \hspace #12 poco \hspace #12 a \hspace #12 poco }} e,8 e''4 e,,8 | % 17
  \blackHarm e'''4 e,,,8 e'4 e,8 | % 18
  b'4 e,8 e''4 e,,8 | % 19
  \blackHarm e'''4 e,,,8 e'4\fermata e,8 | % 20
  
  <a c'-3>4.-\tweak #'extra-offset #'(-2.5 . 2) \f a | % 21
  <a gs'> a | % 22
  a a4 b8 | % 23
  c8 b a e'4 e,8 | % 24
  <a c'>4.-\tweak #'extra-offset #'(-2 . 2) \f a | % 25
  a a | % 26
  d e | % 27
  e, a | % 28
  r4. r4 d8\f | % 29
  e4 e,8 a4. | % 30
  r4. r4 d8\f | % 31
  e4 e,8 a4. | % 32
  r4. r4 d8\f | % 33
  e4 e,8 a4. | % 34
  R2. | % 35
  R | % 36
  d4. a | % 37
  d a | % 38
  <d b'>4. e | % 39
  e, a | % 40
  d a | % 41
  d a | % 42
  <d b'> e | % 43
  e, a | % 44
  e8 e' e, e'4-> e,8 | % 45
  <ds' a' c>4.\f e4 e,8 | % 46
  f!8 f' f, e4 e'8 | % 47
  <ds a' c>4.\f e4 e,8 | % 48
  e'4 e,8 e'4 e,8 | % 49
  gs'-\markIt "cresc." e, gs' e,4 e8 | % 50
  b''4 e,,8 b''4 e,,8 | % 51
  b''\< e,, b'' e,,4 e8 | % 52
  <a c' e>4.\!\f <a c'>4. | % 53
  <a gs'> a | % 54
  a a4 b8 | % 55
  c b a e'4 e,8 | % 56
  <a c' e>4. <a c'> | % 57
  a a | % 58
  d e | % 59
  e, a | % 60
  <<\new Voice {\voiceTwo g!2. c4. e g,2.-> c e, a } \\ 
    \new Voice {\voiceFour \ign g'4 gs8-\markIt "dolce" a4 b8 s2. \ign g4 gs8 a4 b8 s2. 
    \ign e,4 f8 fs4 gs8 \ign a4 b8 c4 a8 }>> | % 61-66
  f!4. f-> | % 67
  e f,8(-> e) e' | % 68
  <<\new Voice {\voiceTwo g,!2. c4. e g,2. c e, a } \\ 
    \new Voice {\voiceFour \ign g'4 gs8 a4 b8 s2. \ign g4 gs8 a4 b8 s2. 
    \ign e,4 f8 fs4 gs8 \ign a4 b8 c4 a8 }>> | % 69-74
  <f a>4. <g b> | % 75
  c,4 c8 c4 c8 | % 76
  c4 d8 e4 c8 | % 77
  c4 c8 \slurUp \acciaccatura b c4-> c8 | % 78
  \dbarre "I" c4\stasp c8 \acciaccatura b c4-> c8\stosp | % 79
  c4 c8 \acciaccatura b c4-> c8 | % 80
  c4 d8 e4 c8 | % 81
  b4 b8 b4 b8 | % 82
  e,4 e8 e4 e8 | % 83
  a4 a8 a4 a8 | % 84
  a4 b8 c4 a8 | % 85
  g!4 g8 g4 g8 | % 86
  fs4 fs8 f4 f8 | % 87
  <e gs'>4. r4 r8 | % 88
  r4 r8 e'4. | % 89
  a4 g8 f4 e8 | % 90
  d4 c8 b4 a8 | % 91
  <e gs'>4. r4 r8 | % 92
  r4 r8 e'4. | % 93
  a4 g8 f4 e8 | % 94
  d4 c8 b4 a8 | % 95
  <e gs'>4. r4 r8 | % 96
  R2. | % 97
  R | % 98
  e2. | % 99
  a4. \setSnDo  <cs'-2\4>-> | % 100
  <d-3\4>-> <e-1\3>-> | % 101
  a,, <cs'-3\3 e-2> | % 102
  <b-3 d-2> <a-1 cs-2> | % 103
  e, <b''\4>-> | % 104
  <cs\4>-> <d\4>-> | % 105
  e,, <b'' d> | % 106
  <a cs> <e b'> | % 107
  a, cs'-> | % 108
  d-> e-> | % 109
  e,, <cs''-3 e-2> | % 110
  <b d> <a cs> | % 111
  e, b''-> | % 112
  cs-> d-> | % 113
  e,, <b'' d> | % 114
  <a cs> <e b'> | % 115
  a, <a'\4> | % 116
  \fgMoveSharp <as-2\4> <e'\3-3> | % 117
  <b\4-3> <d\3-1> | % 118
  <gs,-2> <d'-3> | % 119
  <a-3> cs | % 120
  d, d | % 121
  <e-3 cs'-2> <e, cs''> | % 122
  <e b'' d> <e b'' d> | % 123
  a <a'\4> | % 124
  as e' | % 125
  b d | % 126
  gs, d' | % 127
  a cs | % 128
  d, d | % 129
  <e, cs''-1> <e as'-1 cs-2> | % 130
  \fgXmove #-1 <e b''-3 d-2> <e b'' d> | % 131
  \fgPrio <e cs''-1> <e as' cs> | % 132
  <e b'' d> <e b'' d> | % 133
  <<\new Voice {\voiceTwo \ign e2. } \\ \new Voice {\voiceFour \fgle <cs''-1>4 s8 s4.}>> | % 134
  e4. r4 r8 | % 135
  d,4.->\sf ~ d | % 136
  e->\sf ~ e | % 137
  
  <a, c'-3>4.-\tweak #'extra-offset #'(-2.5 . 2) \f a | % 138
  <a gs'> a | % 139
  a a4 b8 | % 140
  c8 b a e'4 e,8 | % 141
  <a c'>4.-\tweak #'extra-offset #'(-2 . 2) \f a | % 142
  a a | % 143
  d e | % 144
  e, a | % 145
  r4. r4 d8\f | % 146
  e4 e,8 a4. | % 147
  r4. r4 d8\f | % 148
  e4 e,8 a4. | % 149
  r4. r4 d8\f | % 150
  e4 e,8 a4. | % 151
  R2. | % 152
  R | % 153
  d4. a | % 154
  d a | % 155
  <d b'>4. e | % 156
  e, a | % 157
  d a | % 158
  d a | % 159
  <d b'> e | % 160
  e, a | % 161
  e8 e' e, e'4-> e,8 | % 162
  <ds' a' c>4.\f e4 e,8 | % 163
  f!8 f' f, e4 e'8 | % 164
  <ds a' c>4.\f e4 e,8 | % 165
  e'4 e,8 e'4 e,8 | % 166
  gs'-\markIt "cresc." e, gs' e,4 e8 | % 167
  g'!4\ff g,8 g'4 g,8 | % 168
  g' g, g' g,4 g8 | % 169
   <<\new Voice {\voiceTwo g!2. c4. e g,2.-> c e, a } \\ 
    \new Voice {\voiceFour \ign g'4 gs8-\markIt "dolce" a4 b8 s2. \ign g4 gs8 a4 b8 s2. 
    \ign e,4 f8 fs4 gs8 \ign a4 b8 c4 a8 }>> | % 170-175
  f!4. f-> | % 67
  e f,8(-> e) e' | % 68
  <<\new Voice {\voiceTwo g,!2. c4. e g,2. c e, a } \\ 
    \new Voice {\voiceFour \ign g'4 gs8 a4 b8 s2. \ign g4 gs8 a4 b8 s2. 
    \ign e,4 f8 fs4 gs8 \ign a4 b8 c4 a8 }>> | % 176-183
  d,4. e | % 184
  
  a,4. a | % 185
  g! g | % 186
  fs fs | % 187
  f! f | % 188
  e2. ~ | % 189
  e | % 190
  e'4. f | % 191
  d e | % 192
  a, a | % 193
  g! g | % 194
  fs fs | % 195
  f! f | % 196
  e2. ~ | % 197
  e | % 198
  e'4. f | % 199
  d e | % 200
  \repeat unfold 4 {a8 a, c' gs e, e''} | % 201-204
  a,,4. r4 b8 | % 205
  r4 c8 r4 d8 | % 206
  r4 c8 r4 b8 | % 207
  r4 a8 r4 \moveDyn e8\f | % 208
  a4. r4 \moveDyn b8\f | % 209
  r4 c8 r4 d8 | % 210
  r4 c8 r4 b8 | % 211
  r4 a8 r4 \moveDyn e8\f | % 212
  \repeat unfold 4 {a4. r4 \moveDyn e8\f} | % 213-216
  <a c'-3>4.\sf <b-1> | % 217
  <c-2> <d-0> | % 218
  <e-1> <f-2> | % 219
  <e-1> <c-0> | % 220
  a\sf b | % 221
  c d | % 222
  e f | % 223
  e c | % 224
  
  a f' | % 225
  d ds | % 226
  e e, | % 227
  e e | % 228
  a f'-\markIt "semp. cresc." | % 229
  d ds | % 230
  e e, | % 231
  e e | % 232
  a b | % 233
  c d | % 234
  e f | % 235
  e c | % 236
  a b | % 237
  c d | % 238
  e f | % 239
  e c | % 240
  a e | % 241
  a e | % 242
  a e | % 243
  a e | % 244
  a e | % 245
  a a | % 246
  a a | % 247
  a a | % 248
  a a | % 249
  a ~ a | % 250
  a ~ a | % 251
  a ~ a\fermata | % 252
}

\score {
  \new Staff \with {
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
  
}
