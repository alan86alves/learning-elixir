# new

Date.new(2000, 1, 1)

# add

Date.add(~D[2000-01-03], -2)
Date.add(~D[2000-01-01], 2)

# compare

Date.compare(~D[2016-04-16], ~D[2016-04-16])
Date.compare(~D[2016-04-16], ~D[2016-04-17])
Date.compare(~D[2016-04-16], ~D[2016-04-15])

# diff

Date.diff(~D[2000-01-03], ~D[2000-01-01])
Date.diff(~D[2000-01-01], ~D[2000-01-03])

# days_of_week

Date.day_of_week(~D[2016-10-31])
Date.days_in_month(~D[1900-01-13])

# leap_year?

Date.leap_year?(~D[2000-01-01])

# from_erl/to_erl

Date.from_erl({2000, 1, 1})
Date.from_erl!({2000, 1, 1})
Date.to_erl(~D[2000-01-01])
Date.to_string(~D[2000-02-28])

range = Date.range(~D[2001-01-01], ~D[2002-01-01])
Enum.count(range)

date = Date.utc_today()
date.day
date.month
date.year

naive = ~N[2000-01-01 23:00:07]