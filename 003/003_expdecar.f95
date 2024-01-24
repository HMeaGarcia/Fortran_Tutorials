program exp_decay
    use iso_fortran_env

    implicit none

    real(real64) :: x
    real(real64), parameter :: dt = 0.01 ! This defines 
    integer, parameter :: n = 100 ! This defines a parameter 
    
    integer(int32) :: i 
    
    open(unit = 69, file = 'expdecay.dat')
    x = 1.0_real64
    
    write(69, *) '# '

    do i = 1, n
        x = (-x)*dt + x
        write(69, * ) i*dt, x 
        


    end do


end program exp_decay