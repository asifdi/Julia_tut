using Plots
x = collect(0:1:1000);
y = zeros(length(x));
for i in range(1,length=length(x))
    y[i] = ((-11*x[i]^3) + (1.2*x[i]^2) + (0.9*x[i]) + 0.3);
end 
plot(x,y)
