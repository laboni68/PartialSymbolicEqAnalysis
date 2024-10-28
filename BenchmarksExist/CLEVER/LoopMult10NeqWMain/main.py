from z3 import *
g=Goal()
R = BitVec('R', 32)
# rdi = BitVec('rdi', 32)
# rsi = BitVec('rsi', 32)
rdi = BitVec('rdi', 32)
rsi = BitVec('rsi', 32)
g.add(Exists(R,And(Or(And(11 >= Extract(31, 0, rdi),
            8 < Extract(31, 0, rdi),
            R == 10*Extract(31, 0, rdi)),
        And(11 < Extract(31, 0, rdi),
            8 < Extract(31, 0, rdi),
            0 == R),
        And(8 >= Extract(31, 0, rdi), 0 == R)),
     Or(And(12 > Extract(31, 0, rdi),
            11 <= Extract(31, 0, rdi),
            10 <= Extract(31, 0, rdi),
            9 <= Extract(31, 0, rdi),
            8 <= Extract(31, 0, rdi),
            7 <= Extract(31, 0, rdi),
            6 <= Extract(31, 0, rdi),
            5 <= Extract(31, 0, rdi),
            4 <= Extract(31, 0, rdi),
            3 <= Extract(31, 0, rdi),
            2 <= Extract(31, 0, rdi),
            1 <= Extract(31, 0, rdi),
            11 >= Extract(31, 0, rdi),
            8 < Extract(31, 0, rdi),
            4294967186 == R),
        And(11 > Extract(31, 0, rdi),
            10 <= Extract(31, 0, rdi),
            9 <= Extract(31, 0, rdi),
            8 <= Extract(31, 0, rdi),
            7 <= Extract(31, 0, rdi),
            6 <= Extract(31, 0, rdi),
            5 <= Extract(31, 0, rdi),
            4 <= Extract(31, 0, rdi),
            3 <= Extract(31, 0, rdi),
            2 <= Extract(31, 0, rdi),
            1 <= Extract(31, 0, rdi),
            11 >= Extract(31, 0, rdi),
            8 < Extract(31, 0, rdi),
            4294967196 == R),
        And(10 > Extract(31, 0, rdi),
            9 <= Extract(31, 0, rdi),
            8 <= Extract(31, 0, rdi),
            7 <= Extract(31, 0, rdi),
            6 <= Extract(31, 0, rdi),
            5 <= Extract(31, 0, rdi),
            4 <= Extract(31, 0, rdi),
            3 <= Extract(31, 0, rdi),
            2 <= Extract(31, 0, rdi),
            1 <= Extract(31, 0, rdi),
            11 >= Extract(31, 0, rdi),
            8 < Extract(31, 0, rdi),
            4294967206 == R),
        And(11 < Extract(31, 0, rdi),
            8 < Extract(31, 0, rdi),
            0 == R),
        And(8 >= Extract(31, 0, rdi), 0 == R)))
))
    
        
t = Tactic('qe')
print(t(g))
print(type(t(g)[0][0]))