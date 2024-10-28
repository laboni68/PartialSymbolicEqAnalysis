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
            And(0 != Extract(31, 0, rdi), True),
            1 == R),
        And(And(0 !=
                Extract(0,
                        0,
                        LShR(ZeroExt(32,
                                     Extract(31, 0, rdi)),
                             31)) &
                1,
                True),
            And(0 != Extract(31, 0, rdi), True),
            4294967295 == R),
        And(0 == Extract(31, 0, rdi), 0 == R)),
     Or(And(0 < Extract(31, 0, rdi), 1 == R),
        And(0 >= Extract(31, 0, rdi), 4294967295 == R)))
))
    
        
t = Tactic('qe')
print(t(g))
print(type(t(g)[0][0]))