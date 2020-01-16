using Images, TestImages, Colors, FileIO
methods(testimage)
img = testimage("lighthouse")
summary(img)
img[1]
img[0, 0]
@which []
c = img[10];
println(summary(img));
println(c.r, " ", c.g, " ", c.b);
println(red(c), " ", green(c), " ", blue(c));

img_bgr = BGR.(img);
println(summary(img_bgr));
c = img_bgr[10];
println(c.r, " ", c.g, " ", c.b);
println(red(c), " ", green(c), " ", blue(c));

img = testimage("mandrill")

img = testimage("lighthouse")
println(size(img))
summary(img)

#tiled_img = Array{RGB{N0f8},2}(size(img))

tiled_img = similar(img)
?linspace
