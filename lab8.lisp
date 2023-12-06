(defun shiftRight(n lst)
    (if (= (mod n (length lst)) 0)
        lst
        (shift (- (length lst) (mod n (length lst))) lst)
    )
)

(defun shift(n lst)
    (if (= n 0)
        lst
        (shift (- n 1) (append (cdr lst) (list (car lst))))
    )
)

(print (shiftRight 49 '(1 2 3 4 5)))