from z3 import *
g=Goal()
R = BitVec('R', 32)
# rdi = BitVec('rdi', 32)
# rsi = BitVec('rsi', 32)
rdi = BitVec('rdi', 32)
rsi = BitVec('rsi', 32)
g.add(Exists(R,And(Or(And(21 >= Extract(31, 0, rdi),
            17 < Extract(31, 0, rdi),
            R == 20*Extract(31, 0, rdi)),
        And(21 < Extract(31, 0, rdi),
            17 < Extract(31, 0, rdi),
            0 == R),
        And(17 >= Extract(31, 0, rdi), 0 == R)),
     Or(And(22 > Extract(31, 0, rdi),
            21 <= Extract(31, 0, rdi),
            20 <= Extract(31, 0, rdi),
            19 <= Extract(31, 0, rdi),
            18 <= Extract(31, 0, rdi),
            17 <= Extract(31, 0, rdi),
            16 <= Extract(31, 0, rdi),
            15 <= Extract(31, 0, rdi),
            14 <= Extract(31, 0, rdi),
            13 <= Extract(31, 0, rdi),
            12 <= Extract(31, 0, rdi),
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
            21 >= Extract(31, 0, rdi),
            17 < Extract(31, 0, rdi),
            4294966876 == R),
        And(21 > Extract(31, 0, rdi),
            20 <= Extract(31, 0, rdi),
            19 <= Extract(31, 0, rdi),
            18 <= Extract(31, 0, rdi),
            17 <= Extract(31, 0, rdi),
            16 <= Extract(31, 0, rdi),
            15 <= Extract(31, 0, rdi),
            14 <= Extract(31, 0, rdi),
            13 <= Extract(31, 0, rdi),
            12 <= Extract(31, 0, rdi),
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
            21 >= Extract(31, 0, rdi),
            17 < Extract(31, 0, rdi),
            4294966896 == R),
        And(20 > Extract(31, 0, rdi),
            19 <= Extract(31, 0, rdi),
            18 <= Extract(31, 0, rdi),
            17 <= Extract(31, 0, rdi),
            16 <= Extract(31, 0, rdi),
            15 <= Extract(31, 0, rdi),
            14 <= Extract(31, 0, rdi),
            13 <= Extract(31, 0, rdi),
            12 <= Extract(31, 0, rdi),
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
            21 >= Extract(31, 0, rdi),
            17 < Extract(31, 0, rdi),
            4294966916 == R),
        And(19 > Extract(31, 0, rdi),
            18 <= Extract(31, 0, rdi),
            17 <= Extract(31, 0, rdi),
            16 <= Extract(31, 0, rdi),
            15 <= Extract(31, 0, rdi),
            14 <= Extract(31, 0, rdi),
            13 <= Extract(31, 0, rdi),
            12 <= Extract(31, 0, rdi),
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
            21 >= Extract(31, 0, rdi),
            17 < Extract(31, 0, rdi),
            4294966936 == R),
        And(21 < Extract(31, 0, rdi),
            17 < Extract(31, 0, rdi),
            0 == R),
        And(17 >= Extract(31, 0, rdi), 0 == R)))
))
    
        
t = Tactic('qe')
print(t(g))
print(type(t(g)[0][0]))