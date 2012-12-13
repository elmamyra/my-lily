glisstofing = { \once \override Glissando #'to-fingerings = ##t }
glissmap = #(define-music-function (parser location x y )( number? number? ) #{ \once \set glissandoMap = #(list (cons x y)) #})