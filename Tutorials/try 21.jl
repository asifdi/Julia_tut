using Plots
x = range(0,stop=2*pi,length=1000);
y = sin.(3*x + 4*cos.(2*x));
plot(x, y, color=:red, linewidth=:2, linestyle=:dash, xlabel="radians", ylabel="sine", title="sine over 2pi")
         