# Read_numpy_array_with_Fortran
Pass array from python to Fortran

gen_fortran_readable_array.py:
Python code generating array data readable with Fortran

numpyarray_NX10_NY4_NZ2.dat:	
Example of generated array

read_saved_pythonbinaryarray.F90:
Fortran code reading python-generated array

to read the same data file with python, use:
>>> a = np.fromfile('numpyarray_NX10_NY4_NZ2.dat')
>>> a.reshape((10,4,2), order='F')
