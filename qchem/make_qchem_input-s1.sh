#!/bin/bash

cat template-adc-s1.inp1 > ${1%.*}.inp
tail -n +3 $1 >> ${1%.*}.inp
cat template-adc-s1.inp2 >> ${1%.*}.inp

