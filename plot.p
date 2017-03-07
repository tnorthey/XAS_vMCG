
set terminal png size 1600,1200 enhanced font "Helvetica,24"
set output 'output.png'
set title "Pyrazine XAS, Nitrogen edge"
set xlabel "E (eV)"
set ylabel "Intensity (arb. units)"
set xrange [408:416]

plot "qchem/cvs-adc-gs.dat" using 1:2 title 'GS' with lines, \
     "qchem/cvs-adc-mom-s1.dat" using 1:2 title 'ES (S1)' with lines, \
     "qchem/cvs-adc-mom-s2.dat" using 1:2 title 'ES (S2)' with lines

#"qchem/cvs-adc-triplet.dat" using 1:2 title 'ES (SCF triplet)' with lines, \
