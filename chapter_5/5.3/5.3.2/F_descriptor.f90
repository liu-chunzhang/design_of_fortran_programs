PROGRAM F_descriptor

REAL::a = -12.3 , b = 0.123 , c = 123.456

WRITE(*,200) a , b , c
200 FORMAT(' ' , 2F6.3 , F8.3)

WRITE(*,201) a , b , c
201 FORMAT(' ' , 2F7.3 , F8.3)

WRITE(*,210) a , b , c
210 FORMAT(' ' , 3F10.2)

END PROGRAM F_descriptor