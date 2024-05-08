PROGRAM escape_velocity
!目的：
!  计算物体的逃逸速度
!
!修订版本：
!    date     coder       description
!    ====     =====       ===========
! 08/05/2024   lcz        original code
!

IMPLICIT NONE

REAL,PARAMETER::gravity_constant = 6.673E-11    ! 引力常数（单位：N·m^-2·kg^-2）

REAL::radius                                    ! 物体半径（单位：m）
REAL::mass                                      ! 物体质量（单位：kg）
REAL::velocity                                  ! 物体逃逸速度（单位：m/s）

! 输入物体半径和质量
WRITE(*,*) "Please input the mass of your object (in kg):"
READ(*,*) mass
WRITE(*,*) "Please input the radius of your object (in m):"
READ(*,*) radius

! 计算物体逃逸速度
velocity = SQRT( 2. * gravity_constant * mass / radius )
WRITE(*,*) "The escape velocity of your object is " , velocity , " m/s."

! 完成
END PROGRAM escape_velocity