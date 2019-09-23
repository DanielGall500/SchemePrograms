(define reciprocals (lambda (X) ( 
				   cond ( (= X 1)  1                               )  
                        ( (> X 1) (+ (recursion (- X 1)) (/ 1 X))  ) 
                  		      ) 
				  ) 
)

(define changingFractions (lambda(X Y) (
				   cond( (= X 1) (/ X Y) )
				       ( (= Y 1) (/ X Y) )
				       	( (> X 1) (+ (changingFractions (- X 1) (- Y 1) ) (/ X Y) ) )
				       	(> Y 1) (+ (changingFractions (- X 1) (- Y 1) ) (/ X Y) )
				       	)
)
)