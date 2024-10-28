from z3 import *
g=Goal()
R = BitVec('R', 32)
# rdi = BitVec('rdi', 32)
# rsi = BitVec('rsi', 32)
rdi = BitVec('rdi', 32)
rsi = BitVec('rsi', 32)
g.add(Exists(R,And(Or(And(4 < Extract(31, 0, rdi),
            R == Extract(31, 0, rdi)),
        And(4 >= Extract(31, 0, rdi), 5 == R)),
     Or(And(0 ==
            Extract(0,
                    0,
                    LShR(ZeroExt(32, Extract(31, 0, rdi)),
                         31)) &
            1,
            R == Extract(31, 0, rdi)),
        And(And(0 !=
                Extract(0,
                        0,
                        LShR(ZeroExt(32,
                                     Extract(31, 0, rdi)),
                             31)) &
                1,
                True),
            0 == R)))
))
    
        
t = Tactic('qe')
print(t(g))
print(type(t(g)[0][0]))