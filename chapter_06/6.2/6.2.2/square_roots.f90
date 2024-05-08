PROGRAM square_roots

IMPLICIT NONE

INTEGER::i
REAL::value(10) = [ ( i , i = 1 , 10 ) ] , square_root(10)

DO i = 1 , 10
    square_root(i) = SQRT( value(i) )
END DO

DO i = 1 , 10
    WRITE (*,100) value(i), square_root(i)
END DO
100 FORMAT('Value = ', F5.1 , ' Square root = ', F10.4)

END PROGRAM square_roots
