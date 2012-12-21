stemExtreme = { \override Stem #'details #'beamed-extreme-minimum-free-lengths = #'(2.3 1.7) }
stemLen = #(define-music-function (parser location num)( number?) #{ \once \override Stem #'length = $num #})
             