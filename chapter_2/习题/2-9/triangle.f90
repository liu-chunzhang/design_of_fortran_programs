PROGRAM triangle

REAL::a , b , c , theta
WRITE(*,*) 'Enter the length of the hypotenuse C:'
READ(*,*) c
WRITE(*,*) 'Enter the angle THETA in degrees:'
READ(*,*) theta

a = c * COS( theta )
b = c * SIN( theta )

!a = c * COSD( theta ) ! 正确修改方法
!b = c * SIND( theta )

WRITE(*,*) 'The length of the adjacent side is ' , a
WRITE(*,*) 'The length of the adjacent side is ' , b

END PROGRAM triangle