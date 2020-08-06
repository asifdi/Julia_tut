using Random
n = 100
f(x) = x^2
x = rand(n)
using Plots
plot(f.(x), label = "x^2")
plot!(x, label="x")

y = 0
for i = 1:10
    global y
    y += i
end
