(defun sum-count(a i n)
    (if (= n 0)
    0
    (+ (* a i) (sum-count a (+ i 1) (- n 1)))))

(setq a (read))
(setq n (read))
(format t "Сумма = ~d" (sum-count a 1 n))