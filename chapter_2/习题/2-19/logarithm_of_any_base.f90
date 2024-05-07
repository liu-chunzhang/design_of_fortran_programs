PROGRAM logarithm_of_any_base
!目的：
!  计算任意底数b的数据x的对数log_b(x)
!
!修订版本：
!    date     coder       description
!    ====     =====       ===========
! 07/05/2024   lcz        original code
!

REAL::b
REAL::x
REAL::result

WRITE(*,*) "Please input the date of interest."
READ(*,*) x

WRITE(*,*) "Please input the base of logarithm."
READ(*,*) b

WRITE(*,*) "log_" , b , "(" , x , ") = " , LOG10(x) / LOG10(b)

END PROGRAM logarithm_of_any_base