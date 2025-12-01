alphabet: {0, 1, 2, a, b, c, *, #}
start: qS
// mark start
qS (0 -> a, L q0) (1 -> b, L q0) (2 -> c, L q0) 

// iterate from start of string to mark zero
q0 (a -> #, R q0D) (0 -> *, R q0D) (# -> #, R q0D) (b -> b, R q0) (c -> c, R q0) (1 -> 1, R q0) (2 -> 2, R q0) (_ -> _, L qN0)

// marked a zero, move to end of string; if no zeroes left, check for ones
q0D (# -> #, R q0D) (* -> *, R q0D) (b -> b, R q0D) (c -> c, R q0D) (0 -> 0, R q0D) (1 -> 1, R q0D) (2 -> 2, R q0D) (_ -> _, L q1)

// gone all the way to end of string, iterate left to start marking ones; if 0s marked but no 1s to mark = reject
q1 (b -> #, L q1D) (1 -> *, L q1D) (* -> *, L q2) (c -> c, L q1) (0 -> 0, L q1) (2 -> 2, L q1) 

// done marking ones, go all the way to the start
q1D (# -> #, R q2) (b -> b, L q2) (c -> c, L q2) (* -> *, L q1D) (0 -> 0, L q1D) (1 -> 1, L q1D) (2 -> 2, L q1D)

// start marking twos; if 0s and 1s marked but no two = reject
q2 (c -> #, R q2D) (2 -> *, R q2D) (b -> b, R q2) (* -> *, R q2) (0 -> 0, R q2) (1 -> 1, R q2)

// done marking twos, move back to the start (marking zeroes again)
q2D (* -> *, L q2D) (0 -> 0, L q2D) (1 -> 1, L q2D) (b -> b, L q0) (c -> c, L q0) (# -> #, R q0)

// check for ones (if no zeroes, check for ones and make sure there is at least a one left)
// if a one is present (iterate all the way to #), move to q1N0
qN0 (1 -> *, L qH1) (b -> #, L qH1) (c -> c, L qN0) (2 -> 2, L qN0) (* -> *, L qN0) (# -> #, R qC2)

// found a 1, check for matching twos
qH1 (1 -> 1, L qH1) (2 -> 2, L qH1) (* -> *, L qH1) (# -> #, R qH2) (b -> b, L qH2) (c -> c, L qH2) 

// matching the twos
qH2 (2 -> *, L qH1D) (c -> #, R qH1D) (1 -> 1, R qH2) (b -> b, R qH2) (* -> *, R qH2) 

// make sure there is a two in the string after finishing all ones
qC2 (2 -> 2, R accept) (c -> c, R accept) (1 -> 1, R qC2) (b -> b, R qC2) (* -> *, R qC2)