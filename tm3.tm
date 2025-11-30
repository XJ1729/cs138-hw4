alphabet: {0, 1, 2, x, y, z}
start: q0
q0 (0 -> 0, R q0a) (1 -> 1, R q0b) (2 -> 2, R q0c) (_ -> _, R q1ml)
q0a (0 -> 0, R q0a) (1 -> 1, R q0a) (2 -> 2, R q0a) (_ -> x, L q0)
q0b (0 -> 0, R q0b) (1 -> 1, R q0b) (2 -> 2, R q0b) (_ -> y, L q0)
q0c (0 -> 0, R q0c) (1 -> 1, R q0c) (2 -> 2, R q0c) (_ -> z, L q0)
q1ml (x -> x, L q1ml) (y -> y, L q1ml) (z -> z, L q1ml) (0 -> 0, L q1ml) (1 -> 1, L q1ml) (2 -> 2, L q1ml) (_ -> _, R q2)
q2 (x -> _, R q3) (_ -> _, R qF)
q3 (y -> _, R q2) (_ -> _, R qA)
q4 (y -> _, R q5) (_ -> _, R qF)
q5 (y -> _, R q6) (_ -> _, R qF)
q6 (z -> _, R q7) (_ -> _, R qF)
q7 (y -> _, R q6) (z -> z, R qA) (_ -> _, R qF)
qA (_ -> _, R accept)
qF