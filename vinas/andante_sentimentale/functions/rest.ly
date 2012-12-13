restPos = #(define-music-function (parser location num)( number?)
             #{ \override Rest #'staff-position = $num #})

multiRestPos = #(define-music-function (parser location num)( number?)
             #{ \override MultiMeasureRest #'staff-position = $num #})

stopRestPos = { \revert Rest #'staff-position }
stopMultiRestPos = { \revert MultiMeasureRest #'staff-position }