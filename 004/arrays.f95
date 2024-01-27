module arrays
    use iso_fortran_env, only:  dp => real64, i4 => int32 
    use parameters

    implicit none
    
    !Arrays by default begins in 1 
    

    real(dp) :: x(n) !1-d arrayr real(dp) :: x(1:n) or real(dp) :: x(0:n)
    real(dp), dimension(n) :: t  ! 1-d array

   

    
end module arrays