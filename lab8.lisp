(defun shiftRight(n lst)
    (if (= (mod n (length lst)) 0)
        lst
        (shift (mod (length lst) n) lst)
    )
)

(defun shift(n lst)
    (if (= n -1)
        lst
        (shift (- n 1) (cons (car (REVERSE1 lst)) (REVERSE1 (cdr (REVERSE1 lst)))))
    )
)

(defun REVERSE1 (l)
  (cond ((null l) nil)
        (t (append (REVERSE1 (cdr l))
                   (list (car l))))))

(print (shiftRight 6 '(1 2 3 4 5)))