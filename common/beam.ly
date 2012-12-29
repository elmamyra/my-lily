BeamMove = #(define-music-function (parser location le ri)( number? number?)#{ \once \override Beam #'positions = #(cons le ri) #})
stemShort = #(define-music-function (parser location li)( list?) #{ \override Beam #'beamed-stem-shorten = $li #})

beamExt = #(define-music-function (parser location val )( number? )
        #{
          \once \override Beam.positions = #(lambda (grob)
             (let* ((pos (beam::place-broken-parts-individually grob))
                     (le (car pos))
                     (ri (cdr pos))
                     (dir (ly:beam::calc-direction grob))
                    )
               (if (= dir UP) 
                   (cons (+ le val) (+ ri val))
                   (cons (- le val) (- ri val))
               
               )
             )
           )
        #}
   ) 
