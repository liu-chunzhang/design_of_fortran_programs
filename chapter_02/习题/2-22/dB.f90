PROGRAM dB
!目的：
!  计算分贝
!
!修订版本：
!    date     coder       description
!    ====     =====       ===========
! 08/05/2024   lcz        original code
!

IMPLICIT NONE

REAL::x         ! 测量的能源级别（单位：W）
REAL::result    ! 最后结果

! 输入待计算的能源级别
WRITE(*,*) "Please input the resource of interest (in W):"
READ(*,*) x

! 计算并输出结果
result = 10. * LOG10( x ) + 30.
WRITE(*,*) "The resource of interest is " , result , " dB."

! 完成
END PROGRAM dB