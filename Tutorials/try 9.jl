using Plots; gr();
using Random
alphas = [0.0, 0.5, 0.98]
T = 200

series = []
labels = []

for alpha in alphas
    x = zeros(T+1)
    x[1] = 0.0
    for t in 1:T
        x[t+1] = alpha * x[t] + randn()
    end
    push!(series, x)
    push!(labels, "alpha = $alpha")
end

plot(series, labels=reshape(labels,1,length(labels)), w = 2)
