PROGRAM total_energy
!目的：
!  计算地球引力范围内的物体拥有的总机械能
!
!修订版本：
!    date     coder       description
!    ====     =====       ===========
! 07/05/2024   lcz        original code
!

IMPLICIT NONE

REAL,PARAMETER::gravity = 9.81      ! 地球重力加速度（单位：kg/(m·s^2)）

REAL::mass                          ! 物体引力质量
REAL::height                        ! 物体所在高度
REAL::velocity                      ! 物体当前速度
REAL::PE                            ! 物体当前势能
REAL::KE                            ! 物体当前动能
REAL::TE                            ! 物体当前机械能

WRITE(*,*) "Please input the mass of objects of interest (in kg)."
READ(*,*) mass
WRITE(*,*) "Please input the height of objects of interest (in m)."
READ(*,*) height
WRITE(*,*) "Please input the velocity of objects of interest (in m/s)."
READ(*,*) velocity

! 计算当前势能、动能和机械能
PE = mass * gravity * height
KE = 0.5 * mass * velocity**2
TE = PE + KE

! 输出结果
WRITE(*,*) "The total mechanical energy of objects you care within the Earth's gravity is", TE , " kJ."

END PROGRAM total_energy