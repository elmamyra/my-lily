barreText = #(define-music-function
     (parser location str)
     (string?)
     #{ -\markup {\smaller \center-align {\hspace #.6  \concat {"B" $str " "}}} #})

dbarreText = #(define-music-function
     (parser location str)
     (string?)
   #{ -\markup {\smaller \halign #CENTER \concat {"½B" $str " "}} #})



barre = #(define-music-function (parser location str) (string?)
#{
  \once \override TextSpanner #'direction = #UP
  \once \override TextSpanner #'(bound-details left text) = \markup {\smaller \halign #CENTER \concat {"B" $str " "}}
  \once \override TextSpanner #'style = #'line
  \once  \override TextSpanner #'bound-details #'right #'text = \markup { \draw-line #'( 0 . -.5) }
  \once \override TextSpanner #'font-shape = #'upright
  \once \override TextSpanner #'bound-details #'left-broken #'text = ##f 
  \once \override TextSpanner #'to-barline = ##f
  \once  \override TextSpanner #'bound-details #'right #'padding = #-1
  \once \override TextSpanner #'(bound-details left stencil-align-dir-x) = #LEFT
#})

dbarre = #(define-music-function (parser location str) (string?)
#{
  \once \override TextSpanner #'direction = #UP
  \once \override TextSpanner #'(bound-details left text) = \markup {\smaller \halign #CENTER \concat {"½B" $str " "}}
  \once \override TextSpanner #'style = #'line
  \once  \override TextSpanner #'bound-details #'right #'text = \markup { \draw-line #'( 0 . -.5) }
  \once \override TextSpanner #'font-shape = #'upright
  \once \override TextSpanner #'bound-details #'left-broken #'text = ##f 
  \once \override TextSpanner #'to-barline = ##f
  \once  \override TextSpanner #'bound-details #'right #'padding = #-1
  \once \override TextSpanner #'(bound-details left stencil-align-dir-x) = #LEFT
#})

stasp = \startTextSpan
stosp = \stopTextSpan