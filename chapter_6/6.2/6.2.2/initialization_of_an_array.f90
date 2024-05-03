PROGRAM initialization_of_an_array

INTEGER::i,j(10)
REAL::array1(10)

WRITE(*,*) 'j(1)=' , j(1)

DO i = 1 , 10           ! I write a program to show memory leakage.
    WRITE(*,*) j(i)
END DO

DO i = 1 , 10
    array1(i) = REAL(i)
END DO

END PROGRAM initialization_of_an_array
