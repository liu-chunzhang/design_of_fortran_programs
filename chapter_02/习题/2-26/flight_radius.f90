PROGRAM flight_radius
!目的：
!  计算飞机的最小飞行半径
!
!修订版本：
!    date     coder       description
!    ====     =====       ===========
! 08/05/2024   lcz        original code
!

IMPLICIT NONE

REAL::velocity          ! 飞机当前速度（单位：m/s）
REAL::acceleration      ! 飞机向心加速度（单位：m/s^2）   
REAL::radius            ! 最小飞行半径（单位：m）                       

! 输入飞机向心加速度和飞机当前速度
WRITE(*,*) "Please input the velocity of an airplane (in Mach):"
READ(*,*) velocity
WRITE(*,*) "Please input the acceleration of an airplane (in gravity acceleration):"
READ(*,*) acceleration

! 计算最小飞行半径
radius = ( velocity * 340 )**2 / ( acceleration * 9.81 )
WRITE(*,*) "The minimal radius of an airplane is " , radius , " m."

! 完成
END PROGRAM flight_radius