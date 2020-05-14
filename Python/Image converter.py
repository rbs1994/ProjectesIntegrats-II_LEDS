from PIL import Image


#Funcio per transformar el color de RGB a Hexadecimal
def rgb2hex(r, g, b):
    return '#{:02x}{:02x}{:02x}'.format(r, g, b)

#Obrim la Imatge Original
img = Image.open('Image.png')

#Guardem les mides de la imatge
width, height = img.size


# Comprovem si es mes quin valor dels dos es mes gran
# i en el mes gran li posem 30 per la nova imatge i per el valor
# petit fem una regla de 3 per obtenirlo
if width > height :
    new_width = 100
    new_height = int(((height*100)/width))
else:
    new_height = 100
    new_width = int(((width*100)/height))


# Creem la nova imatge amb les noves mides
#new_img = img.resize((int(new_width),int(new_height)))
new_img = img.resize((int(new_width),int(new_height)))
new_img.save('new_image.png','png')

# Posem el mode de color a RGB, per no tenir problemas amb imatges
# que treballen amb altres modes de colors.
new_img = new_img.convert('RGBA')

# Carraguem la nova imatge.
pix = new_img.load()

# Obrim un arxiu TXT per guardar els colors en un array 2D.
output = open ("Image_Colors.txt", "w")

new_width, new_height = new_img.size

output.write("{")

# Per cada fila de pixels recorrem totes les columnes per obtenir
# el color de tots els pixels i els anem guardant a l'arxiu.
for y in range (0, new_height):
    output.write("{")
    for x in range (0, new_width):    
        r,g,b,a = pix[x,y]

        output.write(rgb2hex(r, g, b))
        if x != (new_width-1):
            output.write(", ")
    if y != (new_height-1):
        output.write("}, ")
    else:
        output.write("}") 
    

output.write("}")

# Tanquem el fitxer.
output.close ()
