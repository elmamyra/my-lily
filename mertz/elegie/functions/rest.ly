restPos = #(define-music-function (parser location num)( number?)
             #{ \override Rest #'staff-position = $num #})

restMove = #(define-music-function (parser location x)( number?)#{\once \override Rest #'extra-offset = #(cons x 0) #})

restPosOff = { \revert Rest #'staff-position }

multiRestPos = #(define-music-function (parser location num)( number?)
             #{\once \override MultiMeasureRest #'staff-position = $num #})

multiRestPosOn = #(define-music-function (parser location num)( number?)
             #{ \override MultiMeasureRest #'staff-position = $num #})


multiRestPosOff = { \revert MultiMeasureRest #'staff-position }