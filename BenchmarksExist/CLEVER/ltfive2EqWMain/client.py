from z3 import *
g=Goal()
R = BitVec('R', 32)
# rdi = BitVec('rdi', 32)
# rsi = BitVec('rsi', 32)
rdi = BitVec('rdi', 32)
rsi = BitVec('rsi', 32)
g.add(Exists(R,And(Or(And(4 <
            1 +
            Concat(1 + Extract(29, 0, rdi), 0) +
            Extract(31, 0, rdi),
            0 ==
            Extract(0,
                    0,
                    LShR(ZeroExt(32, Extract(31, 0, rdi)),
                         31)) &
            1,
            R ==
            4294967295 +
            Extract(31,
                    0,
                    Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(...,
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
                                        ... + ... + ...))),
                                        Extract(63,
                                        63,
                                        1717986919*
                                        Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        1 +
                                        Concat(..., ...) +
                                        Extract(31, 0, ...)))),
                                        Extract(63,
                                        63,
                                        1717986919*
                                        Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ... + ... + ...)),
                                        1 +
                                        Concat(... + ..., 0) +
                                        Extract(31, 0, rdi)))),
                                        Extract(63,
                                        63,
                                        1717986919*
                                        Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ... + ... + ...)),
                                        Extract(31,
                                        31,
                                        1 +
                                        Concat(..., ...) +
                                        Extract(31, 0, ...))),
                                        1 +
                                        Concat(1 +
                                        Extract(29, 0, ...),
                                        0) +
                                        Extract(31, 0, rdi)))),
                                        Extract(63,
                                        63,
                                        1717986919*
                                        Concat(Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ... + ... + ...)),
                                        Extract(31,
                                        31,
                                        1 +
                                        Concat(..., ...) +
                                        Extract(31, 0, ...))),
                                        Extract(31,
                                        31,
                                        1 +
                                        Concat(... + ..., 0) +
                                        Extract(31, 0, rdi))),
                                        1 +
                                        Concat(1 +
                                        Extract(29, 0, rdi),
                                        0) +
                                        Extract(31, 0, rdi)))),
                                        Extract(63,
                                        63,
                                        1717986919*
                                        Concat(Concat(Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ... + ... + ...)),
                                        Extract(31,
                                        31,
                                        1 +
                                        Concat(..., ...) +
                                        Extract(31, 0, ...))),
                                        Extract(31,
                                        31,
                                        1 +
                                        Concat(... + ..., 0) +
                                        Extract(31, 0, rdi))),
                                        Extract(31,
                                        31,
                                        1 +
                                        Concat(1 +
                                        Extract(29, 0, ...),
                                        0) +
                                        Extract(31, 0, rdi))),
                                        1 +
                                        Concat(1 +
                                        Extract(29, 0, rdi),
                                        0) +
                                        Extract(31, 0, rdi)))),
                                        Extract(63,
                                        63,
                                        1717986919*
                                        Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ... + ... + ...)),
                                        Extract(31,
                                        31,
                                        1 +
                                        Concat(..., ...) +
                                        Extract(31, 0, ...))),
                                        Extract(31,
                                        31,
                                        1 +
                                        Concat(... + ..., 0) +
                                        Extract(31, 0, rdi))),
                                        Extract(31,
                                        31,
                                        1 +
                                        Concat(1 +
                                        Extract(29, 0, ...),
                                        0) +
                                        Extract(31, 0, rdi))),
                                        Extract(31,
                                        31,
                                        1 +
                                        Concat(1 +
                                        Extract(29, 0, rdi),
                                        0) +
                                        Extract(31, 0, rdi))),
                                        1 +
                                        Concat(1 +
                                        Extract(29, 0, rdi),
                                        0) +
                                        Extract(31, 0, rdi)))),
                                  Extract(63,
                                        63,
                                        1717986919*
                                        Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(Concat(...,
                                        ...),
                                        Extract(31, 31, ...)),
                                        Extract(31,
                                        31,
                                        ... + ... + ...)),
                                        Extract(31,
                                        31,
                                        1 +
                                        Concat(..., ...) +
                                        Extract(31, 0, ...))),
                                        Extract(31,
                                        31,
                                        1 +
                                        Concat(... + ..., 0) +
                                        Extract(31, 0, rdi))),
                                        Extract(31,
                                        31,
                                        1 +
                                        Concat(1 +
                                        Extract(29, 0, ...),
                                        0) +
                                        Extract(31, 0, rdi))),
                                        Extract(31,
                                        31,
                                        1 +
                                        Concat(1 +
                                        Extract(29, 0, rdi),
                                        0) +
                                        Extract(31, 0, rdi))),
                                        Extract(31,
                                        31,
                                        1 +
                                        Concat(1 +
...
))
    
        
t = Tactic('qe')
print(t(g))
print(type(t(g)[0][0]))