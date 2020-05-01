from PIL import Image



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


for y in range (0, new_height):
    for x in range (0, new_width):        
        
        r,g,b,a = pix[x,y]
        output.write("(")
        output.write(str(r))
        output.write(", ")
        output.write(str(g))
        output.write(", ")
        output.write(str(b))
        output.write(")")
        if x != 30 and y != 30:
            output.write(", ")

    output.write("\n")
    

    
output.close ()
