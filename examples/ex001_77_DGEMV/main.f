      PROGRAM MAIN
         EXTERNAL DGEMV
         DOUBLE PRECISION A(10,10), X(10), Y(10)
         DOUBLE PRECISION ALPHA, BETA
         INTEGER M, N, LDA, INCX, INCY, INFO

         DATA M,N,ALPHA,BETA/10,10,1.0,3.0/
         DATA LDA,INCX,INCY/10,1,1/

         CALL DGEMV('N', M, N, ALPHA, A, LDA, X, INCX, BETA, Y, INCY)
         PRINT *, 'Y:', Y
      END
