#!/bin/bash
bash devtools/install.sh

export PATH=`pwd`/anaconda/bin:$PATH

source activate rdkit

export PYTHONPATH=`pwd`:$PYTHONPATH
cd tests/
pytest . --junitxml="../pytest.xml"
