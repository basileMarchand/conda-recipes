#!/bin/bash 


echo $(env)

git clone https://gitlab.com/drti/basic-tools.git --branch v1.5 --single-branch BasicTools
cd BasicTools
export BASICTOOLS_DISABLE_MKL=1
export BASICTOOLS_DISABLE_OPENMP=1

${PYTHON} -m pip install . --prefix=${PREFIX} --no-deps

cd .. 

${PYTHON} -m pip install . --prefix=${PREFIX} --no-deps