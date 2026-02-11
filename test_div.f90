! test_sum.f90
program test_sum
use iso_fortran_env, only : RP => REAL32

implicit none
!real(RP) :: x(14), y(14), s
real(RP) :: x(9), y(9), s
!real(RP) :: x(8), y(8), s

!x =  [0., 0., 7.E-45, 7.E-45, 0., 5.E-45, 0., 5.E-45, 5.E-45, 0., 0., 0., 0., 5.E-45]
x =  [5.E-45, 0., 5.E-45, 5.E-45, 0., 0., 0., 0., 5.E-45]
!x =  [0., 5.E-45, 5.E-45, 0., 0., 0., 0., 5.E-45]
s =  maxval(abs(x))
y =  x/s

print *, x/s, '|', x/maxval(abs(x)), '|', x/maxval(abs(x)), '|', y
print *, (x/s)**2, '|', (x/maxval(abs(x)))**2, '|', y**2

end program test_sum
