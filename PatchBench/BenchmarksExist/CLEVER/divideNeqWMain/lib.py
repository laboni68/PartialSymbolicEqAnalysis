from z3 import *
g=Goal()
R = BitVec('R', 32)
# rdi = BitVec('rdi', 32)
# rsi = BitVec('rsi', 32)
rdi = BitVec('rdi', 32)
rsi = BitVec('rsi', 32)
g.add(Exists(R,And(And(0 != Extract(31, 0, rsi), True),
     R ==
     Extract(31,
             0,
             Concat(Extract(31, 0, rdi) >> 31,
                    Extract(31, 0, rdi))/
             Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31, 31, rsi)),
                                        Extract(31, 31, rsi)),
                                        Extract(31, 31, rsi)),
                                        Extract(31, 31, rsi)),
                                        Extract(31, 31, rsi)),
                                        Extract(31, 31, rsi)),
                                        Extract(31, 31, rsi)),
                                        Extract(31, 31, rsi)),
                                        Extract(31, 31, rsi)),
                                        Extract(31, 31, rsi)),
                                        Extract(31, 31, rsi)),
                                  Extract(31, 31, rsi)),
                           Extract(31, 31, rsi)),
                    Extract(31, 0, rsi))),
     R == Extract(31, 0, rdi)*Extract(31, 0, rsi))
))
    
        
t = Tactic('qe')
print(t(g))
print(type(t(g)[0][0]))