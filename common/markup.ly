mkMove = #(define-music-function (parser location x y )( number? number? ) #{ \once \override TextScript.extra-offset = #(cons x y) #})
mkXMove = #(define-music-function (parser location x )( number? ) #{ \once \override TextScript.extra-offset = #(cons x 0) #})
mkYMove = #(define-music-function (parser location y )( number? ) #{ \once \override TextScript.extra-offset = #(cons 0 y) #})
mkPad = #(define-music-function (parser location val )( number? ) #{ \once \override TextScript.padding = $val #})


#(define-markup-command (markItCmd layout props text) (markup?)
  (interpret-markup layout props
    #{\markup  {\smaller \italic $text }#}))


markIt = #(define-music-function (parser location text) (markup?)
    #{ -\markup \markItCmd $text  #})