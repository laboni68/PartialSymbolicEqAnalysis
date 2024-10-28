from z3 import *
g=Goal()
R = BitVec('R', 32)
# rdi = BitVec('rdi', 32)
# rsi = BitVec('rsi', 32)
rdi = BitVec('rdi', 32)
rsi = BitVec('rsi', 32)
g.add(Exists(R,And(Or(And(0 ==
            Extract(31,
                    0,
                    URem(Concat(0, Extract(31, 0, rdi)), 7)),
            And(0 !=
                Extract(31,
                        0,
                        URem(Concat(0, Extract(31, 0, rdi)),
                             5)),
                True),
            And(0 !=
                Extract(31,
                        0,
                        URem(Concat(0, Extract(31, 0, rdi)),
                             3)),
                True),
            And(0 != Extract(0, 0, rdi), True),
            And(0 != Extract(31, 0, rsi), True),
            0 == R),
        And(0 ==
            Extract(31,
                    0,
                    URem(Concat(0, Extract(31, 0, rdi)), 5)),
            And(0 !=
                Extract(31,
                        0,
                        URem(Concat(0, Extract(31, 0, rdi)),
                             3)),
                True),
            And(0 != Extract(0, 0, rdi), True),
            And(0 != Extract(31, 0, rsi), True),
            0 == R),
        And(0 ==
            Extract(31,
                    0,
                    URem(Concat(0, Extract(31, 0, rdi)), 3)),
            And(0 != Extract(0, 0, rdi), True),
            And(0 != Extract(31, 0, rsi), True),
            0 == R),
        And(0 == Extract(0, 0, rdi),
            And(0 != Extract(31, 0, rsi), True),
            0 == R),
        And(0 == Extract(31, 0, rsi), 0 == R)),
     Or(And(0 ==
            Extract(31,
                    0,
                    URem(Concat(0, Extract(31, 0, rdi)), 7)),
            And(0 !=
                Extract(31,
                        0,
                        URem(Concat(0, Extract(31, 0, rdi)),
                             5)),
                True),
            And(0 !=
                Extract(31,
                        0,
                        URem(Concat(0, Extract(31, 0, rdi)),
                             3)),
                True),
            And(0 != Extract(0, 0, rdi), True),
            And(0 != Extract(31, 0, rsi), True),
            R ==
            Concat(0, If(7 == Extract(31, 0, rdi), 1, 0))),
        And(0 ==
            Extract(31,
                    0,
                    URem(Concat(0, Extract(31, 0, rdi)), 5)),
            And(0 !=
                Extract(31,
                        0,
                        URem(Concat(0, Extract(31, 0, rdi)),
                             3)),
                True),
            And(0 != Extract(0, 0, rdi), True),
            And(0 != Extract(31, 0, rsi), True),
            R ==
            Concat(0, If(5 == Extract(31, 0, rdi), 1, 0))),
        And(0 ==
            Extract(31,
                    0,
                    URem(Concat(0, Extract(31, 0, rdi)), 3)),
            And(0 != Extract(0, 0, rdi), True),
            And(0 != Extract(31, 0, rsi), True),
            R ==
            Concat(0, If(3 == Extract(31, 0, rdi), 1, 0))),
        And(0 == Extract(0, 0, rdi),
            And(0 != Extract(31, 0, rsi), True),
            R ==
            Concat(0, If(2 == Extract(31, 0, rdi), 1, 0))),
        And(0 == Extract(31, 0, rsi), 0 == R)))
))
    
        
t = Tactic('qe')
print(t(g))
print(type(t(g)[0][0]))