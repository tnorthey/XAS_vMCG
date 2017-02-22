#!/bin/bash

cat template-adc-s2.inp1 > ${1%.*}.inp
tail -n +3 $1 >> ${1%.*}.inp
cat template-adc-s2.inp2 >> ${1%.*}.inp

