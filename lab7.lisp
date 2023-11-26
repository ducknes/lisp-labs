(defun sum-count(a i n)
    (if (= n 0)
    0
    (+ (* a i) (sum-count a (+ i 1) (- n 1)))))

(format t "Сумма = ~d" (sum-count 1 1 5))