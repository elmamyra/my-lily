rh = #rightHandFinger

setRhUp = { \set strokeFingerOrientations = #'(up) }
setRhDo = { \set strokeFingerOrientations = #'(down) }
setRhLe = { \set strokeFingerOrientations = #'(left) }
setRhRi = { \set strokeFingerOrientations = #'(right) }

rhup =  { \once \set strokeFingerOrientations = #'(up) }
rhdo = { \once \set strokeFingerOrientations = #'(down) }
rhle = { \once \set strokeFingerOrientations = #'(left) }
rhri = { \once \set strokeFingerOrientations = #'(right) }




rhAddStemSupport = {\override StrokeFinger #'add-stem-support = ##t }
rhRevStemSupport = {\revert StrokeFinger #'add-stem-support }

rhInStaff = {\override StrokeFinger #'staff-padding = #'() }
rhOutStaff = {\revert StrokeFinger #'staff-padding }


rhAlignRi = { \override StrokeFinger #'self-alignment-X = #RIGHT }
rhAlignLe = { \override StrokeFinger #'self-alignment-X = #LEFT }
rhAlignCe = { \override StrokeFinger #'self-alignment-X = #CENTER }



rhPad = #(define-music-function (parser location val )( number?) #{\once \override StrokeFinger #'padding = $val #})
rhMove = #(define-music-function (parser location x y )( number? number? ) #{\once \override StrokeFinger #'extra-offset = #(cons x y) #})
rhXmove = #(define-music-function (parser location x)( number?)#{\once \override StrokeFinger #'extra-offset = #(cons x 0) #})
rhYmove = #(define-music-function (parser location y)( number?)#{\once \override StrokeFinger #'extra-offset = #(cons 0 y) #})