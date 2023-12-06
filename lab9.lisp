(defun transform-list (lst)
    (if (null (cdr lst))
        lst
        (cons (car lst) (list (transform-list (cdr lst))))
    )
)

(print (transform-list '(1 B 3 & 3 b @)))