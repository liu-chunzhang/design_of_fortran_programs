PROGRAM sample_1

INTEGER::i1 , i2 , i3 , i4
REAL::a1 = 2.4 , a2

i1 = a1
i2 = INT( -a1 * i1 )
i3 = NINT( -a1 * i1 )
i4 = FLOOR( -a1 * i1 )
a2 = a1**i1
WRITE(*,*) i1 , i2 , i3 , i4 , a1 , a2

END PROGRAM sample_1