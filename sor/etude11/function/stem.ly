stemExtreme = { \override Stem #'details #'beamed-extreme-minimum-free-lengths = #'(2.3 1.7) }
stemLen = #(define-music-function (parser location num)( number?) #{ \once \override Stem #'length = $num #})
stemShort = #(define-music-function (parser location li)( list?) #{ \override Beam #'beamed-stem-shorten = $li #}) 
             