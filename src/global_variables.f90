module global_variables
  implicit none
  
! mathematical constants
  real(8),parameter :: pi = 4d0*atan(1d0)
  complex(8),parameter :: zi = (0d0,1d0)

! mesh
  integer :: nx
  real(8) :: dx
  real(8),allocatable :: xx(:)

! wavefunction
  real(8),allocatable :: wfn(:)
  complex(8),allocatable :: zwfn(:)

! potentials
  real(8),allocatable :: vext(:),vabs(:)

! time propagation
  integer :: nt



end module global_variables
