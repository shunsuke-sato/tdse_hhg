subroutine hpsi(tpsi,htpsi)
  use global_variables
  implicit none
  real(8),intent(in) :: tpsi(-nx:nx)
  real(8),intent(out) :: htpsi(-nx:nx)
  real(8),intent(in) :: ttpsi(-nx-4:nx+4)
  integer :: ix
! finite difference
  real(8),parameter :: cN0=-205d0/72d0,cN1=8d0/5d0
  real(8),parameter :: cN2=-1d0/5d0,cN3=8d0/315d0
  real(8),parameter :: cN4=-1d0/560d0   

  ttpsi(-nx-4:nx-1)  =  0d0
  ttpsi(-nx:nx)      =  tpsi(-nx:nx)
  ttpsi(nx+1:nx+4)   =  0d0

  do ix = -nx,nx
     htpsi(ix) = -0.5d0*(cN0*ttpsi(ix)   &
          +cN1*(ttpsi(ix+1)+ttpsi(ix-1))  &
          +cN2*(ttpsi(ix+2)+ttpsi(ix-2))  &
          +cN3*(ttpsi(ix+3)+ttpsi(ix-3))  &
          +cN4*(ttpsi(ix+4)+ttpsi(ix-4))  &
          )
  end do

  htpsi = htpsi + vext*tpsi


end subroutine hpsi
