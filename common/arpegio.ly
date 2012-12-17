arpPos = #(define-music-function (parser location bottom top)( number? number?)
            #{ \once \override Staff.Arpeggio #'positions = #(cons bottom top) #})

arpExt = #(define-music-function (parser location val)( number? )
            #{ \once \override Staff.Arpeggio #'X-offset = $val #})

arpExtFg = { \once \override Staff.Arpeggio #'X-offset = #-1.8 }

arpNoSpace = { \once \override Staff.Arpeggio #'extra-spacing-width = #'(+inf.0 . -inf.0) }