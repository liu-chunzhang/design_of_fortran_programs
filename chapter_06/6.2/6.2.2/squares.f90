PROGRAM squares

IMPLICIT NONE

INTEGER::i
INTEGER::number(10),square(10)

DO i = 1 , 10
    number(i) = i
    square(i) = number(i) ** 2
END DO

DO i = 1 , 10
    WRITE(*,100) number(i) , square(i)
END DO
100 FORMAT('Number =' , I6 , ' Square =' , I6)

END PROGRAM squares