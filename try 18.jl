using Plots
l1 = 200;
l2 = 150;
θ1 = collect(-90:2:90);
θ2 = collect(-150:2:150);
Px = zeros(length(θ1), length(θ2));
Py = zeros(length(θ1), length(θ2));
for i in range(1,length=length(θ1))
    for j in range(1, length=length(θ2))
        Px[i, j] = l1*cosd(θ1[i]) + l2*cosd(θ1[i] + θ2[j])
        Py[i, j] = l1*sind(θ1[i]) + l2*sind(θ1[i] + θ2[j])
    end
end

plot(Px, Py, seriestype=:scatter, markersize=1, legendfont = 1)