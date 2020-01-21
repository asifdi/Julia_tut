'''Quick Start GUide'''

using TestImages

img = testimage("mandrill")

using FileIO

img = load("C:/Users/asifd/Pictures/Screenshot.png")

using TestImages, ImageView, Images

img = testimage("mandrill")

using Colors

img = rand(4, 4)

img = Array(reshape(range(0, stop=1, length=10^4), 100, 100))

img_c = img[51:70, 21:70] #red

img_v = @view img[16:35, 41:90] #blue

fill!(img_c, 1)

fill!(img_v, 0)

using Unitful, AxisArrays

using Unitful: mm, s

img = AxisArray(rand(256, 256, 6, 50), (:x, :y, :z, :time), (0.4mm, 0.4mm, 1mm, 2s) )

Gray(0.0) #black

Gray(1.0) #white

RGB(1.0, 0.0, 0.0) # Red

RGB(0.0, 1.0, 0.0) #green

RGB(0.0, 0.0, 1.0) #blue

img_gray = rand(Gray, 2, 2)

img_rgb = rand(RGB, 2, 2)

img_lab = rand(Lab, 2, 2)

RGB.(img_gray) #Gray => RGB

Gray.(img_rgb) #RGB => Gray

img_CHW = channelview(img_rgb) # 3 * 2 * 2

img_HWC = permutedims(img_CHW, (2, 3, 1)) # 2 * 2 * 3

img_CHW = permutedims(img_HWC, (3, 2, 1)) # 3 * 2 * 2

img_rgb = colorview(RGB, img_CHW) # 2 * 2

img_num = rand(4, 4)

img_gray_copy = Gray.(img_num) #construction

img_num_copy = Float64.(img_gray_copy) #construction

img_gray_view = colorview(Gray, img_num) # view

img_num_view = channelview(img_gray_view) # view

img_N0f8 = rand(N0f8, 2, 2) # 0 to 1 intensity setting through 8 bit integer

float.(img_N0f8)

img = rand(Gray{N0f8}, 2, 2)

img_float32 = float32.(img) #Gray{N0f8} => Gray{Float32}

img_n0f16 = n0f16.(img_float32) #Gray{Float32} => Gray{n0f16}

using MappedArrays

img_float_view = of_eltype(Gray{Float32}, img_N0f8)

eltype(img_float_view)
