(defun checkSequence (lst curInd ssLen)
    (if (equal (- (length lst) (* ssLen 3)) curInd)
        (if (equal ssLen 6)
            "False"
            (checkSequence lst 0 (+ ssLen 1))
        )
        (if (and 
            (equal (subseq lst curInd (+ curInd ssLen)) (subseq lst (+ curInd ssLen) (+ curInd (* ssLen 2)))) 
            (equal (subseq lst (+ curInd ssLen) (+ curInd (* ssLen 2))) (subseq lst (+ curInd (* ssLen 2)) (+ curInd (* ssLen 3))))
            )
            "True"
            (checkSequence lst (+ curInd 1) ssLen)
        )
    )
)

(print (checkSequence '(1 0 1 0 1 0 1 1 0 0 1 0 0 1 0 1 1 0 1 0) 0 1))
