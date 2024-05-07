PROGRAM earning
!目的：
!  计算每周员工获得的收入
!
!修订版本：
!    date     coder       description
!    ====     =====       ===========
! 05/05/2024   lcz        original code  
!

IMPLICIT NONE

REAL::work_time     ! 一周的总工作时间（hours）
REAL::hourly_pay    ! 个人每小时工资额（dollars）
REAL::total_earning ! 一周总收入
WRITE(*,*) 'How much is your hourly pay (in dollars)?'
READ(*,*) hourly_pay
WRITE(*,*) 'How long have you worked (in hours)?'
READ(*,*) work_time

total_earning = hourly_pay * work_time
WRITE(*,*) 'This week you have earned ' , total_earning , ' dollars.'

END PROGRAM earning