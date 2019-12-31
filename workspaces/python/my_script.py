#!/usr/bin/env python

from ctypes import CDLL, POINTER, c_float
#import numpy as np
import mylibf


## my_libf call ------------------------------------------------
#

print("\nCalling subroutine avg_sqrt(a,b,c) writted in Fortran")
r = mylibf.avg_sqrt(10, 10, 10)
print('mylibf.avg_sqrt(10, 10, 10) =', r)
print()

print("Calling subroutine fib(n) writted in Fortran")
r = mylibf.fib(10)
print('mylibf.fib(10) =', r)
print()

# For see subroutine signature
# print(mylibf.avg_sqrt.__doc__)
# print(mylibf.fib.__doc__)

## my_libc call ------------------------------------------------
#
so_file = "../c/mylibc.so"
mylibc = CDLL(so_file)

print("Calling function square(n) writted in C language")
print('mylibc.square(10) =', mylibc.square(10))
print()

print("Done") 