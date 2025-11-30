alphabet: {0, 1, 2, x, y, z}
start: q0
q0 (x -> x, R q0) (y -> y, R q0) (z -> z, R q0) (0 -> x, R q1) (1 -> 1, R q4) (2 -> 2, R q4) (_ -> _, R q_check_end)
q1 (x -> x, R q1) (y -> y, R q1) (z -> z, R q1) (0 -> 0, R q1) (1 -> y, R q2) (2 -> 2, R q8) (_ -> _, R q8)
q2 (x -> x, R q2) (y -> y, R q2) (z -> z, R q2) (0 -> 0, R q2) (1 -> 1, R q2) (2 -> z, L q3) (_ -> _, R q8)
q3 (x -> x, L q3) (y -> y, L q3) (z -> z, L q3) (0 -> 0, L q3) (1 -> 1, L q3) (2 -> 2, L q3) (_ -> _, R q0)
q4 (1 -> y, R q5) (2 -> 2, R q4) (x -> x, R q4) (0 -> x, R q1) (z -> z, R q4) (_ -> _, R q5)
q5 (y -> y, R q5) (z -> z, R q5) (x -> x, R q5) (1 -> y, R q6) (0 -> x, R q1) (2 -> 2, R q5) (_ -> _, R q8)
q6 (y -> y, R q6) (z -> z, R q6) (x -> x, R q6) (2 -> z, R q7) (0 -> x, R q1) (1 -> y, R q6) (_ -> _, R q8)
q7 (_ -> _, R accept)
q9 (_ -> _, R q4)