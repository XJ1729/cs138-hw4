alphabet: {0, 1, x, y}
start: q0
q0 (_ -> _, R accept) (0 -> x, R q1) (1 -> _, R q5) (x -> x, R q0) (y -> y, R q0)
q1 (0 -> x, R q2) (x -> x, R q1) (y -> y, R q1) (_ -> _, R q4) (1 -> _, R q5)
q2 (1 -> y, R q3) (0 -> 0, R q2) (x -> x, R q2) (y -> y, R q2) (_ -> _, R q5)
q3 (0 -> 0, L q3) (1 -> 1, L q3) (x -> x, L q3) (y -> y, L q3) (_ -> _, R q1) 
q4 (0 -> 0, R q4) (x -> x, R q4) (y -> y, R q4) (1 -> _, R q5) (_ -> _, R accept)