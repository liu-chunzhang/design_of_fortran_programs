PROGRAM period_of_simple_harmonic_motion
!目的：
!  计算简谐运动的周期
!
!修订版本：
!    date     coder       description
!    ====     =====       ===========
! 08/05/2024   lcz        original code
!

IMPLICIT NONE

REAL,PARAMETER::gravity = 9.81      ! 地球重力加速度（单位：kg/(m·s^2)）
REAL,PARAMETER::PI = 3.141593       ! 圆周率

REAL::length                        ! 摆长（单位：m）
REAL::period                        ! 周期（单位：s）

WRITE(*,*) "Please input the length of a simple harmonic motion (in m):"
READ(*,*) length

! 计算周期
period = 2. * PI * SQRT( length / gravity ) 

! 输出结果
WRITE(*,*) "The period of your simple harmonic motion is ", period , " s."

END PROGRAM period_of_simple_harmonic_motion