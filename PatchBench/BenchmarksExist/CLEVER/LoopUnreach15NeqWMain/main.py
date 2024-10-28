from z3 import *
g=Goal()
R = BitVec('R', 32)
# rdi = BitVec('rdi', 32)
# rsi = BitVec('rsi', 32)
rdi = BitVec('rdi', 32)
rsi = BitVec('rsi', 32)
g.add(Exists(R,And(Or(And(0 ==
            Extract(0,
                    0,
                    LShR(ZeroExt(32, Extract(31, 0, rdi)),
                         31)) &
            1,
            15 >= Extract(31, 0, rdi),
            12 < Extract(31, 0, rdi),
            0 == R),
        And(15 < Extract(31, 0, rdi),
            12 < Extract(31, 0, rdi),
            0 == R),
        And(12 >= Extract(31, 0, rdi), 0 == R)),
     Or(And(0 ==
            Extract(0,
                    0,
                    LShR(ZeroExt(32, Extract(31, 0, rdi)),
                         31)) &
            1,
            15 >= Extract(31, 0, rdi),
            12 < Extract(31, 0, rdi),
            1 == R),
        And(15 < Extract(31, 0, rdi),
            12 < Extract(31, 0, rdi),
            0 == R),
        And(12 >= Extract(31, 0, rdi), 0 == R)))
))
    
        
t = Tactic('qe')
print(t(g))
print(type(t(g)[0][0]))