import numpy as np

NX = 10
NY = 4
NZ = 2

a = np.random.rand(NX, NY, NZ)
a.ravel(order='F').tofile('numpyarray_NX'+str(NX)+'_NY'+str(NY)+'_NZ'+str(NZ)+'.dat')  

# Note: neither "a.reshape((NX,NY,NZ), order='F')" nor "np.asfortranarray(a)" in python-2.7 keeps the ND array in correct order! 
# Must use a.ravel first! 

print 'Done!'

