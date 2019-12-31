C
C     CALCULATE SQUARE OF AVERAGE a,b,c
C
      SUBROUTINE avg_sqrt(r,a,b,c)
      REAL*8 r,a,b,c
Cf2py intent(in) a,b,c
Cf2py intent(out) r
Cf2py depend(a) r
Cf2py depend(b) r
Cf2py depend(c) r
      r = (a + b + c) / 3
      r = r **2
      END

C
C     CALCULATE FIRST N FIBONACCI NUMBERS
C
      SUBROUTINE FIB(A,N)
      INTEGER N
      REAL*8 A(N)
Cf2py intent(in) n
Cf2py intent(out) a
Cf2py depend(n) a
      DO I=1,N
         IF (I.EQ.1) THEN
            A(I) = 0.0D0
         ELSEIF (I.EQ.2) THEN
            A(I) = 1.0D0
         ELSE 
            A(I) = A(I-1) + A(I-2)
         ENDIF
      ENDDO
      END