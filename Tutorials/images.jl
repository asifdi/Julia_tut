using Images, TestImages, Colors
using ImageIO, ImageMagick
methods(testimage)
img = testimage("lighthouse")
summary(img)
img[1]
img[0,0]
@which []

c = img[10];
println(summary(img));
println(c.r, " ", c.g, " ", c.b);
println(red(c), " ", green(c), " ", blue(c))

img_bgr = BGR.(img);

println(summary(img_bgr));
c = img_bgr[10];
println(c.r, " ", c.g, " ", c.b)
println(red(c), " ", green(c), " ", blue(c))

img = load("C:\\users\\asifd\\Pictures\\lighthouse.jpg")

println(size(img))
summary(img)

#tiled_img = Array{RGB{N0f8}, 2}(size(512, 768))
#linspace(1, size(img, 1), 8)
#codes are obselte, exploring new codes
