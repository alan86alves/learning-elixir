# Printed process ids < A.B.C > are composed of 6:

# A, the node number (0 is the local node, an arbitrary number for a remote node)
# B, the first 15 bits of the process number (an index into the process table) 7
# C, bits 16-18 of the process number (the same process number as B) 7
# Internally, the process number is 28 bits wide on the 32 bit emulator. The odd definition of B and C comes from R9B and earlier versions of Erlang in which B was a 15bit process ID and C was a wrap counter incremented when the max process ID was reached and lower IDs were reused.

# In the erlang distribution PIDs are a little larger as they include the node atom as well as the other information. (Distributed PID format)

# When an internal PID is sent from one node to the other, it's automatically converted to the external/distributed PID form, so what might be <0.10.0> (inet_db) on one node might end up as  <2265.10.0> when sent to another node. You can just send to these PIDs as normal.

iex> self()
#PID<0.56.0>