; Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

; 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

; By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

(define list-fibs
  (lambda (lat max)
    (if (> (+ (car lat) (cadr lat)) max)
        lat
        (list-fibs (cons (+ (car lat) (cadr lat)) lat) max))))

(fold-left + 0 (filter even? (list-fibs '(1 0) 4000000)))
