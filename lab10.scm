(define (over-or-under num1 num2) 
	(if (< num1 num2) -1 (if (< num2 num1) 1 (if (= num1 num2) 0))))

(define (make-adder num) (lambda (x) (+ num x)))



(define (composed f g) (lambda (x) (f(g x))))

(define lst (cons (cons 1 nil) (cons 2 (cons (cons 3 (cons 4 nil)) (cons 5 nil)))))

(define (duplicate lst) 
	(cond ((not (null? lst)) (append (list (car lst) (car lst)) (duplicate (cdr lst))))
	      (#t '())

))
