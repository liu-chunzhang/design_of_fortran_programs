PROGRAM declaration_of_array

REAL::voltage(16)
CHARACTER(len=20)::last_name(50)

!!! The size of an array should be a constant!
!INTEGER::array_size = 5
!INTEGER::natural_number(array_size) = (/ 1 , 2 , 3 , 4 , 5 /)
INTEGER::natural_number(5) = [ 1 , 2 , 3 , 4 , 5 ] 

END PROGRAM declaration_of_array