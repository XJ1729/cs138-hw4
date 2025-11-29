alphabet: {0, 1, x, y}
start: q0
q0 (_ -> _, R accept) (x -> x, R q0) (y -> y, R q0) (0 -> x, R q1) (1 -> _, R q4)
q1 (1 -> y, R q2) (0 -> 0, R q1) (x -> x, R q1) (y -> y, R q1) (_ -> _, L q3)
q2 (0 -> 0, L q2) (1 -> 1, L q2) (x -> x, L q2) (y -> y, L q2) (_ -> _, L q0)
q3 (_ -> _, R q4) (_ -> _, R accept)