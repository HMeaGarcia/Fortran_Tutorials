program functions_subroutine_models
    !modern_fortran

    use iso_fortran_env, only:  dp => real64, i4 => int32 !  dp as 64 bit, in a 32 bit there are 4 bytes
    !User defined modules
    use ode
    use parameters
    use arrays
    use init

    implicit none

    integer(i4) :: i 

    
       

   
    call set_time_grid(t, t_i, d_t)
    

    

    
    ! Solving diffeq
    x(1) = x_i

    do i = 1 , n - 1

        x(i + 1) =  euler_step(x(i),t(i), d_t, f ) !f(x(i), t_i)*d_t + x(i)

    end do 
    
    !write data
    open(unit = id_file , file = file_name)

    do i = 1,n
        write(id_file,*) t(i), x(i)
    end do

contains 
    !xx and tt and y dummy arguments
    function f(x,t) result(y)
    
        use iso_fortran_env, only:  dp => real64 ! , i4 => int32  for use in another file
        implicit none  ! because is independent of the codey
        
        !intent(in) = intention of the varible: does nothe change the value of the arguments. Only reads it
        !intent(out) = only outputs the argument. Only writes it 
        !intent(input) = modifies the value of the argument.  
        !intent only for arguments
        real(dp), intent(in) :: x
        real(dp), intent(in) :: t
        real(dp) :: y

        ! define function

         y = -x


    end function    f                ! this is a procedure


end program functions_subroutine_models