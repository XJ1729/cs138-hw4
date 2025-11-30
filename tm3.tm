alphabet: {0, 1, 2, x, y, z}
start: q0
q0 (0 -> x, R q0) (1 -> 1, R q0) (2 -> 2, R q0) (x -> x, R q0) (y -> y, R q0) (z -> z, R q0) (_ -> _, L q1)
q1 (x -> x, L q1) (y -> y, L q1) (z -> z, L q1) (2 -> 2, L q1) (1 -> y, L q1) (0 -> 0, L q1) (_ -> _, R q2)
q2 (x -> x, R q2) (y -> y, R q2) (z -> z, R q2) (0 -> 0, R q2) (1 -> 1, R q2) (2 -> z, R q2) (_ -> _, L q3)
q3 (x -> x, L q3) (y -> y, L q3) (z -> z, L q3) (_ -> _, R q4)
q4 (x -> _, R q5) (y -> y, R q4) (z -> z, R q4) (_ -> _, R q7)
q5 (y -> _, R q6) (x -> x, R q5) (z -> z, R q5) (_ -> _, R q11)
q6 (z -> _, L q3) (x -> x, R q6) (y -> y, R q6) (_ -> _, R q11)
q7 (y -> _, R q7) (x -> x, R q7) (z -> z, R q7) (_ -> _, R q9)
q9 (z -> _, R q10) (_ -> _, R q11)
q10 (_ -> _, R accept)
q11 (_ -> _, R q12)