! Single Comments
! Fortran is case insensitive 
program datatypes ! Always initiate with letters 
   implicit none 
   integer :: i ! Declare an integer variable called "i"
   real    :: x_sp !  Declare an real variable called "x_sp" Single Precision
   real*8  :: x_dp !  Declare an real variable called "x_sp" Double Precision
   !real*16  :: x_dp !  Declare an real variable called "x_sp" Fourth Precusion

   i    =   2
   x_sp = 3.14
   x_dp = 3.14d0  ! Always to initiate a double precission variable  "d0"
   ! i is a four byte number
   ! 1 byte = 8 bits
   ! 1 bit = 1 digit, 0 or 1 
   ! An integer can store up to 2^{4*8}= 2^32 different numbers 
   ! in fortran2 we can store from -2^{31 } to -2^{31} ´2^{31}- 1

   print*, 'Hello World'

   print*, i 
   print*, x_sp 
   print*, x_dp
   print*, huge(i) ! = 2^31 - 1 The largest 4 byte number
   print*, huge(x_sp) ! = 2^31 - 1 The largest 4 byte number
   print*, tiny(x_sp) ! = 2^31 - 1 The largest 4 byte number

   print*, huge(x_dp) ! = 2^31 - 1 The largest 4 byte number
   print*, tiny(x_dp) ! = 2^31 - 1 The largest 4 byte number



end program datatypes
