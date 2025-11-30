alphabet: {0, 1, x, X, y}
start: q0
q0 (0 -> 0, R q01) (1 -> 1, R qF) (_ -> _, R accept) 
q01 (0 -> 0, R q01) (1 -> 1, L q0B) (_ -> _, R qF) 
q0B (0 -> 0, L q0B) (_ -> _, R qRS) 
qRS (0 -> 0, R qFZ) (x -> x, R qFZ) (1 -> 1, R qZD) (_ -> _, R qFZ)
qFZ (x -> x, R qFZ) (0 -> x, R qMZ) (1 -> 1, R qZD) (_ -> _, R qFZ)
qMZ (x -> x, R qMZ) (0 -> 0, R qMZ) (y -> y, R qMZ) (1 -> y, L qBL) (_ -> _, R qF) 
qBL (y -> y, L qBL) (1 -> 1, L qBL) (x -> x, L qBL) (0 -> 0, L qBL) (_ -> _, R qRS)
qZD (1 -> 1, R qCR) (y -> y, R qCR) (_ -> _, R qCR)
qCR (y -> y, R qCR) (1 -> 1, L qCL) (_ -> _, L accept)
qCL (y -> y, L qCL) (1 -> 1, L qCL) (x -> 0, L qCL) (0 -> 0, L qCL) (_ -> _, R qRS)
qF
