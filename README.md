# Nested-Parallel-Computing-and-Error-Handling
A Reusable Code for Nested Parallel Computing and Error Handling in R

# Important:
For Nested Parallel Computing: make sure load the "doParallel" package to each core.

# Warning:
* For parallel computing, these computations do not need to communicate with each other (i.e. they are ”embarrassingly parallel”, they are not recursive), they can be spread across multiple cores and executed in parallel way, which reduces the computation time.

* For parallel computing in R, the big problem is the memory management. Parallel computing with multiprocessing way would consume huge amount of memory, it could cause serious problem for running programs.
