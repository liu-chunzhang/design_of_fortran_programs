PROGRAM test_2_6

WRITE(*,*) 13 / 5 * 6
WRITE(*,*) (13 / 5) * 6
WRITE(*,*) 13 / (5 * 6)
WRITE(*,*) 13. / 5 * 6
WRITE(*,*) 13 / 5 * 6.
WRITE(*,*) INT(13. / 5) * 6
WRITE(*,*) NINT(13. / 5) * 6
WRITE(*,*) CEILING(13. / 5) * 6
WRITE(*,*) FLOOR(13. / 5) * 6

END PROGRAM test_2_6