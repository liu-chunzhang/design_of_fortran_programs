PROGRAM slash_line_descriptor

INTEGER::index = 10
REAL::time = 300. , depth = 330. , amplitude = 850.65 , phase = 30.

WRITE(*,100) index , time , depth , amplitude , phase
100 FORMAT(T20,'Results for Test Number ', I3 , ///, &
    'Time = ' , F7.0 /, &
    'Depth = ' , F7.1 , ' meters', /, &
    'Amplitude = ' , F8.2 /, &
    'Phase = ', F7.1)

END PROGRAM slash_line_descriptor