! test_b.f90
program test_b
use iso_fortran_env, only : RP => REAL32

implicit none

! The code may behave differently depending on the dimension of the array. Try them.
real(RP) :: a(14), b(14), c, d
a =  [0., 0., 7.E-45, 7.E-45, 0., 5.E-45, 0., 5.E-45, 5.E-45, 0., 0., 0., 0., 5.E-45]

!real(RP) :: a(9), b(9), c
!a =  [5.E-45, 0., 5.E-45, 5.E-45, 0., 0., 0., 0., 5.E-45]
!
!real(RP) :: a(8), b(8), c
!a =  [0., 5.E-45, 5.E-45, 0., 0., 0., 0., 5.E-45]

b =  a / maxval(abs(a))
c =  maxval(abs(a))

print *,  '>>> Dimension = ', size(a)

print *,  b
print *, b**2
print * , '------------------'
print *, a, '|', b
print *, a, '|', b**2
print * , '------------------'
print *, a, '|', a, '|', b
print *, a, '|', a, '|', b**2

print * , '=================='

print * , 'sqrt(sum(b**2))', sqrt(sum(b**2))
print * , c
d = sqrt(sum(b**2))
print * , 'c*sqrt(sum(b**2))', d * c

end program test_b
