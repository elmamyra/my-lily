P = #(define-music-function (parser location ) () (rhfunc 1))
I = #(define-music-function (parser location ) () (rhfunc 2))
M = #(define-music-function (parser location ) () (rhfunc 3))
A = #(define-music-function (parser location ) () (rhfunc 4))

rhup = {\set strokeFingerOrientations = #'(up)}
rhdo = {\set strokeFingerOrientations = #'(down)}
rhle = {\set strokeFingerOrientations = #'(left)}
rhri = {\set strokeFingerOrientations = #'(right)}

rhAddStemSup = {\override StrokeFinger #'add-stem-support = ##t }