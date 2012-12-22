glisstofing = { \once \override Glissando #'to-fingerings = ##t }
glisstofingOn = { \override Glissando #'to-fingerings = ##t }
glisstofingOff = { \revert Glissando #'to-fingerings }
glissmap = #(define-music-function (parser location x y )( number? number? ) #{ \once \set glissandoMap = #(list (cons x y)) #})
glissLePad = #(define-music-function (parser location val )( number? ) #{ \once \override Glissando.bound-details.left.padding = $val #})
glissRiPad = #(define-music-function (parser location val )( number? ) #{ \once \override Glissando.bound-details.right.padding = $val #})
glissPad = #(define-music-function (parser location le ri )( number? number? ) #{ \glissLePad $le \glissRiPad $ri #})
glissLeY = #(define-music-function (parser location val )( number? ) #{ \once \override Glissando.bound-details.left.Y = $val #})
glissRiY = #(define-music-function (parser location val )( number? ) #{ \once \override Glissando.bound-details.right.Y = $val #})
glissY = #(define-music-function (parser location le ri )( number? number? ) #{ \glissLeY $le \glissRiY $ri #})
glissSkipOne = { \once \override NoteColumn.glissando-skip = ##t }
glissSkipOn = { \override NoteColumn.glissando-skip = ##t }
glissSkipOff = { \revert NoteColumn.glissando-skip }
