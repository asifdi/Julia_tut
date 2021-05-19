#program for finding the nearest multiples on top and bottom of a given number.
#User needs to input number and the multiplier whose multiples will be returned as output.

#
function multiplier(a,n)
    b = a%n;
    c = a - b;
    d = c + n;
    e = c - n;
    return d, e
end


#Enter the
print("Enter a number = "); p = parse(Float64,readline());
print("Enter a multiple = "); q = parse(Float64,readline());

multiplier(p,q)
