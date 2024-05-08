PROGRAM I_descriptor

INTEGER::index = -12 , junk = 4 , number = -12345

WRITE(*,200) index , index + 12 , junk , number
200 FORMAT(' ',2I5, I6,I10)

WRITE(*,210) index , index + 12 , junk , number
210 FORMAT(' ',2I5.0,I6,I10.8)

WRITE(*,220) index , index + 12 , junk , number
220 FORMAT(' ',2I5.3,I6,I5)

WRITE(*,100) index , junk , number 
100 FORMAT(I0,1X,I0,1X,I0)

END PROGRAM I_descriptor