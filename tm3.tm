alphabet: {0, 1, 2, x, y, z, #}
start: q0
q0 (0 -> x, R q1)  (1 -> 1, R qc1) (2 -> 2, R qc2) (x -> x, R q0) (y -> y, R q0) (z -> z, R q0) (_ -> _, R qF)
q1 (1 -> y, L q0)  (0 -> 0, R q1) (2 -> 2, R q1) (x -> x, R q1) (y -> y, R q1) (z -> z, R q1) (_ -> _, R qF)
qc1 (1 -> y, R q2) (x -> x, R qc1) (y -> y, R qc1) (z -> z, R qc1) (_ -> _, R qF)
q2 (2 -> z, L qc1) (0 -> 0, R q2) (1 -> 1, R q2) (x -> x, R q2) (y -> y, R q2) (z -> z, R q2) (_ -> _, R qF)
qc2 (2 -> z, R q_accept) (0 -> 0, R qc2) (1 -> 1, R qc2) (x -> x, R qc2) (y -> y, R qc2) (z -> z, R qc2) (_ -> _, R qF)
qA (_ -> _, R accept)
qF