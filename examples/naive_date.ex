# adds seconds by default

NaiveDateTime.add(~N[2014-10-02 00:29:10], 2)
NaiveDateTime.add(~N[2014-10-02 00:29:10], -2)
NaiveDateTime.add(~N[2014-10-02 00:29:10], 2_000, :millisecond)

# Compares two NaiveDateTime structs.

NaiveDateTime.compare(~N[2016-04-16 13:30:15], ~N[2016-04-28 16:19:25])
NaiveDateTime.compare(~N[2016-04-16 13:30:15.1], ~N[2016-04-16 13:30:15.01])