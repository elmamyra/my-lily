dynSpan = #(define-music-function (parser location num)( number?)
             #{ \override DynamicLineSpanner #'staff-padding = $num #})

stopDynSpan = { \revert DynamicLineSpanner #'staff-padding }