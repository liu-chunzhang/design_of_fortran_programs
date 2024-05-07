PROGRAM c14_date
!目的：
!  通过样本C14剩余的百分比计算死去的时间
!
!修订版本：
!   date        coder       description
!   ====        =====       ===========
! 11/03/15    S. J. Chapman original code
!

IMPLICIT NONE

! 数据字典：声明变量
REAL,PARAMETER::LAMDA = 0.00012097 ! 衰变常数，常量C14,计量单位1/years

! 数据字典：声明变量类型，定义和计量单位
REAL::age       ! 样本年龄（years）
REAL::percent   ! 测量到C14百分比（%）
REAL::ratio     ! C14从原始量到剩余量的衰减率（无计量单位）

! 提示用户C14剩余百分比
WRITE(*,*) 'Enter the percentage of carbon 14 remaining:'
READ(*,*) percent

! 回显输入值
WRITE(*,*) 'The remaining carbon 14 = ', percent , ' %.'

! 计算
ratio = percent / 100. ! 转换为百分比小数衰减率
age = ( -1.0 / LAMDA ) * LOG( ratio ) ! 知道年龄

! 告诉用户样本大概的年龄
WRITE(*,*) 'The age of the sample is ' , age , ' years.'

! 完成
END PROGRAM c14_date