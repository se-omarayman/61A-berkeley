; 2.Iād like to write a procedure that, given a deep list, destructively changes all the atoms into the symbol george:
; > (define ls ā(1 2 (3 (4) 5)))
; > (glorify! ls) => return value unimportant
; > ls => (george george (george (george) george))

(define (glorify! ls)
	(cond ((null? ls) ā())
		((atom? ls) 'george )
		(else (set-car! ls (glorify! (car ls)))
		(set-cdr! ls (glorify! (cdr ls)))
		ls)
	)
)