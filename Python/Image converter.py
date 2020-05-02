from PIL import Image

def rgb2hex(r, g, b):
    return '#{:02x}{:02x}{:02x}'.format(r, g, b)

img = Image.open('Image.png')


width, height = img.size

print ("Width: "+ str(width))
print ("Height: "+ str(height))

if width > height :
    new_width = 30
    new_height = ((height*30)/width)
else:
    new_height = 30
    new_width = ((width*30)/height)


print ("NEW Width: "+ str(new_width))
print ("NEW Height: "+ str(new_height))

new_img = img.resize((int(new_width),int(new_height)))
new_img.save('new_image.png','png')

pix = new_img.load()

output = open ("Image_Colors.txt", "w")

new_width, new_height = new_img.size

output.write("{")

for y in range (0, new_height):
    output.write("{")
    for x in range (0, new_width):        
        
        r,g,b,a = pix[x,y]
        output.write(rgb2hex(r, g, b))
        if x != 29:
            output.write(", ")
    if y != 29:
        output.write("}, ")
    else:
        output.write("}") 
    

output.write("}")    
output.close ()
