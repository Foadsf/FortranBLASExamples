      PROGRAM MAIN
         IMPLICIT NONE
         REAL A(3), B(3), C(3)
         DATA A /1.0, 2.0, 3.0/, B /4.0, 5.0, 6.0/

         CALL SAXPY(3, 2.0, A, 1, B, 1)
         C = B
         WRITE(*,*) 'C = ', C

         STOP
      END
