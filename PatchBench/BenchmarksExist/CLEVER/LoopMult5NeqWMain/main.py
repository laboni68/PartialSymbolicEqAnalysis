from z3 import *
g=Goal()
R = BitVec('R', 32)
# rdi = BitVec('rdi', 32)
# rsi = BitVec('rsi', 32)
rdi = BitVec('rdi', 32)
rsi = BitVec('rsi', 32)
g.add(Exists(R,And(Or(And(6 >= Extract(31, 0, rdi),
            4 < Extract(31, 0, rdi),
            R == 5*Extract(31, 0, rdi)),
        And(6 < Extract(31, 0, rdi),
            4 < Extract(31, 0, rdi),
            0 == R),
        And(4 >= Extract(31, 0, rdi), 0 == R)),
     Or(And(7 > Extract(31, 0, rdi),
            6 <= Extract(31, 0, rdi),
            5 <= Extract(31, 0, rdi),
            4 <= Extract(31, 0, rdi),
            3 <= Extract(31, 0, rdi),
            2 <= Extract(31, 0, rdi),
            1 <= Extract(31, 0, rdi),
            6 >= Extract(31, 0, rdi),
            4 < Extract(31, 0, rdi),
            4294967266 == R),
        And(6 > Extract(31, 0, rdi),
            5 <= Extract(31, 0, rdi),
            4 <= Extract(31, 0, rdi),
            3 <= Extract(31, 0, rdi),
            2 <= Extract(31, 0, rdi),
            1 <= Extract(31, 0, rdi),
            6 >= Extract(31, 0, rdi),
            4 < Extract(31, 0, rdi),
            4294967271 == R),
        And(6 < Extract(31, 0, rdi),
            4 < Extract(31, 0, rdi),
            0 == R),
        And(4 >= Extract(31, 0, rdi), 0 == R)))
))
    
        
t = Tactic('qe')
print(t(g))
print(type(t(g)[0][0]))