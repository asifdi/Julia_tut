println("Enter the coordinates for First and Last coordinates")

print("Enter x1 in mm = "); x1_mm = parse(Float64,readline())
print("Enter y1 in mm = "); y1_mm = parse(Float64,readline())
print("Enter x1 in pixel = "); x1_pix = parse(Float64,readline())
print("Enter y1 in pixel = "); y1_pix = parse(Float64,readline())

print("Enter x2 in mm = "); x2_mm = parse(Float64,readline())
print("Enter y2 in mm = "); y2_mm = parse(Float64,readline())
print("Enter x2 in pixel = "); x2_pix = parse(Float64,readline())
print("Enter y2 in pixel = "); y2_pix = parse(Float64,readline())

print("Enter Clear Point, x in mm = "); x3_mm = parse(Float64,readline())
print("Enter Clear Point, y in mm = "); y3_mm = parse(Float64,readline())

'''
x1_mm = 0
y1_mm = 0
x1_pix = 574
y1_pix = 238

x2_mm = 266
y2_mm = 180

x2_pix = 1306
y2_pix = 731

Clear_point_x_mm = 307.8
Clear_point_y_mm = 118
'''

Δx_pix = ((x2_pix - x1_pix)/x2_mm)
Δy_pix  = ((y2_pix - y1_pix)/y2_mm)


Clear_point_x_pix = x3_mm * Δx_pix
Clear_point_y_pix = y3_mm * Δy_pix

println("Clear Point pixel values = $Clear_point_x_pix, $Clear_point_y_pix")
