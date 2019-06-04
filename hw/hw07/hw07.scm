(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
  (car (cdr (cdr s)))
)

(define (sign x)
  (cond
    ((< x 0)
        -1)
    ((> x 0)
        1)
    (else
        0)
    )
)

(define (square x) (* x x))

(define (pow b n)
(cond
  ((= n 1)
      b
    )
  ((even? n)
      (pow (square b) (/ n 2)))
  ((odd? n)
      (* b (pow (square b) (/ (- n 1) 2))))
  (else
      0)
  )
)

(define (ordered? s)
(cond
  ((null? (cdr s))
      #t
    )
  ((< (car (cdr s)) (car s))
  #f
    )
  (else
    (ordered? (cdr s)))
)
)
