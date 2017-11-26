subroutine initialize
  use global_variables
  implicit none
  integer :: ix
  real(8) :: ss

  nx = 1000
  dx = 0.2d0
  
  allocate(xx(-nx:nx), wfn(-nx:nx), zwfn(-nx:nx))
  allocate(vext(-nx:nx), vabs(-nx:nx))

  do ix = -nx,nx
     xx(ix) = dx*ix
  end do

  vext = -1d0/sqrt(xx**2+1d0)
  wfn = exp(-xx**2)
  ss = sum(wfn**2)*dx
  wfn = wfn/sqrt(ss)


end subroutine initialize
