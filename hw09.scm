(define-macro (when condition exprs)
	`(if ,condition ,(cons 'begin exprs) 'okay)
)

(define-macro (switch expr cases)
  	(cons 'begin (map (lambda (case) (cons 'if (cons (eq? (eval expr) (car case)) (cdr case))) ) cases))
)