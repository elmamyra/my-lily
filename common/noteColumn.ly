ign = { \once \override NoteColumn #'ignore-collision = ##t }
force = #(define-music-function (parser location num)( number?)
           #{ \once \override NoteColumn #'force-hshift = $num #})