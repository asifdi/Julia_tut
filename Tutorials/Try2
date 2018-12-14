using Plots
using Astro
using Dates
days = Dates.datetime2julian.(Dates.DateTime(2018,1,1,0,0,0):Dates.Day(1):Dates.DateTime(2018,12,31,0,0,0));
eq_value = map(equation_time, days);
using Plots
plot(eq_value)
plot!
using GR
plot(eq_value)
unicodeplots()
plot(eq_value)
