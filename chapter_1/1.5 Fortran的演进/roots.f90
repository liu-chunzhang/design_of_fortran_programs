PROGRAM roots
!目的：
! 该程序求解一元二次方程的根
! A * X**2 + B * X + C = 0. 计算结果是全方位的
! (Fortran 95/2003 style)

IMPLICIT NONE

! 声明程序中用到的变量
REAL::a             ! 公式中X**2的系数
REAL::b             ! 公式中X的系数
REAL::c             ! 公式中的常数
REAL::discriminant  ! 公式根值判断值
REAL::imag_part     ! 虚部（对复数根）
REAL::real_part     ! 实部（对复数根）
REAL::x1            ! 第一个根值（对实数根）
REAL::x2            ! 第二个根值（对实数根）

! 提示用户公式所需的系数
WRITE(*,*) 'This program solves for the roots of a quadratic '
WRITE(*,*) 'equation of the form A * X**2 + B * X + C = 0.'
WRITE(*,*) 'Enter the coefficients A, B and C:'
READ(*,*) a , b , c

! 回显系数
WRITE(*,*) 'The coefficients A, B and C are:', a , b , c

! 计算公式根值判断值
discriminant = b ** 2 - 4.0 * a * c

! 求根，根据判断值
IF( discriminant > 0.0 ) THEN ! 有两个实根，于是...
    x1 = ( -b + sqrt( discriminant ) ) / ( 2.0 * a )
    x2 = ( -b - sqrt( discriminant ) ) / ( 2.0 * a )
    WRITE(*,*) 'This equation has two real roots:'
    WRITE(*,*) 'X1 = ', x1
    WRITE(*,*) 'X2 = ', x2
ELSE    IF( discriminant == 0.0 ) THEN ! 有等根，于是...
            x1 = ( -b ) / ( 2.0 * a )
            WRITE(*,*) 'This equation has two identical real roots:'
            WRITE(*,*) 'X1 = X2 = ', x1
        ELSE ! 有复数根，于是...
            real_part = ( -b ) / ( 2.0 * a )
            imag_part = sqrt( abs( discriminant ) ) / ( 2.0 * a )
            WRITE(*,*) 'This equation has two complex roots:'
            WRITE(*,*) 'X1 = ' , real_part , '+i ' , imag_part
            WRITE(*,*) 'X2 = ' , real_part , '-i ' , imag_part
END IF

END PROGRAM roots