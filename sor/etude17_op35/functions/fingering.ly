setFgUp = { \set fingeringOrientations = #'(up) }
setFgDo = { \set fingeringOrientations = #'(down) }
setFgLe = { \set fingeringOrientations = #'(left) }
setFgRi = { \set fingeringOrientations = #'(right) }

fgup =  { \once \set fingeringOrientations = #'(up) }
fgdo = { \once \set fingeringOrientations = #'(down) }
fgle = { \once \set fingeringOrientations = #'(left) }
fgri = { \once \set fingeringOrientations = #'(right) }

fgDoLeUp = { \once \set fingeringOrientations = #'(down left up) }
fgDoLe = { \once \set fingeringOrientations = #'(down left) }
fgLeUp = { \once \set fingeringOrientations = #'(up left) }
fgUpDo = { \once \set fingeringOrientations = #'(down up)}
fgLeRi = { \once \set fingeringOrientations = #'(right left)}

fgAddStemSupport = {\override Fingering #'add-stem-support = ##t }
fgRevStemSupport = {\revert Fingering #'add-stem-support }

fgInStaff = {\override Fingering #'staff-padding = #'() }
fgOutStaff = {\revert Fingering #'staff-padding }


fgAlignRi = { \override Fingering #'self-alignment-X = #RIGHT }
fgAlignLe = { \override Fingering #'self-alignment-X = #LEFT }
fgAlignCe = { \override Fingering #'self-alignment-X = #CENTER }

fgNoSpace = { \once \override Fingering #'extra-spacing-width = #'(+inf.0 . -inf.0) }


fgAllPad = #(define-music-function (parser location val )( number?) #{\override Fingering #'padding = $val #})
fgPad = #(define-music-function (parser location val )( number?) #{\once \override Fingering #'padding = $val #})
fgMove = #(define-music-function (parser location x y )( number? number? ) #{\once \override Fingering #'extra-offset = #(cons x y) #})
fgXmove = #(define-music-function (parser location x)( number?)#{\once \override Fingering #'extra-offset = #(cons x 0)	#})
fgYmove = #(define-music-function (parser location y)( number?)#{\once \override Fingering #'extra-offset = #(cons 0 y)	#})
fgMoveSharp = { \fgMove #1.5 #-2.2 }
fgMoveNat = { \fgMove #1.1 #-2.2 }

fgTwkMove = #(define-music-function (parser location offset num) (pair? number?)
        (let ((m (make-music 'FingeringEvent
                          'digit num)))
       (set! (ly:music-property m 'tweaks)
             (acons 'extra-offset offset
                    (ly:music-property m 'tweaks)))
       m)
     )


fgTwkMove = #(define-music-function (parser location offset num) (pair? number?)
        (let ((m (make-music 'FingeringEvent
                          'digit num)))
       (set! (ly:music-property m 'tweaks)
             (acons 'extra-offset offset
                    (ly:music-property m 'tweaks)))
       m)
     )

fgTwkYMove = #(define-music-function (parser location y num) (number? number?)
        (let ((m (make-music 'FingeringEvent
                          'digit num)))
       (set! (ly:music-property m 'tweaks)
             (acons 'extra-offset (cons 0 y)
                    (ly:music-property m 'tweaks)))
       m)
     )

