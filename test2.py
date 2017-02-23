# Contents of test.py
from myfunctions import *

# Definitions
istate=1                                # Electronic state of interest
Nstate=2				# Total number of states

Nmode,Ng,Time,v = read_gwpcentres(Nstate,istate) # Read list of time-steps (atomic units) and displacement factors

Time,gWeights = read_output(Nstate,Ng)	 # Read time-steps (fs), and Gaussian weights

print "Displacement factors:"

# Test printing out the displacement factors
for j in range(2*Ng):
   string = str(v[0][j]) + ' ' + str(v[1][j]) + ' ' + str(v[2][j]) + ' ' + str(v[3][j])
   print string.split()

print "Gaussian weights:"

# Test printing out the Gaussian weights
for j in range(4):
   string = str(gWeights[0][j]) + ' ' + str(gWeights[1][j]) + ' ' + str(gWeights[2][j])
   print string.split()


