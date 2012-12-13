arpPos = #(define-music-function (parser location bottom top)( number? number?)
            #{ \once \override Arpeggio #'positions = #(cons bottom top) #})