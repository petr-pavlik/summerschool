module my_module
  implicit none
  integer, parameter :: rk = selected_real_kind(12)

  contains


    real(rk) function my_sum(a, b)
      implicit none
      !$omp declare target
     
      real(rk) :: a, b

      my_sum = a + b
    end function

end module
