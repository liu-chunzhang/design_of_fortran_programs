PROGRAM power
!目的：
!  计算电流，实际功率，无功功率和有效功率，功率因子
!
! 修订版本：
!   date        coder           description
!   ====        =====           ===========
! 11/03/15    S. J. Chapman     original code
!

IMPLICIT NONE

! 数据字典：声明常量
REAL,PARAMETER::DEG_2_RAD = 0.01745329 ! 度转化为弧度的因子

! 数据字典：声明变量类型，定义和计量单位
REAL::amps      ! 加载的电流（A）
REAL::p         ! 加载的实际功率（W）
REAL::pf        ! 加载的功率因子（no unit）
REAL::q         ! 加载的无效功率
REAL::s         ! 加载的有功功率
REAL::theta     ! 加载的阻抗（度）
REAL::volts     ! 功率源rms伏特（V）
REAL::z         ! 加载阻抗的幅值（ohms）

! 提示用户输入功率源rms伏特.
WRITE(*,*) 'Enter the rms voltage of the source:'
READ(*,*) volts

! 提示用户阻抗的幅值和角度.
WRITE(*,*) 'Enter the magnitude and angle of the impedance '
WRITE(*,*) 'in ohms and degrees:'
READ(*,*) z , theta

! 完成计算
amps = volts / z 
p = volts * amps * COS( theta * DEG_2_RAD )
q = volts * amps * SIN( theta * DEG_2_RAD )
s = volts * amps 
pf = COS( theta * DEG_2_RAD )

! 输出结果
WRITE(*,*) 'Voltage         = ' , volts , ' volts'
WRITE(*,*) 'Impedance       = ' , z , ' ohms at ' , theta , ' degrees'
WRITE(*,*) 'Current         = ' , amps , ' amps'
WRITE(*,*) 'Real Power      = ' , p , ' watts'
WRITE(*,*) 'Reactive Power  = ' , q , ' VAR'
WRITE(*,*) 'Apparent Power  = ' , s , ' VA'
WRITE(*,*) 'Power Factor    = ' , pf

! 完成
END PROGRAM power