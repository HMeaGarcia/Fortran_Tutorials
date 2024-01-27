module ode
    !compile before the main program
    use iso_fortran_env, only:  dp => real64
    implicit none
   
    !private  ! Makes all below private

    abstract interface
    function func(x, t) result(rest)

        use iso_fortran_env, only:  dp => real64
        implicit none 
        real(dp), intent(in):: x, t
        real(dp) :: rest
            
        end function func

    end interface

contains

function euler_step(x ,t, dt, f) result(y)
    implicit none
    real(dp), intent(in) :: x
    real(dp), intent(in) :: t
    real(dp), intent(in) :: dt
   procedure(func) :: f

    real(dp) :: y

    ! Declaring a function as an argument . "Callbacks"
    

    y = f(x, t)*dt + x



    end function euler_step

    
end module ode