program loops
    ! This program 
    !To execute a program gfortran 002_loops.f95  and the .,
    implicit none  !! This force us to declare all the variables 

    integer :: i 
    integer, parameter :: n = 10 ! This defines a parameter 
    
    open(unit = 100, file = 'datos.dat')

    do i = 1, n
        !print*, i**2 
        write(100,*) i, i**2 ! (Where to write the data ifgnp, *)

    end do

    ! plot "datos.dat" using x:y
    ! plot "datos.dat" using 1:2 with lines
    
end program loops