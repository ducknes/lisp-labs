(defun delete-first-last (lst)
    (if (= (length (cdr lst)) 2)
        (progn
            (rplaca lst (car (cdr lst)))
            (rplacd lst nil)
        )
        (progn
            (rplaca lst (car (cdr lst)))
            (delete-first-last (cdr lst))
        )
    )
)

(setq lst '(1 2 3 4 5))
(setq a (delete-first-last lst))
(print lst)