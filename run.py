# Run 

from myfunctions import *

tstep=100		# Time-step (starts at 0)
istate=2		# State 1 or 2 
Nstate=2 				# Number of states: 2 state model
Modes=[11,3,14,8] 			# Known from comparison to pyrazine 4-mode model paper 
xyzfile='inputs/equilibrium.xyz'	# initial xyz coordinates

# Generate xyz files
generator_(tstep,istate,Nstate,Modes,xyzfile)


