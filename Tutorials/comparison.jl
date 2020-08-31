using Plots

for i =1:100
    @time display(Plots.scatter(rand(100),rand(100)))
    sleep(0.1)
 end

#= 
using TestImages
img = testimage("c") =#