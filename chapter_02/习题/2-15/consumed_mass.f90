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

REAL::total_energy = 4.E8           ! 所需总能量（单位：J/s）
REAL::mass                          ! 所需最小物质量（单位：kg）

! 计算最小物质量
mass = total_energy / light_velocity**2 

! 输出结果
WRITE(*,*) "The minimal consumed mass is", mass , " kg."

END PROGRAM consumed_mass