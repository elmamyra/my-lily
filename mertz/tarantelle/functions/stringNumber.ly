
setSnUp = { \set stringNumberOrientations = #'(up) }
setSnDo = { \set stringNumberOrientations = #'(down) }
setSnLe = { \set stringNumberOrientations = #'(left) }
setSnRi = { \set stringNumberOrientations = #'(right) }

snup =  { \once \set stringNumberOrientations = #'(up) }
sndo = { \once \set stringNumberOrientations = #'(down) }
snle = { \once \set stringNumberOrientations = #'(left) }
snri = { \once \set stringNumberOrientations = #'(right) }

snDoLeUp = { \once \set stringNumberOrientations = #'(down left up) }
snDoLe = { \once \set stringNumberOrientations = #'(down left) }
snLeUp = { \once \set stringNumberOrientations = #'(up left) }
snUpDo = { \once \set stringNumberOrientations = #'(down up)}
snLeRi = { \once \set stringNumberOrientations = #'(right left)}

snAddStemSupport = {\override StringNumber #'add-stem-support = ##t }
snRevStemSupport = {\revert StringNumber #'add-stem-support }

snInStaff = {\override StringNumber #'staff-padding = #'() }
snOutStaff = {\revert StringNumber #'staff-padding }


snAlignRi = { \override StringNumber #'self-alignment-X = #RIGHT }
snAlignLe = { \override StringNumber #'self-alignment-X = #LEFT }
snAlignCe = { \override StringNumber #'self-alignment-X = #CENTER }

snNoSpace = { \once \override StringNumber #'extra-spacing-width = #'(+inf.0 . -inf.0) }

snPad = #(define-music-function (parser location val )( number?) #{\once \override StringNumber #'padding = $val #})
snMove = #(define-music-function (parser location x y )( number? number? ) #{\once \override StringNumber #'extra-offset = #(cons x y) #})
snXmove = #(define-music-function (parser location x)( number?)#{\once \override StringNumber #'extra-offset = #(cons x 0)	#})
snYmove = #(define-music-function (parser location y)( number?)#{\once \override StringNumber #'extra-offset = #(cons 0 y)	#})

snTwkMove = #(define-music-function (parser location offset num) (pair? number?)
        (let ((m (make-music 'StringNumberEvent
                          'string-number num)))
       (set! (ly:music-property m 'tweaks)
             (acons 'extra-offset offset
                    (ly:music-property m 'tweaks)))
       m)
     )



snTwkYMove = #(define-music-function (parser location y num) (number? number?)
        (let ((m (make-music 'StringNumberEvent
                          'string-number num)))
       (set! (ly:music-property m 'tweaks)
             (acons 'extra-offset (cons 0 y)
                    (ly:music-property m 'tweaks)))
       m)
     )


snSpanner =
#(define-music-function (parser location StringNumber) (string?)
  #{
    \override TextSpanner.style = #'solid
    \override TextSpanner.font-size = #-5
    \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
    \override TextSpanner.bound-details.right.text = \markup { \draw-line #'( 0 . -1) }
    \override TextSpanner.bound-details.right.padding = #-3
    \override TextSpanner.bound-details.left.text = \markup { \circle \number $StringNumber }
  #})
