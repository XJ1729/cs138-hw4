alphabet: {0, 1, x, X, y}
start: q0
q0 (_ -> _, R accept) (0 -> 0, R q01) (1 -> 1, R qF)
q01 (0 -> 0, R q01) (1 -> X, R qRS) (_ -> _, R qF)
qRS (x -> x, R qRS) (0 -> x, R qP) (1 -> 1, R qZD) (_ -> _, R qRS)
qP (x -> x, R qPair) (0 -> 0, R qP) (y -> y, R qP) (X -> X, R qC) (1 -> 1, R qC) (_ -> _, R qF)
qC (y -> y, R qC) (1 -> X, L qB) (_ -> _, R qF)
qB (X -> y, L qn) (y -> y, L qB) (1 -> 1, L qB) (x -> x, L qB) (0 -> 0, L qB) (_ -> _, R qRS)
qn (x -> x, R qRS) (0 -> 0, R qRS) (1 -> 1, R qZD) (_ -> _, R qRS)
qZD (y -> y, R qCR) (X -> X, R qCR) (1 -> 1, R qCR) (_ -> _, R qCR)
qCR (y -> y, R qCR) (X -> X, R qCR) (1 -> 1, L qCL) (_ -> _, L accept)
qCL (y -> y, L qCL) (X -> X, L qCL) (1 -> 1, L qCL) (x -> 0, L qCL) (0 -> 0, L qCL) (_ -> _, R qRS)
qF