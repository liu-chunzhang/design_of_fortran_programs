PROGRAM type_declaration_initialization

INTEGER::i , array2(5) = [ ( i , i = 1 , 5 ) ] , &
         array3(1000) = [ ( i , i = 1 , 1000 )] , &
         array4(25) = [  ( ( 0 , i = 1 , 4 ) , 5 * j , j = 1 , 5 ) ] , &
         array5(100) = 1.0

DO i = 1 , 5
    WRITE(*,*) array2(i)
END DO

DO i = 1 , 25
    WRITE(*,*) array4(i)
END DO

END PROGRAM type_declaration_initialization