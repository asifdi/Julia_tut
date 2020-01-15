#generic inverse kinematic soltion for 2 dof

#global l1, l2, Px, Py
print("Enter first link length in mm = "); l1 = parse(Float64, readline())
while l1 <= 0
    global l1
    if l1 < 0
        println("Length cannot be negative")
        print("Enter first link length in mm = "); l1 = parse(Float64, readline())
    else l1 == 0
        println("Length cannot be zero")
        print("Enter first link length in mm = "); l1 = parse(Float64, readline())
    end
end

print("Enter second link length in mm = "); l2 = parse(Float64, readline())
while l2 <= 0
    global l2
    if l2 < 0
        println("Length cannot be negative")
        print("Enter second link length in mm = "); l2 = parse(Float64, readline())
    else l2 == 0
        println("Length cannot be zero")
        print("Enter second link length in mm = "); l2 = parse(Float64, readline())
    end
end

print("Enter goal position x-coordinate in mm = "); Px = parse(Float64, readline())
while !(-(l1 + l2) <= Px <= (l1 + l2))
    global Px
    println("point outside work envelope, please enter value between [-$(l1 + l2), $(l1 +  l2)]")
    print("Enter goal position x-coordinate in mm = "); Px = parse(Float64, readline())
end

print("Enter goal position y-coordinate in mm = "); Py = parse(Float64, readline())
while !(0 <= Py <= (l1 + l2))
    global Py
    println("point outside work envelope, please enter value between [0,$(l1 + l2)]")
    print("Enter goal position y-coordinate in mm = "); Py = parse(Float64, readline())
end
# inverse kinematic sine and cosine calculations
C2 = (Px^2 + Py^2 - l1^2 - l2^2) / (2 * l1 * l2);
S2 = sqrt(1 - C2^2);
S1 = ((Px * (l1 + (l2 * C2))) - (Py * l2 * S2)) / (Px^2 + Py^2);
C1 = sqrt(1 - S1^2);
#first solution joint angle calculations
t11 = atand(S1, C1)
t21 = atand(S2, C2)
#second solution joint angle calculations
t12 = atand(S1, -C1)
t22 = atand(-S2, C2)

println("solution 1 angles: $t11, $t21")
println("solution 2 angles: $t12, $t22")