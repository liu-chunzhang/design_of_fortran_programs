PROGRAM cosh_function
!目的：
!  计算cosh函数
!
!修订版本：
!    date     coder       description
!    ====     =====       ===========
! 08/05/2024   lcz        original code
!

IMPLICIT NONE

REAL::x = 3.
REAL::result

! 计算并输出结果
result = ( EXP( x ) + EXP( -x ) ) / 2.
WRITE(*,*) "My COSH(3.0) = " , result , ", while standard COSH(3.0) = " , COSH( 3.0 ) , "."

! 完成
END PROGRAM cosh_function