function input(prompt::Float64="")
    print(prompt)
    return chomp(readline())
end

Px= input("Enter x-coordinate of target: ")::Int64;
Py= input("Enter y-coordinate of target: ")::Int64;
println("$Px + $Py = $(Px+Py)")
