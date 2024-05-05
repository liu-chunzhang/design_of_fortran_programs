PROGRAM temp_conversion
!目的：
!  将输入的温度值从华氏度计量转换为开氏温度值，并输出
!
! 版本号：
!  date         coder       description
!  ====         =====       ===========
! 11/03/15   S. J. Chapman  original code
!

IMPLICIT NONE

! 数据字典：声明变量类型、定义和计量单位
REAL::temp_f    ! 华氏温度
REAL::temp_k    ! 开式温度

! 提示用户输入温度.
WRITE(*,*) 'Enter the temperature in degrees Fahrenheit:'
READ(*,*) temp_f

! 转换为开氏温度.
temp_k = ( 5. / 9. ) * ( temp_f - 32. ) + 273.15

! 输出结果.
WRITE(*,*) temp_f , ' degrees Fahrenheit = ' , temp_k , ' Kelvins'

! 完成.
END PROGRAM temp_conversion