# Python script calling C/Fortran libraries

```
$ docker-compose up python
Starting gcc ... done
Starting fortran ... done
Starting python  ... done
Attaching to python
python     | Python 3.8.0
python     |
python     | Calling subroutine avg_sqrt(a,b,c) writted in Fortran
python     | mylibf.avg_sqrt(10, 10, 10) = 100.0
python     |
python     | Calling subroutine fib(n) writted in Fortran
python     | mylibf.fib(10) = [ 0.  1.  1.  2.  3.  5.  8. 13. 21. 34.]
python     |
python     | Calling function square(n) writted in C language
python     | mylibc.square(10) = 100
python     |
python     | Done
python exited with code 0
```

Reference: https://docs.scipy.org/doc/numpy/f2py/python-usage.html?highlight=python
