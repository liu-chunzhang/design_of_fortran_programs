PROGRAM frequency_of_radio
!目的：
!  计算单LC无线电设备的共振频率
!
!修订版本：
!    date     coder       description
!    ====     =====       ===========
! 08/05/2024   lcz        original code
!

IMPLICIT NONE

REAL,PARAMETER::PI = 3.141593

REAL::inductance         ! 电感（单位：mH）1mH = 1.E-3H
REAL::capacitance        ! 电容（单位：nF）1nF = 1.E-9F
REAL::frequency          ! 频率（单位：Hz）

! 输入电感I和电容C
WRITE(*,*) "Please input the inductance (in mH):"
READ(*,*) inductance
WRITE(*,*) "Please input the capacitance (in nF)."
READ(*,*) capacitance

! 计算并输出结果
frequency = 1. / ( 2. * PI * SQRT( inductance * capacitance * 1.E-12 ) ) 
WRITE(*,*) "The frequency of radio is " , frequency , " Hz."

! 完成
END PROGRAM frequency_of_radio