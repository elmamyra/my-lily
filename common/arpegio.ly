arpPos = #(define-music-function (parser location bottom top)( number? number?)
            #{ \once \override Score.Arpeggio #'positions = #(cons bottom top) #})

arpXmove = #(define-music-function (parser location x)( number? )
            #{ \once \override Score.Arpeggio #'extra-offset = #(cons x 0) #})

arpExtFg = { \once \override Staff.Arpeggio #'X-offset = #-1.8 }

arpNoSpace = { \once \override Staff.Arpeggio #'extra-spacing-width = #'(+inf.0 . -inf.0) }

arpExt = #(define-music-function (parser location bottom top )( number? number? )
        #{
          \override Score.Arpeggio.positions = #(lambda (grob)
              (let* ((pos (ly:arpeggio::calc-positions grob))
                     (newbottom (-(car pos) bottom))
                     (newtop (+(cdr pos) top))
                    )
               (cons newbottom newtop)
               )
                 
            )
        #}
   )           

arpExtOff = { \revert Score.Arpeggio.positions }