(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (ascending? asc-lst) 
	(if (null? asc-lst) #t)
	(if (null? (cdr asc-lst)) #t (if ( > (car asc-lst) (cadr asc-lst)) #f (ascending? (cdr asc-lst)))))

(define (square n) (* n n))

(define (pow base exp)
	(if (>= 1 base) 
		base 
		(if (>= 1 exp) 
			base
			(* base (pow base (- exp 1)))))

)