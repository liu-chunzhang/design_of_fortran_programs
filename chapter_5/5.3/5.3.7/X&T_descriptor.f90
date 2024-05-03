PROGRAM XandT_descriptor

CHARACTER(len=10)::first_name = 'James'
CHARACTER::initial = 'R'

CHARACTER(len=16)::last_name = 'Johnson'
CHARACTER(len=9)::class = 'COSC 2021'
INTEGER::grade = 92

WRITE(*,100) first_name , initial , last_name , grade , class
100 FORMAT(A10, 2X , A1 , 1X , A10 , 4X , I3 , T51 , A9)

WRITE(*,110) first_name , initial , last_name , class , grade
110 FORMAT(A10, T13 , A1 , T15 , A10 , T51 , A9 , T29 , I3)

END PROGRAM XandT_descriptor