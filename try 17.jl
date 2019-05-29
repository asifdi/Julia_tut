x = collect(0:3:200);
y = zeros(length(x))
using Plots
for i = 1:length(x)
    j = x[i]
    y[i] = j*cos(j^2)
end
plot(x,y)