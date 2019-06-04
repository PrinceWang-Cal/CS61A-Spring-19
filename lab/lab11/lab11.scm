


(define-macro (def func bindings body)
    `(define ,func (lambda 'bindings body)))


(define-macro (or-macro expr1 expr2)
    `(let ((v1 ____________))
        (if _____ _____ _____)))

(define (flatmap f x)
  'YOUR-CODE-HERE)

(define (expand lst)
  'YOUR-CODE-HERE)

(define (interpret instr dist)
  'YOUR-CODE-HERE)

(define (apply-many n f x)
  (if (zero? n)
      x
      (apply-many (- n 1) f (f x))))

(define (dragon n d)
  (interpret (apply-many n expand '(f x)) d))
