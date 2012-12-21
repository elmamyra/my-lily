ign = { \once \override NoteColumn #'ignore-collision = ##t }
force = #(define-music-function (parser location num)( number?)
           #{ \once \override NoteColumn #'force-hshift = $num #})


addStemSpace = #(define-music-function (parser location val )( number?) #{ \once \override Stem #'extra-spacing-width =  #(cons val 0) #})
addAccSpace = #(define-music-function (parser location val )( number?) #{ \once \override Accidental #'extra-spacing-width =  #(cons (- val) 0) #})

