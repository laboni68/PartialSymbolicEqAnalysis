# PartialSymbolicAnalysis

## Required Installation
**Pre-requisite for running :**

* python 3.8+
* angr (https://docs.angr.io/en/latest/getting-started/installing.html)
* Z3 
<br /><br />

**Running the script file:**
1. workon angr
2. pip install claripy (if angr can not find any module to run pip install that module will install that particular module)


## Benchmarks
- EQBench: CLEVER, dart, pow
- patchByProject: qemu, linux, FFmpeg 

## Approaches
- RelationalRangeSearch.py
- EnsembleRangeSearch.py
- Enumeration.py
- Projection.py

## Model Counter
- SearchMC: https://github.com/seonmokim/SearchMC
- Ganak: https://github.com/meelgroup/ganak.git
- ABC: https://github.com/vlab-cs-ucsb/ABC.git
- qCoral:

## Convert from Bitvector to Dimacs cnf
- pydimacs: https://github.com/RobinDavid/pydimacs.git
