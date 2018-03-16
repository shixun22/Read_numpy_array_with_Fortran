import numpy as np

NX = 10
NY = 4
NZ = 2

a = np.random.rand(NX, NY, NZ)
a.reshape((NX, NY, NZ), order='F').tofile('numpyarray_NX'+str(NX)+'_NY'+str(NY)+'_NZ'+str(NZ)+'.dat')

print 'Done!'

