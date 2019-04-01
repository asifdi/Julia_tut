# Forward kinematics for 2 DOF
global l1, l2
print("Enter first link length in mm = "); l1 = parse(Float64,readline())
while l1 <= 0
    global l1
    if l1 < 0
        println("Length cannot be negative")
        print("Enter first link length in mm = "); l1 = parse(Float64,readline())
    else l1 == 0
        println("Length cannot be zero")
        print("Enter first link length in mm = "); l1 = parse(Float64,readline())
    end
end

print("Enter second link length in mm = "); l2 = parse(Float64, readline())
while l2 <= 0
global l2
    if l2 < 0
        println("Length cannot be negative")
        print("Enter second link length in mm = "); l2 = parse(Float64,readline())
    else l2 == 0
        println("Length cannot be zero")
        print("Enter second link length in mm = "); l2 = parse(Float64,readline())
    end
end

global t1, t2
print("Enter Joint 1 angle in degrees = "); t1 = parse(Float64, readline())
while !(-90.00 < t1 < 90.00)
    global t1
    println("first angle out of range [-90 , 90]")
    print("Enter Joint 1 angle in degrees = "); t1 = parse(Float64, readline())
end

print("Enter Joint 2 angle in degrees = "); t2 = parse(Float64, readline())
while !(-90.00 < t2 < 90.00)
    global t2
    println("second angle out of range [-90 , 90]")
    print("Enter Joint 2 angle in degrees = "); t1 = parse(Float64, readline())
end

# Forward kinematic calculations
x = ((l1 * sind(t1)) + (l2 * sind(t1 + t2)));
y = ((l1 * cosd(t1)) + (l2 * cosd(t1 + t2)));
println("Goal position =  $x, $y")

