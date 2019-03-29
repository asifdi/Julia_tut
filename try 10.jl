r = 2.9:0.001:4; numAttract = 100
steady = ones(length(r),1)*.25
for i=1:400
    @. steady = r*steady*(1-steady)
end
x = zeros(length(steady),numAttract)
x[:,1] = steady
@inbounds for i=2:numAttract
    @. x[:,i] = r*x[:,i-1]*(1-x[:,i-1])
end
using Plots; gr(fmt=:png)
plot(collect(r),x,seriestype=:scatter,markersize=.002,legend=false,color=:black)