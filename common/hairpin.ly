hairpinToBar = { \once \override Hairpin #'to-barline = ##f }
hairpinRotate = #(define-music-function (parser location degre)( number?) 
                   #{ \once \override Hairpin #'rotation = #(list degre 0 0) #})