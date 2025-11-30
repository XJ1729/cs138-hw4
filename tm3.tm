alphabet: {0, 1, 2, x, y, Y, z}
start: q0
q0 (0 -> 0, R q0a) (1 -> 1, R q0b) (2 -> 2, R q0c) (_ -> _, R qC01)
q0a (0 -> 0, R q0a) (1 -> 1, R q0a) (2 -> 2, R q0a) (_ -> x, L q0) (x -> x, R q0a) (y -> y, R q0a) (Y -> Y, R q0a) (z -> z, R q0a)
q0b (0 -> 0, R q0b) (1 -> 1, R q0b) (2 -> 2, R q0b) (_ -> y, R q0b2)
q0b2 (_ -> Y, L q0) (0 -> 0, R q0b2) (1 -> 1, R q0b2) (2 -> 2, R q0b2) (x -> x, R q0b2) (y -> y, R q0b2) (Y -> Y, R q0b2) (z -> z, R q0b2)
q0c (0 -> 0, R q0c) (1 -> 1, R q0c) (2 -> 2, R q0c) (_ -> z, L q0) (x -> x, R q0c) (y -> y, R q0c) (Y -> Y, R q0c) (z -> z, R q0c)
qC01 (x -> _, R qC01y) (y -> _, R qC01x) (_ -> _, R qF) (Y -> Y, R qC01) (z -> z, R qC01)
qC01y (y -> _, L qC01) (0 -> 0, R qC01y) (1 -> 1, R qC01y) (2 -> 2, R qC01y) (x -> x, R qC01y) (Y -> Y, R qC01y) (z -> z, R qC01y) (_ -> _, R qF)
qC01x (x -> _, L qC01) (0 -> 0, R qC01x) (1 -> 1, R qC01x) (2 -> 2, R qC01x) (y -> y, R qC01x) (Y -> Y, R qC01x) (z -> z, R qC01x) (_ -> _, R qC12)  
qC12 (Y -> _, R qC12z) (z -> _, R qC12y) (_ -> _, R qF) (x -> x, R qC12)
qC12z (z -> _, L qC12) (0 -> 0, R qC12z) (1 -> 1, R qC12z) (2 -> 2, R qC12z) (y -> y, R qC12z) (Y -> Y, R qC12z) (x -> x, R qC12z) (_ -> _, R qF) 
qC12y (Y -> _, L qC12) (0 -> 0, R qC12y) (1 -> 1, R qC12y) (2 -> 2, R qC12y) (y -> y, R qC12y) (z -> z, R qC12y) (x -> x, R qC12y) (_ -> _, R accept) 
qF