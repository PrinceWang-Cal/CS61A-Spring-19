(define (accumulate combiner start n term)
 (cond
  ((= n 0) start)
  (else (combiner (term n) (accumulate combiner start (- n 1) term)))

 )
)

(define (accumulate-tail combiner start n term)
 (define (helper combiner result k term)
  (if (= k 0)
      result
      (helper combiner (combiner result (term k)) (- k 1) term)))
 (helper combiner start n term)
)

(define (rle s)

    (define (helper pre s num)

  	(cond
      ((null? s) (cons-stream (list pre num) nil))
  	  ((= pre (car s))  (helper pre (cdr-stream s) (+ 1 num)))
  	  (else (cons-stream (list pre num) (helper (car s) (cdr-stream s) 1)
  					)))
  )

	(cond
   ((null? s) nil)
   (else(helper (car s) (cdr-stream s) 1))
	)

)