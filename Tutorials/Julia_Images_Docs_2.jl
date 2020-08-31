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

using Images, TestImages
using LinearAlgebra

img = float.(testimage("mandrill"))
channels = channelview(img)

function rank_approx(F::SVD, k)
    U, S, V = F
    M = U[:, 1:k] * Diagonal(S[1:k]) * V[:, 1:k]'
    clamp01!(M)
end

rgb_img = testimage("lighthouse")
hsv_img = HSV.(rgb_img)
channels = channelview(float.(hsv_img))
hue_img = channels[1,:,:]
value_img = channels[3,:, :]
saturation_img = channels[2,:,:]

mask = zeros(size(hue_img))
h, s, v = 80, 150, 150
for ind in eachindex(hue_img)
    if hue_img[ind] <= h && saturation_img[ind] <= s/255 && value_img[ind] <= v/255
        mask[ind] = 1
    end
end
binary_img = colorview(Gray, mask)

segmented_img = mask .* rgb_img

hcat(rgb_img, binary_img, segmented_img)

using Images, TestImages
img = Gray.(testimage("house"))

corners = imcorner(img)
img_copy = RGB.(img)
img_copy[corners] .= RGB(1.0, 0.0, 0.0)
img_copy

corners = imcorner(img, Percentile(98.5))
img_copy2 = RGB.(img)
img_copy2[corners] .= RGB(1.0, 0.0, 0.0)
img_copy2

detection_methods = [harris, shi_tomasi, kitchen_rosenfeld]
img_copies = [RGB.(img) for i in 1:length(detection_methods)]
for i in 1:length(detection_methods)
    corners = imcorner(img, Percentile(98.5); method=detection_methods[i])
    img_copies[i] = RGB.(img)
    img_copies[i][corners] .= RGB(1.0, 0.0, 0.0)
end
mosaicview(img_copies; nrow=1)

corners = fastcorners(img, 11, 0.1) # fastcorners(img, n, t) where n and t are optional
img_copy3 = RGB.(img)
img_copy3[corners] .= RGB(1.0, 0.0, 0.0)
img_copy3
