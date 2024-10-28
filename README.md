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
- EqChecker.py
- RelationalRangeSearch.py
- EnsembleRangeSearch.py
- Enumeration.py
- Projection.py
## Commands
- ``python3 EqChecker.py --b1 < binary1 > --b2 < binary2 > --fn < functionName > --r < returnType > --LB < bound > --home < location >``
- ``python3 EnsembleRangeSearch.py < neqConstraint > < eqConstraint > < bit > < location >``
- ``python3 RelationalRangeSearch.py < neqConstraint > < eqConstraint > < bit > < location >``
- ``python3 Projection.py < eqConstraint > < location > < SaveFileName >``
- ``timeout < time-limit > python3 Enumeration.py < constraint > < bit > > < fileToSave >``

## Command examples to run dart/test/EqWMain/ from EqBench
- ``python3 EqChecker.py --b1 oldV --b2 newV --fn snippet --r double --LB --home EqBench/dart/test/EqWMain/``
- ``python3 EnsembleRangeSearch.py EqBench/dart/test/EqWMain/ResultsnippetNEQ.smt2 EqBench/dart/test/EqWMain/ResultsnippetEQ.smt2 32 EqBench/dart/test/EqWMain/``
- ``python3 RelationalRangeSearch.py EqBench/dart/test/EqWMain/ResultsnippetNEQ.smt2 EqBench/dart/test/EqWMain/ResultsnippetEQ.smt2 32 EqBench/dart/test/EqWMain/``
- ``python3 Projection.py EqBench/dart/test/EqWMain/ResultsnippetEQ.smt2 EqBench/dart/test/EqWMain/ projection``
- ``timeout 120 python3 Enumeration.py EqBench/dart/test/EqWMain/ResultsnippetNEQ.smt2 32 > EqBench/dart/test/EqWMain/EnumResult.txt``

## Model Counter
- SearchMC: https://github.com/seonmokim/SearchMC
- Ganak: https://github.com/meelgroup/ganak.git
- ABC: https://github.com/vlab-cs-ucsb/ABC.git
- qCoral:

## Convert from Bitvector to Dimacs cnf
- pydimacs: https://github.com/RobinDavid/pydimacs.git
