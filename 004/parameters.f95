module parameters
    use iso_fortran_env, only:  dp => real64, i4 => int32

    implicit none
    
    !PARAMETERS |
    ! 
    integer(i4), parameter :: n = 100 ! integer single precision
    integer(i4), parameter :: id_file = 100! integer single precision
    
    
    real(dp), parameter :: t_i = 0.0_dp !double precision number
    real(dp), parameter :: t_f = 1.0_dp !double precision number
    real(dp), parameter :: x_i = 1.0_dp !double precision number
    
    character(*), parameter :: file_name = 'exp_decay2.dat' ! (*) indefined string length


    real(dp), parameter :: d_t = (t_f - t_i)/n

    
end module parameters