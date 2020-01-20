using TestImages

img = testimage("mandrill")

using FileIO

#img = load("mandrill.png")

using TestImages, ImageView, Images

img = testimage("mandrill")

using Colors

img = rand(color, 4, 4)

img = Array(reshape(range(0, stop=1, length=10^4), 100, 100))

img_c = img[51:70, 21:70] #red

img_v = @view img[16:35, 41:90] #blue

fill!(img_c, 1)

fill!(img_v, 0)

using Unitful, AxisArrays

using Unitful: mm, s

img = AxisArray(rand(256, 256, 6, 50), (:x, :y, :z, :time), (0.4mm, 0.4mm, 1mm, 2s) )
