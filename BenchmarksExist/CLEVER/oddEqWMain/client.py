from z3 import *
g=Goal()
R = BitVec('R', 32)
# rdi = BitVec('rdi', 32)
# rsi = BitVec('rsi', 32)
rdi = BitVec('rdi', 32)
rsi = BitVec('rsi', 32)
g.add(Exists(R,And(Or(And(And(0 !=
                Extract(7,
                        0,
                        Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ... + ...)),
                                        Extract(31,
                                        31,
                                        Extract(31, 0, ...) +
                                        Concat(..., ...))),
                                        Extract(31,
                                        31,
                                        Extract(31,
                                        0,
                                        ... >> ...) +
                                        Concat(0,
                                        Extract(31, 31, ...)))),
                                        Extract(31,
                                        31,
                                        Extract(31,
                                        0,
                                        Concat(..., ...) >>
                                        1) +
                                        Concat(0,
                                        Extract(31,
                                        31,
                                        ... >> ...)))),
                                        Extract(31,
                                        31,
                                        Extract(31,
                                        0,
                                        Concat(Concat(...,
                                        ...),
                                        ... + ...) >>
                                        1) +
                                        Concat(0,
                                        Extract(31,
                                        31,
                                        Concat(..., ...) >>
                                        1)))),
                                        Extract(31,
                                        31,
                                        Extract(31,
                                        0,
                                        Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31, 0, ...) +
                                        Concat(..., ...)) >>
                                        1) +
                                        Concat(0,
                                        Extract(31,
                                        31,
                                        Concat(Concat(...,
                                        ...),
                                        ... + ...) >>
                                        1)))),
                                        Extract(31,
                                        31,
                                        Extract(31,
                                        0,
                                        Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ... + ...)),
                                        Extract(31,
                                        0,
                                        ... >> ...) +
                                        Concat(0,
                                        Extract(31, 31, ...))) >>
                                        1) +
                                        Concat(0,
                                        Extract(31,
                                        31,
                                        Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31, 0, ...) +
                                        Concat(..., ...)) >>
                                        1)))),
                                        Extract(31,
                                        31,
                                        Extract(31,
                                        0,
                                        Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ... + ...)),
                                        Extract(31,
                                        31,
                                        Extract(31, 0, ...) +
                                        Concat(..., ...))),
                                        Extract(31,
                                        0,
                                        Concat(..., ...) >>
                                        1) +
                                        Concat(0,
                                        Extract(31,
                                        31,
                                        ... >> ...))) >>
                                        1) +
                                        Concat(0,
                                        Extract(31,
                                        31,
                                        Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ... + ...)),
                                        Extract(31,
                                        0,
                                        ... >> ...) +
                                        Concat(0,
                                        Extract(31, 31, ...))) >>
                                        1)))),
                                      Extract(31,
                                        31,
                                        Extract(31,
                                        0,
                                        Concat(Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ... + ...)),
                                        Extract(31,
                                        31,
                                        Extract(31, 0, ...) +
                                        Concat(..., ...))),
                                        Extract(31,
                                        31,
                                        Extract(31,
                                        0,
                                        ... >> ...) +
                                        Concat(0,
                                        Extract(31, 31, ...)))),
                                        Extract(31,
                                        0,
                                        Concat(Concat(...,
                                        ...),
                                        ... + ...) >>
                                        1) +
                                        Concat(0,
                                        Extract(31,
                                        31,
                                        Concat(..., ...) >>
                                        1))) >>
                                        1) +
                                        Concat(0,
                                        Extract(31,
                                        31,
                                        Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ... + ...)),
                                        Extract(31,
                                        31,
                                        Extract(31, 0, ...) +
                                        Concat(..., ...))),
                                        Extract(31,
                                        0,
                                        Concat(..., ...) >>
                                        1) +
                                        Concat(0,
                                        Extract(31,
                                        31,
                                        ... >> ...))) >>
                                        1)))),
                               Extract(31,
                                       0,
                                       Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ... + ...)),
                                        Extract(31,
                                        31,
                                        Extract(31, 0, ...) +
                                        Concat(..., ...))),
                                        Extract(31,
                                        31,
                                        Extract(31,
                                        0,
                                        ... >> ...) +
                                        Concat(0,
                                        Extract(31, 31, ...)))),
                                        Extract(31,
                                        31,
                                        Extract(31,
...
))
    
        
t = Tactic('qe')
print(t(g))
print(type(t(g)[0][0]))