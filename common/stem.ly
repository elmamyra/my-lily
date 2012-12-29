stemExtreme = #(define-music-function (parser location li)( list?) #{ \override Stem.details.beamed-extreme-minimum-free-lengths = $li #})
stemExtremeOff = { \override Stem.details.beamed-extreme-minimum-free-lengths = #'(2.0 1.25 ) }
stemLen = #(define-music-function (parser location num)( number?) #{ \once \override Stem #'length = $num #})
             