restPos = #(define-music-function (parser location num)( number?)
             #{ \override Rest #'staff-position = $num #})

stopRestPos = { \revert Rest #'staff-position }