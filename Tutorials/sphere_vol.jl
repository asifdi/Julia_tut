# function to calculate the volume of a sphere
function sphere_vol(r)
    return 4/3*pi*r^3
end
# functions can also be defined more succinctly
quadratic(a, sqr_term, b) = (-b + sqr_term)/ 2a
function qadratic2(a::Float64, b::Float64, c::Float64)
    sqr_term = sqrt(b^2-4a*c)
    r1 = quadratic(a, sqr_term, b)
    r2 = quadratic(a, -sqr_term, b)
    r1, r2
end

