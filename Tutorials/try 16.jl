l1 = 300;
l2 = 150;
#global θ4,θ;
θ4=string();
θ1 = collect(-120:1:120);
θ2 = collect(-120:1:120);
θ=string();
θ3 = string();

for θ in range(-120, step=1, stop=120)
    global θ4;
    #print("theta",θ)
    for θ3 in range(-10, step=1, stop=10)
        #print("theat1",θ3)
        θ4=string((θ),(θ3));
        print(θ4)        
    end
end
#print(θ)
print(θ4)

