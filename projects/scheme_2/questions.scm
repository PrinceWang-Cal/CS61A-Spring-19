(define (caar x) (car (car x)))
(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

; Some utility functions that you may find useful to implement.

(define (cons-all first rests)
  (define (func lst) (cons first lst))
 (map func rests))

(define (zip pairs)
  (if (null? pairs) nil 
    (list (map (lambda (x) (car x)) pairs) (map (lambda (x) (cadr x)) pairs
    ))
  )
)
  
;; Problem 17
;; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 17
  (define (helper x 
    s)
  (if (null? s) nil
    (cons (list x (car s) ) (helper (+ 1 x) (cdr s))) 

  
  
  )
    )
  (helper 0 s)
)
  
  ; END PROBLEM 17

;; Problem 18
;; List all ways to make change for TOTAL with DENOMS
(define (list-change total denoms)
  ; BEGIN PROBLEM 18
  (cond
  ((null? denoms) nil)
  ((eq? total 0) (list nil))
  ((> (car denoms) total) (list-change total (cdr denoms)))
  (else (define with_first (list-change (- total (car denoms)) denoms))
   (define without_first (list-change total (cdr denoms)))
   (append (cons-all (car denoms) with_first) without_first)
  )))
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
           (cons form (cons params (map let-to-lambda body)))
          
           ; END PROBLEM 19
           ))
        ((let? expr)
         (let ((values (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM 19
           (cons (cons 'lambda (cons (car (zip 
            (map let-to-lambda values))) (map let-to-lambda body)))
            (cadr (zip (map let-to-lambda values)))
           ; END PROBLEM 19
           )))
        (else
         ; BEGIN PROBLEM 19
         (map let-to-lambda expr)
         ; END PROBLEM 19
         )))
