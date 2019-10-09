;;solve the tower of hanoi puzzle:
;; (moveTower size start middle target)
;; and we want the ssequence of moves that wil solve the tower
;; of hanoi puzzle (moving all disks from start to target)
(define moveDisk
	(lambda (start target)
		(list 'move 'disk 'from start 'to target)
	)
)


(define moveTower
	(lambda (N start mid target)
		(cond (   (= N 1)     (list (moveDisk start target))      )
			  (   #t          (append (moveTower (- N 1) start target mid)
			  				          (cons (moveDisk start target)
			  				                (moveTower (- N 1) mid start target) ) ) )

		)

	)

)