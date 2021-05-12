#julia program to print fibinocci terms upto number of terms as decided by the user.

#prompting user to input number of terms
print("How many fibinocci terms have to be printed? \n")
nterms = parse(Int64, readline());

#first two terms
n1= 0
n2 = 1
count = 0

#check if the number of terms is valid

while nterms <= 0
    global nterms, n1, n2, count
    print("please enter a positive integer\n")
    print("How many fibinocci terms have to be printed? \n")
    nterms = parse(Int64,readline());
end
print("Fibonacci sequence upto $nterms terms:\n")
while count < nterms
    global n1, n2, count
    print("$n1 \n")
    nth = n1 + n2
    #update values
    n1 = n2
    n2 = nth
    count += 1
end