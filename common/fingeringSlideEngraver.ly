#(define (define-grob-custom-property symbol type? description)
  (if (not (equal? (object-property symbol 'backend-doc) #f))
      (ly:error (_ "symbol ~S redefined") symbol))

    (set-object-property! symbol 'backend-type? type?)
    (set-object-property! symbol 'backend-doc description)
    symbol)

#(define all-user-grob-custom-properties
   (map
     (lambda (x)
       (apply define-grob-custom-property x))

     `(
       (to-fingerings ,boolean? "boolean for moving glissandi to fingerings")
     )))

fingeringSlideEngraver =
#(lambda (context)
   (let ((glissandi '())
         (fingerings '()))

     `((acknowledgers
         (glissando-interface
           . ,(lambda (engraver grob source-engraver)
                (if (eq? #t (ly:grob-property grob 'to-fingerings))
                    (set! glissandi (append glissandi (list grob))))))

         (finger-interface
           . ,(lambda (engraver grob source-engraver)
                (set! fingerings (append fingerings (list grob))))))

       (stop-translation-timestep
         . ,(lambda (trans)
              (map (lambda (gliss)
                     (map (lambda (finger)
                            (if (eq? (ly:spanner-bound gliss LEFT)
                                     (ly:grob-parent finger X))
                                (ly:spanner-set-bound! gliss LEFT finger))
                            (if (eq? (ly:spanner-bound gliss RIGHT)
                                     (ly:grob-parent finger X))
                                (begin
                                  (ly:spanner-set-bound! gliss RIGHT finger)
                                  (set! glissandi (remove (lambda (x) (eq? x gliss)) glissandi)))))
                          fingerings))
                   glissandi)

              (set! fingerings '()))))))


%{\layout {
  \context {
    \Voice
    \consists \fingeringSlideEngraver
  }
}

\relative c {
  \override Fingering #'staff-padding = #'()
  \override Glissando #'to-fingerings = ##t
  \set glissandoMap = #'((0 . 0))
  \set fingeringOrientations = #'(down)
  <fis-\tweak #'transparent ##t -1 d'>4\glissando
  <g-1 d'>
}

\relative c'' {
  \key f \major
  \time 3/4
  \override Glissando #'to-fingerings = ##t
  <d-3 f-1>8[\glissando
  \set glissandoMap = #'((1 . 1))
  <e-3 g-1>\glissando <f-2 a-1>\glissando
  \unset glissandoMap
  <e-3 g-1>\glissando <d-3 f-1>8. <c-1 e-0>16]
}

%}