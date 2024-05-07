PROGRAM consumed_mass
!目的：
!  计算核反应的最小物质消耗量
!
!修订版本：
!    date     coder       description
!    ====     =====       ===========
! 07/05/2024   lcz        original code
!

IMPLICIT NONE

REAL,PARAMETER::light_velocity = 2.9979E8  ! 光速（单位：m/s)

REAL::total_energy                  ! 所需总能量（单位：J/s）
REAL::mass                          ! 所需最小物质量（单位：kg）

WRITE(*,*) "Please input total energy of the month you care (in MW):"
READ(*,*) total_energy

! 计算最小物质量
mass = total_energy * 1.E6 / light_velocity**2 

! 输出结果
WRITE(*,*) "The minimal consumed mass is", mass , " kg."

END PROGRAM consumed_mass