using Plots
using LaTeXStrings

function compute_bernstein(i,n; steps=100)
    return [binomial(n,i)*t^i*(1-t)^(n-i) for t in range(0,1,steps)]
end
