alphabet: {0, 1}
start: q1
q1 (x -> x, R q1) (0 -> x, R q2) (y -> y, R q4)
q2 (0 -> 0, R q2) (1 -> y, L q3)
q3 (0 -> 0, L q3) (y -> y, L q3) (_ -> _, R q1)
q4 (0 -> 0, R q4) (y -> y, R q4) (1 -> 1, L q3) (1 -> 1, L q5) (_ -> _, R accept)
q5 (0 -> 0, L q5) (y -> y, L q5) (_ -> _, R q4) (x -> 0, R q6)
q6 (0 -> 0, R q6) (y -> y, R q6) (1 -> y, L q5)