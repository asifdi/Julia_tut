s1 = collect(1:20)
for i in s1
    if i % 3 != 0
        continue
    end
    print(i, ",")
    if i>= 8
        break
    end
end 
