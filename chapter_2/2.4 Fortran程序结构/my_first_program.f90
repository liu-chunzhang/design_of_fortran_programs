PROGRAM my_first_program
! 目的：
! 本程序主要说明Fortran语言的基本特点

! 声明程序中用到的变量
INTEGER::i,j,k ! 所有变量均为整型

! 获取存入变量i和j的值
WRITE(*,*)'Enter the numbers to multiply:'
READ(*,*)i,j

! 求两个数的相乘
k = i * j

! 输出计算结果
WRITE(*,*)'Result = ',k

! 完成
STOP
END PROGRAM my_first_program