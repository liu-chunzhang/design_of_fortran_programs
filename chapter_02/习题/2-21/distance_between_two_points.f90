PROGRAM distance_between_two_points
!目的：
!  计算平面直角坐标系下任意两点间距离
!
!修订版本：
!    date     coder       description
!    ====     =====       ===========
! 08/05/2024   lcz        original code
!

IMPLICIT NONE

REAL::x_1         ! 第一个点的横坐标
REAL::y_1         ! 第一个点的纵坐标
REAL::x_2         ! 第二个点的横坐标
REAL::y_2         ! 第二个点的纵坐标
REAL::result      ! 结果

! 输入两个点的横坐标与纵坐标
WRITE(*,*) "Please input the x, y coordinate of the first point."
READ(*,*) x_1 , y_1
WRITE(*,*) "Please input the x, y coordinate of the second point."
READ(*,*) x_2 , y_2

! 计算并输出结果
result = SQRT( ( x_1 - x_2 )**2 + ( y_1 - y_2 )**2 )
WRITE(*,*) "Their distance is " , result , "."

! 完成
END PROGRAM distance_between_two_points