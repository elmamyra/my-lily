showTup = { \revert TupletNumber #'stencil }

hideTup = { \override TupletNumber #'stencil = ##f }

tupDur = #(define-music-function (parser location num denom)( number? number?)#{ \set tupletSpannerDuration = #(ly:make-moment num denom ) #})

stopTupdur = { \unset tupletSpannerDuration }

tupNum = #(define-music-function (parser location num)( number?)
            #{ \override TupletNumber #'text = #(tuplet-number::non-default-tuplet-denominator-text num) #})
                                                                   