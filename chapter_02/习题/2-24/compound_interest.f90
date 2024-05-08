PROGRAM compound_interest
!目的：
!  计算复利
!
!修订版本：
!    date     coder       description
!    ====     =====       ===========
! 08/05/2024   lcz        original code
!

IMPLICIT NONE

REAL::P = 1000.                     ! 初始本金（单位：dollars）
REAL::APR = 5.                      ! 年利率
INTEGER::m                          ! 年计复利次数
INTEGER::n = 5                      ! 账户所有金额计算的总年数，这里默认为5年
REAL::F                             ! 账户未来的金额

! 输入年计复利次数
WRITE(*,*) "Please input the number of annual compound interest:"
READ(*,*) m

! 计算并输出结果
F = P * ( 1. + ( APR / ( 100. * m ) ) ) ** ( m * n ) 
WRITE(*,*) "The total deposit is " , F , " dollars."

! 完成
END PROGRAM compound_interest