img = rand(2,2)

a = [1,2,3,4]

convert(Array{Float64}, a)

map(Float64, a)

Float64.(a)

#using FileIO

#img = load("C:/Users/asifd/Pictures/screenshot.png")
using Colors

imgg = Gray.(img)

display(MIME("text/plain"), imgg)

dump(imgg[1, 1])

sizeof(img)

sizeof(imgg)

imgc = rand(RGB{Float32}, 2, 2)

imgc
sizeof(imgc)

size(imgc)

dump(imgc[1, 1])

c = imgc[1, 1]; (red(c), green(c), blue(c))

dump(convert(BGR, c))

c24 = convert(RGB24, c); dump(c24)

ColorTypes.BGR{Float32}

c24.color

0xc5/0xff

0x26/0xff

0x7b/0xff

r = red(c24)

dump(r)

csat = RGB{Float32}(8, 2, 0)

[csat csat/2 csat/4 csat/8 csat/16 csat/32 csat/64 csat/128 csat/256]

using Colors, Images

r = range(0, stop=1, length=21)

b = range(1, stop=0, length=21)

img1d = colorview(RGB, r, zeroarray, b)
