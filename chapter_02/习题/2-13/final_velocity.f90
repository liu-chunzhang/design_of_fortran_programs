PROGRAM final_velocity
!目的：
!  计算静止球体自由落体的速度
!
!修订版本：
!    date     coder       description
!    ====     =====       ===========
! 07/05/2024   lcz        original code
!

IMPLICIT NONE

REAL,PARAMETER::gravity = 9.81      ! 地球重力加速度（单位：kg/(m·s^2)）

REAL::height                        ! 物体所在高度
REAL::velocity                      ! 物体当前速度

WRITE(*,*) "Please input the height of objects of interest (in m)."
READ(*,*) height

! 计算当前速度
velocity = SQRT( 2. * gravity * height )

! 输出结果
WRITE(*,*) "The final velocity of objects you care is", velocity , " m/s."

END PROGRAM final_velocity