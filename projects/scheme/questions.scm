(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

; Some utility functions that you may find useful to implement.

(define (cons-all first rests)
 (define (func lst) (cons first lst))
 (map func rests)
)

(define (zip pairs)
 (if (null? pairs) nil
  (list (map (lambda (x) (car x)) pairs) (map (lambda (x) (cadr x)) pairs))))

;; Problem 17
;; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 17
 (define (helper s n)
  (cond
        ((null? s) nil)
        (else (cons (list n (car s)) (helper (cdr s) (+ n 1))))

 )


 )
 (helper s 0)

)
  ; END PROBLEM 17

;; Problem 18
;; List all ways to make change for TOTAL with DENOMS
(define (list-change total denoms)
  ; BEGIN PROBLEM 18
  ; n==0, 1
  ; n<0, 0
  ; m == 0, 0
  ; with_m = count_partitions(n-m, m)
 ;
 ;without_m = count_partitions(n, m-1)
 ;
 ;return with_m + without_m
 (cond
  ((null? denoms) nil)
  ((eq? total 0) (list nil))
  ((> (car denoms) total) (list-change total (cdr denoms)))
  (else (define with_first (list-change (- total (car denoms)) denoms))
   (define without_first (list-change total (cdr denoms)))
   (append (cons-all (car denoms) with_first) without_first)
  )



 )

  )
  ; END PROBLEM 18

;; Problem 19
;; Returns a function that checks if an expression is the special form FORM
(define (check-special form)
  (lambda (expr) (equal? form (car expr))))

(define lambda? (check-special 'lambda))
(define define? (check-special 'define))
(define quoted? (check-special 'quote))
(define let?    (check-special 'let))

;; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond ((atom? expr)
         ; BEGIN PROBLEM 19
         expr
         ; END PROBLEM 19
         )
        ((quoted? expr)
         ; BEGIN PROBLEM 19
         expr
         ; END PROBLEM 19
         )
        ((or (lambda? expr)
             (define? expr))
         (let ((form   (car expr))
               (params (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM 19
          (list form params (let-to-lambda body))
           ; END PROBLEM 19
           ))
        ((let? expr)
         (let ((values (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM 19
            ; END PROBLEM 19
           ))
        (else
         ; BEGIN PROBLEM 19
         （map let-to-lambda expr)
         ; END PROBLEM 19
         ))
