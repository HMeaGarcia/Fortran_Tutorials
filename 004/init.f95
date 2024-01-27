module init
    use iso_fortran_env, only:  dp => real64, i4 => int32 
    implicit none
    
contains
    !Subrooutines calls back implicit none so it is not necesseart
    !Subroutine is small program 
    subroutine set_time_grid(t, ti ,dt)
        real(dp), intent(out) :: t(:) ! because is gonna change
        real(dp), intent(in) :: ti, dt ! because they are constant 
        integer(i4) :: i 

        t(1) = ti
        ! initialize time variable 

        do  i = 1, size(t)
            t(i) = ti +  dt*i  
    
        end do
    


        

        end subroutine set_time_grid
end module init