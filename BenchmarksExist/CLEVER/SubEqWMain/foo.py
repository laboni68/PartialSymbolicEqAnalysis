from z3 import *
g=Goal()
R = BitVec('R', 32)
# rdi = BitVec('rdi', 32)
# rsi = BitVec('rsi', 32)
rdi = BitVec('rdi', 32)
rsi = BitVec('rsi', 32)
g.add(Exists(R,And(R ==
     Extract(31, 0, rdi) + 4294967295*Extract(31, 0, rsi),
     R ==
     Extract(31, 0, rsi) + 4294967295*Extract(31, 0, rdi))
))
    
        
t = Tactic('qe')
print(t(g))
print(type(t(g)[0][0]))