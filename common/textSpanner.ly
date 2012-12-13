
tsStaffPadding = #(define-music-function (parser location val )( number?) 
                #{\once \override TextSpanner #'outside-staff-padding = $val #})

tsDo = { \override TextSpanner #'direction = #DOWN }

tsUp = { \override TextSpanner #'direction = #UP }

tsText = #(define-music-function (parser location le ri )( markup? markup? ) 
         #{\override TextSpanner #'(bound-details left text) = $le
           \override TextSpanner #'(bound-details left text) = $ri
         #})




\override TextSpanner #'outside-staff-padding = #-1
\override TextSpanner #'dash-fraction = #.18
\override TextSpanner #'use-skylines = ##f
\override TextSpanner #'direction = #DOWN
\override TextSpanner #'(bound-details left text) = #"ritar"