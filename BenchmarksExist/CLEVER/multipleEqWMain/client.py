from z3 import *
g=Goal()
R = BitVec('R', 32)
# rdi = BitVec('rdi', 32)
# rsi = BitVec('rsi', 32)
rdi = BitVec('rdi', 32)
rsi = BitVec('rsi', 32)
g.add(Exists(R,And(Or(And(And(0 !=
                30*Extract(31, 0, rdi) +
                4294967295*
                Concat(Extract(29,
                               0,
                               Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(63, 63, ...)),
                                        Extract(63,
                                        63,
                                        ...*...)),
                                        Extract(63,
                                        63,
                                        1717986919*
                                        Concat(..., ...))),
                                        Extract(63,
                                        63,
                                        1717986919*
                                        Concat(Concat(...,
                                        ...),
                                        ...*...))),
                                        Extract(63,
                                        63,
                                        1717986919*
                                        Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        30*
                                        Extract(31, 0, ...)))),
                                        Extract(63,
                                        63,
                                        1717986919*
                                        Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ...*...)),
                                        30*
                                        Extract(31, 0, rdi)))),
                                        Extract(63,
                                        63,
                                        1717986919*
                                        Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ...*...)),
                                        Extract(31,
                                        31,
                                        30*
                                        Extract(31, 0, ...))),
                                        30*
                                        Extract(31, 0, rdi)))),
                                      Extract(63,
                                        32,
                                        1717986919*
                                        Concat(Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ...*...)),
                                        Extract(31,
                                        31,
                                        30*
                                        Extract(31, 0, ...))),
                                        Extract(31,
                                        31,
                                        30*
                                        Extract(31, 0, rdi))),
                                        30*
                                        Extract(31, 0, rdi)))) >>
                               1) +
                       1073741823*
                       Extract(29,
                               0,
                               Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ...*...)),
                                        Extract(31,
                                        31,
                                        30*
                                        Extract(31, 0, ...))),
                                        Extract(31,
                                        31,
                                        30*
                                        Extract(31, 0, rdi))),
                                        Extract(31,
                                        31,
                                        30*
                                        Extract(31, 0, rdi))),
                                        Extract(31,
                                        31,
                                        30*
                                        Extract(31, 0, rdi))),
                                      30*Extract(31, 0, rdi)) >>
                               31),
                       0) +
                4294967295*
                Extract(31,
                        0,
                        Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(63, 63, ...)),
                                        Extract(63,
                                        63,
                                        ...*...)),
                                        Extract(63,
                                        63,
                                        1717986919*
                                        Concat(..., ...))),
                                        Extract(63,
                                        63,
                                        1717986919*
                                        Concat(Concat(...,
                                        ...),
                                        ...*...))),
                                        Extract(63,
                                        63,
                                        1717986919*
                                        Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        30*
                                        Extract(31, 0, ...)))),
                                        Extract(63,
                                        63,
                                        1717986919*
                                        Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ...*...)),
                                        30*
                                        Extract(31, 0, rdi)))),
                                        Extract(63,
                                        63,
                                        1717986919*
                                        Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ...*...)),
                                        Extract(31,
                                        31,
                                        30*
                                        Extract(31, 0, ...))),
                                        30*
                                        Extract(31, 0, rdi)))),
                                        Extract(63,
                                        63,
                                        1717986919*
                                        Concat(Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ...*...)),
                                        Extract(31,
                                        31,
                                        30*
                                        Extract(31, 0, ...))),
                                        Extract(31,
                                        31,
                                        30*
                                        Extract(31, 0, rdi))),
                                        30*
                                        Extract(31, 0, rdi)))),
                                      Extract(63,
                                        63,
                                        1717986919*
                                        Concat(Concat(Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ...*...)),
                                        Extract(31,
                                        31,
                                        30*
                                        Extract(31, 0, ...))),
                                        Extract(31,
                                        31,
                                        30*
                                        Extract(31, 0, rdi))),
                                        Extract(31,
                                        31,
                                        30*
                                        Extract(31, 0, rdi))),
                                        30*
                                        Extract(31, 0, rdi)))),
                               Extract(63,
                                       32,
...
))
    
        
t = Tactic('qe')
print(t(g))
print(type(t(g)[0][0]))