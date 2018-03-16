! implementing method given in 
! victortxa's answer in stack overflow:
! https://stackoverflow.com/questions/37905759/save-numpy-array-as-binary-to-read-from-fortran
!
! compile with: g95 -o readarray read_saved_pythonbinaryarray.F90
! run with: ./readarray

PROGRAM read_saved_python
IMPLICIT NONE

REAL(KIND=8),ALLOCATABLE :: matrix(:,:,:)
INTEGER :: Nx, Ny, Nz
character(len=128) :: filename

Nx = 10
Ny = 4
Nz = 2
filename = 'numpyarray_NX10_NY4_NZ2.dat'

ALLOCATE(matrix(Nx, Ny, Nz))


OPEN(33, FILE=filename,&
     FORM="UNFORMATTED", STATUS="UNKNOWN", ACTION="READ", ACCESS='STREAM')

READ(33) matrix


write(*,*) matrix


CLOSE(33)
DEALLOCATE(matrix)

END PROGRAM read_saved_python


