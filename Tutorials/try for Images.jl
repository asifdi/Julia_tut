#This file contains the tutorails given in https://juliaimages.org/latest/quickstart/ 

using TestImages, Images
img = testimage("lighthouse")
img = rand(4, 4)
img = Array(reshape(range(0, stop=1, length=10^4), 100, 100))
img_c = img[51:70, 21:70]
img_v = @view img[16:35, 41:90]
fill!(img_c, 1)
fill!(img_v, 0)
using Unitful, AxisArrays

using Unitful: mm, s

img = AxisArray(rand(256, 256, 6, 50), (:x, :y, :z, :time), (0.4mm, 0.4mm, 1mm, 2s))

Gray(0.0)

Gray(1.0)

RGB(1.0, 0.0, 0.0)

RGB(0.0, 1.0, 0.0)

RGB(0.0, 0.0, 1.0)

img_grey = rand(Gray, 2, 2)

img_rgb = rand(RGB, 2, 2)

img_lab = rand(Lab, 2, 2)

img_CHW = channelview(img_rgb)
