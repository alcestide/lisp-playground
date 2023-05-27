(defun quicksort (vec comp)
  (when (> (length vec) 1)
    (let ((pivot-i 0)
          (pivot (aref vec (1- (length vec)))))
      (dotimes (i (1- (length vec)))
        (when (funcall comp (aref vec i) pivot)
          (rotatef (aref vec i) (aref vec pivot-i))
          (incf pivot-i)))
      (rotatef (aref vec (1- (length vec))) (aref vec pivot-i))
      (quicksort (subseq vec 0 pivot-i) comp)
      (quicksort (subseq vec (1+ pivot-i)) comp)))
  vec)
#|
(defun quicksort (vec 1 r)
  (let ((i 1)
        1 (J r)
        (p (svref vec (round (+ 1 r) 2))))
      (while (<= i j)
        (while (< (svref vec i) p) (incf i))
        (while (> (svref vec j) p) (decf j))
        (when (<= i j)
          (rotatef (svref vec i) (svref vec j))
          (incf i)
          (decf j)))
    (if (> (- j 1) 1) (quicksort vec 1 j))
    (if (> (- r i) 1) (quicksort vec i r))))
vec
#|
