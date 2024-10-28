from z3 import *
g=Goal()
R = BitVec('R', 32)
# rdi = BitVec('rdi', 32)
# rsi = BitVec('rsi', 32)
rdi = BitVec('rdi', 32)
rsi = BitVec('rsi', 32)
g.add(Exists(R,And(Or(And(10 < Extract(31, 0, rdi), 11 == R),
        And(10 >= Extract(31, 0, rdi),
            R == Extract(31, 0, rdi))),
     Or(And(10 < Extract(31, 0, rdi), 11 == R),
        And(10 >= Extract(31, 0, rdi),
            R == 1 + Extract(31, 0, rdi))))
))
    
        
t = Tactic('qe')
print(t(g))
print(type(t(g)[0][0]))