from z3 import *
g=Goal()
R = BitVec('R', 32)
# rdi = BitVec('rdi', 32)
# rsi = BitVec('rsi', 32)
rdi = BitVec('rdi', 32)
rsi = BitVec('rsi', 32)
g.add(Exists(R,And(Or(And(And(10 != Extract(31, 0, rsi), True),
            0 < Extract(31, 0, rdi),
            0 <
            Extract(31, 0, rdi)*
            Extract(31, 0, rdi)*
            Extract(31, 0, rdi),
            0 == R),
        And(10 == Extract(31, 0, rsi),
            0 < Extract(31, 0, rdi),
            0 <
            Extract(31, 0, rdi)*
            Extract(31, 0, rdi)*
            Extract(31, 0, rdi),
            4652007308841189376 == R),
        And(And(20 != Extract(31, 0, rsi), True),
            0 < Extract(31, 0, rdi),
            0 >=
            Extract(31, 0, rdi)*
            Extract(31, 0, rdi)*
            Extract(31, 0, rdi),
            0 == R),
        And(20 == Extract(31, 0, rsi),
            0 < Extract(31, 0, rdi),
            0 >=
            Extract(31, 0, rdi)*
            Extract(31, 0, rdi)*
            Extract(31, 0, rdi),
            13875379345695965184 == R),
        And(0 >= Extract(31, 0, rdi),
            0 <
            Extract(31, 0, rdi)*
            Extract(31, 0, rdi)*
            Extract(31, 0, rdi),
            0 == R),
        And(0 >= Extract(31, 0, rdi),
            0 >=
            Extract(31, 0, rdi)*
            Extract(31, 0, rdi)*
            Extract(31, 0, rdi),
            0 == R)),
     Or(And(And(20 != Extract(31, 0, rsi), True),
            0 < Extract(31, 0, rdi),
            0 ==
            Extract(0,
                    0,
                    LShR(ZeroExt(32,
                                 Extract(31, 0, rdi)*
                                 Extract(31, 0, rdi)*
                                 Extract(31, 0, rdi)),
                         31)) &
            1,
            0 == R),
        And(20 == Extract(31, 0, rsi),
            0 < Extract(31, 0, rdi),
            0 ==
            Extract(0,
                    0,
                    LShR(ZeroExt(32,
                                 Extract(31, 0, rdi)*
                                 Extract(31, 0, rdi)*
                                 Extract(31, 0, rdi)),
                         31)) &
            1,
            13875379345695965184 == R),
        And(And(10 != Extract(31, 0, rsi), True),
            0 < Extract(31, 0, rdi),
            And(0 !=
                Extract(0,
                        0,
                        LShR(ZeroExt(32,
                                     Extract(31, 0, rdi)*
                                     Extract(31, 0, rdi)*
                                     Extract(31, 0, rdi)),
                             31)) &
                1,
                True),
            0 == R),
        And(10 == Extract(31, 0, rsi),
            0 < Extract(31, 0, rdi),
            And(0 !=
                Extract(0,
                        0,
                        LShR(ZeroExt(32,
                                     Extract(31, 0, rdi)*
                                     Extract(31, 0, rdi)*
                                     Extract(31, 0, rdi)),
                             31)) &
                1,
                True),
            4652007308841189376 == R),
        And(0 >= Extract(31, 0, rdi),
            0 ==
            Extract(0,
                    0,
                    LShR(ZeroExt(32,
                                 Extract(31, 0, rdi)*
                                 Extract(31, 0, rdi)*
                                 Extract(31, 0, rdi)),
                         31)) &
            1,
            0 == R),
        And(0 >= Extract(31, 0, rdi),
            And(0 !=
                Extract(0,
                        0,
                        LShR(ZeroExt(32,
                                     Extract(31, 0, rdi)*
                                     Extract(31, 0, rdi)*
                                     Extract(31, 0, rdi)),
                             31)) &
                1,
                True),
            0 == R)))
))
    
        
t = Tactic('qe')
print(t(g))
print(type(t(g)[0][0]))