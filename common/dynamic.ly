dynSpan = #(define-music-function (parser location num)( number?)
             #{ \override DynamicLineSpanner #'staff-padding = $num #})
dynSpanOff = { \revert DynamicLineSpanner #'staff-padding }

dynMove = #(define-music-function (parser location x y )( number? number? ) #{\once \override DynamicText #'extra-offset = #(cons x y) #})

harpYMoveOn = #(define-music-function (parser location num)( number?) #{ \override Score.Hairpin #'extra-offset = #(cons 0 num) #})
harpYMoveOff = { \revert Score.Hairpin #'extra-offset }
