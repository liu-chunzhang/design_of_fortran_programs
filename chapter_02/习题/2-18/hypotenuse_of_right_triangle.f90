PROGRAM hypotenuse_of_right_triangle
!目的：
!  计算直角三角形给定两个直角边下的斜边长
!
!修订版本：
!    date     coder       description
!    ====     =====       ===========
! 07/05/2024   lcz        original code
!

IMPLICIT NONE

REAL::a , b     ! 两个直角边的长度
REAL::c         ! 斜边长

WRITE(*,*) "Please input two sides of current right triangle."
READ(*,*) a , b

c = SQRT( a**2 + b**2 )
WRITE(*,*) "The hypotenuse of current right triangle is ", c , "."

END PROGRAM hypotenuse_of_right_triangle