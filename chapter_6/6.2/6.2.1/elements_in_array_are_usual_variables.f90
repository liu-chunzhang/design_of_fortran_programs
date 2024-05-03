PROGRAM elements_in_array_are_usual_variables

INTEGER::index(10)
REAL::temp(3)

index(1) = 5
temp(3) = REAL(index(1)) / 4
WRITE(*,*) 'index(1) = ', index(1)

END PROGRAM elements_in_array_are_usual_variables