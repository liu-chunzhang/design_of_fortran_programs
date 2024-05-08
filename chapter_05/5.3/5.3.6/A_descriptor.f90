PROGRAM A_descriptor

CHARACTER(len=17)::string = 'This is a string.'

WRITE(*, 10) string
10 FORMAT(' ', A)

WRITE(*, 11) string
11 FORMAT(' ', A20)

WRITE(*, 12) string
12 FORMAT(' ', A6)

END PROGRAM A_descriptor