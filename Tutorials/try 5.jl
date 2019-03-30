using Dates

print("enter year   "); year = parse(Int64, readline())
print("enter month  "); month = parse(Int64, readline())
print("enter day    "); day = parse(Int64, readline())
date = Date(year,month,day);

println(date)