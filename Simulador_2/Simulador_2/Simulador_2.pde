color[][] myArray = {{#000000, #000000, #000000, #000000, #000000, #000000, #000000, #ff0000, #ff0000, #ff0000, #ff0100, #ff0300, #ff0300, #ff0300, #ff0300, #ff0300, #ff0300, #ff0300, #ff0300, #ff0100, #ff0000, #ff0000, #ff0000, #000000, #000000, #000000, #000000, #000000, #000000, #000000}, {#000000, #000000, #000000, #000000, #000000, #ff0000, #ff0000, #ff0000, #ff0100, #ff0600, #ff2c00, #ff8a00, #ff8600, #ff8600, #ff8600, #ff8600, #ff8600, #ff8600, #ff8a00, #ff2c00, #ff0600, #ff0100, #ff0000, #ff0000, #ff0000, #000000, #000000, #000000, #000000, #000000}, {#000000, #000000, #000000, #000000, #000000, #ff0000, #ff0100, #ff0900, #ff2600, #ff8c00, #ff8400, #ffb300, #f9ff00, #eeff00, #eeff00, #eeff00, #eeff00, #f9ff00, #ffb300, #ff8400, #ff8c00, #ff2600, #ff0900, #ff0100, #ff0000, #000000, #000000, #000000, #000000, #000000}, {#000000, #000000, #000000, #000000, #ff0000, #ff0000, #ff2200, #ff8c00, #ff8900, #ffad00, #f9ff00, #e7ff00, #87ff00, #00f609, #00e719, #00e719, #00f609, #87ff00, #e7ff00, #f9ff00, #ffad00, #ff8900, #ff8c00, #ff2200, #ff0000, #ff0000, #000000, #000000, #000000, #000000}, {#000000, #000000, #000000, #ff0000, #ff0000, #ff2100, #ff8800, #ffa800, #faff00, #e0ff00, #93ff00, #00f609, #00e020, #007988, #0400ff, #0400ff, #007988, #00e020, #00f609, #93ff00, #e0ff00, #faff00, #ffa800, #ff8800, #ff2100, #ff0000, #ff0000, #000000, #000000, #000000}, {#000000, #ff0000, #ff0000, #ff0000, #ff2100, #ff8900, #ffa700, #fbff00, #9fff00, #00f807, #00d828, #00857d, #0400ff, #0c00f1, #2f00ac, #2f00ac, #0c00f1, #0400ff, #00857d, #00d828, #00f807, #9fff00, #fbff00, #ffa700, #ff8900, #ff2100, #ff0000, #ff0000, #ff0000, #000000}, {#000000, #ff0000, #ff0200, #ff2200, #ff8800, #ffa700, #fcff00, #a0ff00, #00f807, #009070, #0300ff, #0e00ee, #2500b8, #58007b, #580099, #580099, #58007b, #2500b8, #0e00ee, #0300ff, #009070, #00f807, #a0ff00, #fcff00, #ffa700, #ff8800, #ff2200, #ff0200, #ff0000, #000000}, {#ff0000, #ff0000, #ff0600, #ff8c00, #ffa800, #fdff00, #a0ff00, #00f906, #00926e, #0300ff, #2400bc, #58007a, #580096, #6b00d4, #9e00ec, #9e00ec, #6b00d4, #580096, #58007a, #2400bc, #0300ff, #00926e, #00f906, #a0ff00, #fdff00, #ffa800, #ff8c00, #ff0600, #ff0000, #ff0000}, {#000000, #ff0200, #ff2600, #ff8b00, #f7ff00, #9fff00, #00fb04, #00926e, #0300ff, #2500bd, #540077, #6c00ca, #9d00f4, #a500c4, #db004d, #db004d, #a500c4, #9d00f4, #6c00ca, #540077, #2500bd, #0300ff, #00926e, #00fb04, #9fff00, #f7ff00, #ff8b00, #ff2600, #ff0200, #000000}, {#ff0000, #ff0100, #ff8c00, #ffac00, #e7ff00, #00f40b, #00916e, #0200ff, #2500bd, #540077, #6c00cb, #9600f1, #d10066, #ff0d00, #ff2500, #ff2500, #ff0d00, #d10066, #9600f1, #6c00cb, #540077, #2500bd, #0200ff, #00916e, #00f40b, #e7ff00, #ffac00, #ff8c00, #ff0100, #ff0000}, {#ff0100, #ff2c00, #ff8400, #f7ff00, #97ff00, #00df20, #0500ff, #2500bd, #540077, #6b00ca, #9600f2, #d00067, #ff0d00, #ff5100, #ffa300, #ffa300, #ff5100, #ff0d00, #d00067, #9600f2, #6b00ca, #540077, #2500bd, #0500ff, #00df20, #97ff00, #f7ff00, #ff8400, #ff2c00, #ff0100}, {#ff0300, #ff8a00, #ffb300, #f1ff00, #00f40b, #008a77, #0b00f6, #590079, #6c00c9, #9600f4, #d00068, #ff0c00, #ff5000, #ff9500, #ffde00, #ffde00, #ff9500, #ff5000, #ff0c00, #d00068, #9600f4, #6c00c9, #590079, #0b00f6, #008a77, #00f40b, #f1ff00, #ffb300, #ff8a00, #ff0300}, {#ff0300, #ff8600, #f8ff00, #8aff00, #00ea15, #0400ff, #2600b6, #580099, #9c00f0, #d00068, #ff0b00, #ff5000, #ff9600, #ffd800, #ceff00, #ceff00, #ffd800, #ff9600, #ff5000, #ff0b00, #d00068, #9c00f0, #580099, #2600b6, #0400ff, #00ea15, #8aff00, #f8ff00, #ff8600, #ff0300}, {#ff0300, #ff8600, #edff00, #00f40a, #007d83, #0700f8, #59007a, #6a00d1, #a700cb, #ff1100, #ff5000, #ff9500, #ffd700, #d6ff00, #37ff00, #37ff00, #d6ff00, #ffd700, #ff9500, #ff5000, #ff1100, #a700cb, #6a00d1, #59007a, #0700f8, #007d83, #00f40a, #edff00, #ff8600, #ff0300}, {#ff0300, #ff8600, #eeff00, #00e51b, #0500ff, #2e00ab, #58009b, #9e00eb, #d70056, #ff2400, #ffa200, #ffdd00, #c7ff00, #3aff00, #00b34c, #00b34c, #3aff00, #c7ff00, #ffdd00, #ffa200, #ff2400, #d70056, #9e00eb, #58009b, #2e00ab, #0500ff, #00e51b, #eeff00, #ff8600, #ff0300}, {#ff0300, #ff8600, #eeff00, #00e51b, #0500ff, #2e00ab, #58009b, #9e00eb, #d70056, #ff2400, #ffa200, #ffdd00, #c7ff00, #3aff00, #00b34c, #00b34c, #3aff00, #c7ff00, #ffdd00, #ffa200, #ff2400, #d70056, #9e00eb, #58009b, #2e00ab, #0500ff, #00e51b, #eeff00, #ff8600, #ff0300}, {#ff0300, #ff8600, #edff00, #00f40a, #007d83, #0700f8, #59007a, #6a00d1, #a700cb, #ff1100, #ff5000, #ff9500, #ffd700, #d6ff00, #37ff00, #37ff00, #d6ff00, #ffd700, #ff9500, #ff5000, #ff1100, #a700cb, #6a00d1, #59007a, #0700f8, #007d83, #00f40a, #edff00, #ff8600, #ff0300}, {#ff0300, #ff8600, #f8ff00, #8aff00, #00ea15, #0400ff, #2600b6, #580099, #9c00f0, #d00068, #ff0b00, #ff5000, #ff9600, #ffd800, #ceff00, #ceff00, #ffd800, #ff9600, #ff5000, #ff0b00, #d00068, #9c00f0, #580099, #2600b6, #0400ff, #00ea15, #8aff00, #f8ff00, #ff8600, #ff0300}, {#ff0300, #ff8a00, #ffb300, #f1ff00, #00f40b, #008a77, #0b00f6, #590079, #6c00c9, #9600f4, #d00068, #ff0c00, #ff5000, #ff9500, #ffde00, #ffde00, #ff9500, #ff5000, #ff0c00, #d00068, #9600f4, #6c00c9, #590079, #0b00f6, #008a77, #00f40b, #f1ff00, #ffb300, #ff8a00, #ff0300}, {#ff0100, #ff2c00, #ff8400, #f7ff00, #97ff00, #00df20, #0500ff, #2500bd, #540077, #6b00ca, #9600f2, #d00067, #ff0d00, #ff5100, #ffa300, #ffa300, #ff5100, #ff0d00, #d00067, #9600f2, #6b00ca, #540077, #2500bd, #0500ff, #00df20, #97ff00, #f7ff00, #ff8400, #ff2c00, #ff0100}, {#ff0000, #ff0100, #ff8c00, #ffac00, #e7ff00, #00f40b, #00916e, #0200ff, #2500bd, #540077, #6c00cb, #9600f1, #d10066, #ff0d00, #ff2500, #ff2500, #ff0d00, #d10066, #9600f1, #6c00cb, #540077, #2500bd, #0200ff, #00916e, #00f40b, #e7ff00, #ffac00, #ff8c00, #ff0100, #ff0000}, {#000000, #ff0200, #ff2600, #ff8b00, #f7ff00, #9fff00, #00fb04, #00926e, #0300ff, #2500bd, #540077, #6c00ca, #9d00f4, #a500c4, #db004d, #db004d, #a500c4, #9d00f4, #6c00ca, #540077, #2500bd, #0300ff, #00926e, #00fb04, #9fff00, #f7ff00, #ff8b00, #ff2600, #ff0200, #000000}, {#ff0000, #ff0000, #ff0600, #ff8c00, #ffa800, #fdff00, #a0ff00, #00f906, #00926e, #0300ff, #2400bc, #58007a, #580096, #6b00d4, #9e00ec, #9e00ec, #6b00d4, #580096, #58007a, #2400bc, #0300ff, #00926e, #00f906, #a0ff00, #fdff00, #ffa800, #ff8c00, #ff0600, #ff0000, #ff0000}, {#000000, #ff0000, #ff0200, #ff2200, #ff8800, #ffa700, #fcff00, #a0ff00, #00f807, #009070, #0300ff, #0e00ee, #2500b8, #58007b, #580099, #580099, #58007b, #2500b8, #0e00ee, #0300ff, #009070, #00f807, #a0ff00, #fcff00, #ffa700, #ff8800, #ff2200, #ff0200, #ff0000, #000000}, {#000000, #ff0000, #ff0000, #ff0000, #ff2100, #ff8900, #ffa700, #fbff00, #9fff00, #00f807, #00d828, #00857d, #0400ff, #0c00f1, #2f00ac, #2f00ac, #0c00f1, #0400ff, #00857d, #00d828, #00f807, #9fff00, #fbff00, #ffa700, #ff8900, #ff2100, #ff0000, #ff0000, #ff0000, #000000}, {#000000, #000000, #000000, #ff0000, #ff0000, #ff2100, #ff8800, #ffa800, #faff00, #e0ff00, #93ff00, #00f609, #00e020, #007988, #0400ff, #0400ff, #007988, #00e020, #00f609, #93ff00, #e0ff00, #faff00, #ffa800, #ff8800, #ff2100, #ff0000, #ff0000, #000000, #000000, #000000}, {#000000, #000000, #000000, #000000, #ff0000, #ff0000, #ff2200, #ff8c00, #ff8900, #ffad00, #f9ff00, #e7ff00, #87ff00, #00f609, #00e719, #00e719, #00f609, #87ff00, #e7ff00, #f9ff00, #ffad00, #ff8900, #ff8c00, #ff2200, #ff0000, #ff0000, #000000, #000000, #000000, #000000}, {#000000, #000000, #000000, #000000, #000000, #ff0000, #ff0100, #ff0900, #ff2600, #ff8c00, #ff8400, #ffb300, #f9ff00, #eeff00, #eeff00, #eeff00, #eeff00, #f9ff00, #ffb300, #ff8400, #ff8c00, #ff2600, #ff0900, #ff0100, #ff0000, #000000, #000000, #000000, #000000, #000000}, {#000000, #000000, #000000, #000000, #000000, #ff0000, #ff0000, #ff0000, #ff0100, #ff0600, #ff2c00, #ff8a00, #ff8600, #ff8600, #ff8600, #ff8600, #ff8600, #ff8600, #ff8a00, #ff2c00, #ff0600, #ff0100, #ff0000, #ff0000, #ff0000, #000000, #000000, #000000, #000000, #000000}, {#000000, #000000, #000000, #000000, #000000, #000000, #000000, #ff0000, #ff0000, #ff0000, #ff0100, #ff0300, #ff0300, #ff0300, #ff0300, #ff0300, #ff0300, #ff0300, #ff0300, #ff0100, #ff0000, #ff0000, #ff0000, #000000, #000000, #000000, #000000, #000000, #000000, #000000}};



int a = 0, mw,mm,mn, mh, r =100;
int z = -180;
float n1 = 2;
float n2 = 2;
float n3 = 2;
float n4 = 2;
float n5 = 2;
float n6 = 2;
float n7 = 2;
float n8 = 2;
float n9 = 2;
float n10 = 2;
float n11 = 2;
float n12 = 2;
float n13 = 2;
float n14 = 2;
float n15= 1;

int vel = 6;  // Valors possibles: 1,2,3,4,5,6,9,10,12,15
              // Per detectar la minja volta als 180 i la volta completa als 360.

boolean changeColor = true;

boolean mitjaRodona = false;

int x,y;


void setup() {
  size(800,800);
  background(0);
  noStroke();
  mw = width/2;
  mh = height/2;
  mw = width/2+3;
  mh = height/2+3;
}

void draw() {
  //background(0);
  fill(0,20);
  rect(0,0,width,height);
  
  
  println(a);
  
  if (a == -360){
    changeColor = !changeColor;
    a = 0;
  }else if(a == -180){
    changeColor = !changeColor;
    z = 0;
  }



/********* Leds 1 *************/ 
  //ColorMitjaRodonaSuperior();
  
  x = GetXAxis(a,1);
  y = GetYAxis(a,1);
  
  fill(myArray[x][y]);
  
  ellipse( mw+sin(radians(a+(360/2)))*10,
           mh+cos(radians(a+(360/2)))*10,
           10*(r/100),10*(r/100));



  //ColorMitjaRodonaInferior();
  
  x = GetXAxis(z,1);
  y = GetYAxis(z,1);
  
  fill(myArray[x][y]);
  
  ellipse( mw+sin(radians(a+(360/2)))*-10,
           mh+cos(radians(a+(360/2)))*-10,
           10*(r/100),10*(r/100));
  
  
/********* Leds 2 *************/ 
  
   //ColorMitjaRodonaSuperior();
  
  x = GetXAxis(a,2);
  y = GetYAxis(a,2);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*30,
           mh+cos(radians(a+(360/2)))*30,
           10*(r/100),10*(r/100));


  
  //ColorMitjaRodonaInferior();
  
  x = GetXAxis(z,2);
  y = GetYAxis(z,2);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*-30,
           mh+cos(radians(a+(360/2)))*-30,
           10*(r/100),10*(r/100));

  
/********* Leds 3 *************/ 

    //ColorMitjaRodonaSuperior();
  
  x = GetXAxis(a,3);
  y = GetYAxis(a,3);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*50,
           mh+cos(radians(a+(360/2)))*50,
           10*(r/100),10*(r/100));



  //ColorMitjaRodonaInferior();
  
  x = GetXAxis(z,3);
  y = GetYAxis(z,3);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*-50,
           mh+cos(radians(a+(360/2)))*-50,
           10*(r/100),10*(r/100));
 
  
/********* Leds 4 *************/ 

   //ColorMitjaRodonaSuperior();
  
  x = GetXAxis(a,4);
  y = GetYAxis(a,4);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*70,
           mh+cos(radians(a+(360/2)))*70,
           10*(r/100),10*(r/100));



  //ColorMitjaRodonaInferior();
  
  x = GetXAxis(z,4);
  y = GetYAxis(z,4);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*-70,
           mh+cos(radians(a+(360/2)))*-70,
           10*(r/100),10*(r/100));
 
  
/********* Leds 5 *************/ 

   //ColorMitjaRodonaSuperior();
  
  x = GetXAxis(a,5);
  y = GetYAxis(a,5);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*90,
           mh+cos(radians(a+(360/2)))*90,
           10*(r/100),10*(r/100));



  //ColorMitjaRodonaInferior();
  
  x = GetXAxis(z,5);
  y = GetYAxis(z,5);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*-90,
           mh+cos(radians(a+(360/2)))*-90,
           10*(r/100),10*(r/100));
 
  
/********* Leds 6 *************/ 
  
   //ColorMitjaRodonaSuperior();
  
  x = GetXAxis(a,6);
  y = GetYAxis(a,6);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*110,
           mh+cos(radians(a+(360/2)))*110,
           10*(r/100),10*(r/100));



  //ColorMitjaRodonaInferior();
  
  x = GetXAxis(z,6);
  y = GetYAxis(z,6);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*-110,
           mh+cos(radians(a+(360/2)))*-110,
           10*(r/100),10*(r/100));
  
  
/********* Leds 7 *************/ 
  
   //ColorMitjaRodonaSuperior();
  
  x = GetXAxis(a,7);
  y = GetYAxis(a,7);
  
  fill(myArray[x][y]);
 
  ellipse( mw+sin(radians(a+(360/2)))*130,
           mh+cos(radians(a+(360/2)))*130,
           10*(r/100),10*(r/100));


  
  //ColorMitjaRodonaInferior();
  
  x = GetXAxis(z,7);
  y = GetYAxis(z,7);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*-130,
           mh+cos(radians(a+(360/2)))*-130,
           10*(r/100),10*(r/100));
  
  
/********* Leds 8 *************/ 

   //ColorMitjaRodonaSuperior();
  
  x = GetXAxis(a,8);
  y = GetYAxis(a,8);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*150,
           mh+cos(radians(a+(360/2)))*150,
           10*(r/100),10*(r/100));

  //ColorMitjaRodonaInferior();
  
  x = GetXAxis(z,8);
  y = GetYAxis(z,8);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*-150,
           mh+cos(radians(a+(360/2)))*-150,
           10*(r/100),10*(r/100));
  
  
/********* Leds 9 *************/ 

   //ColorMitjaRodonaSuperior();
  
  x = GetXAxis(a,9);
  y = GetYAxis(a,9);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*170,
           mh+cos(radians(a+(360/2)))*170,
           10*(r/100),10*(r/100));

  //ColorMitjaRodonaInferior();
  
  x = GetXAxis(z,9);
  y = GetYAxis(z,9);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*-170,
           mh+cos(radians(a+(360/2)))*-170,
           10*(r/100),10*(r/100));
  
  
  
/********* Leds 10 *************/ 

   //ColorMitjaRodonaSuperior();
  
  x = GetXAxis(a,10);
  y = GetYAxis(a,10);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*190,
           mh+cos(radians(a+(360/2)))*190,
           10*(r/100),10*(r/100));


  //ColorMitjaRodonaInferior();
  
  x = GetXAxis(z,10);
  y = GetYAxis(z,10);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*-190,
           mh+cos(radians(a+(360/2)))*-190,
           10*(r/100),10*(r/100));

  
  
/********* Leds 11 *************/ 

   //ColorMitjaRodonaSuperior();
  
  x = GetXAxis(a,11);
  y = GetYAxis(a,11);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*210,
           mh+cos(radians(a+(360/2)))*210,
           10*(r/100),10*(r/100));
 
 
  //ColorMitjaRodonaInferior();
  
  x = GetXAxis(z,11);
  y = GetYAxis(z,11);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*-210,
           mh+cos(radians(a+(360/2)))*-210,
           10*(r/100),10*(r/100));
     
  
  
 
/********* Leds 12 *************/ 
  
   //ColorMitjaRodonaSuperior();
  
  x = GetXAxis(a,12);
  y = GetYAxis(a,12);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*230,
           mh+cos(radians(a+(360/2)))*230,
           10*(r/100),10*(r/100));


  //ColorMitjaRodonaInferior();
  
  x = GetXAxis(z,12);
  y = GetYAxis(z,12);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*-230,
           mh+cos(radians(a+(360/2)))*-230,
           10*(r/100),10*(r/100));
     
  
  
/********* Leds 13 *************/ 
  
   //ColorMitjaRodonaSuperior();
  
  x = GetXAxis(a,13);
  y = GetYAxis(a,13);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*250,
           mh+cos(radians(a+(360/2)))*250,
           10*(r/100),10*(r/100));


  //ColorMitjaRodonaInferior();
  
  x = GetXAxis(z,13);
  y = GetYAxis(z,13);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*-250,
           mh+cos(radians(a+(360/2)))*-250,
           10*(r/100),10*(r/100));
   
 
/********* Leds 14 *************/ 
  
  
   //ColorMitjaRodonaSuperior();
  
  x = GetXAxis(a,14);
  y = GetYAxis(a,14);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*270,
           mh+cos(radians(a+(360/2)))*270,
           10*(r/100),10*(r/100));


  //ColorMitjaRodonaInferior();
  
  x = GetXAxis(z,14);
  y = GetYAxis(z,14);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*-270,
           mh+cos(radians(a+(360/2)))*-270,
           10*(r/100),10*(r/100));
  
 
 
/********* Leds 15 *************/ 
  
  //ColorMitjaRodonaSuperior();
  
  x = GetXAxis(a,15);
  y = GetYAxis(a,15);
  
  fill(myArray[x][y]);
  
  ellipse( mw+sin(radians(a+(360/2)))*290,
           mh+cos(radians(a+(360/2)))*290,
           10*(r/100),10*(r/100));
           
  //ColorMitjaRodonaInferior();
  
  x = GetXAxis(z,15);
  y = GetYAxis(z,15);
  
  fill(myArray[x][y]);
  ellipse( mw+sin(radians(a+(360/2)))*-290,
           mh+cos(radians(a+(360/2)))*-290,
           10*(r/100),10*(r/100));
             
  a = a-vel;
  z = z-vel;
  
  
}

void ColorMitjaRodonaSuperior(){
  
  if (mitjaRodona) {
    if (changeColor){ 
      fill(0,255,0); // Verd
    }else{  
      fill(0,0,255); //Blau
    } 
  }else{
    fill(#FF0004); //Vermell
  }
}

void ColorMitjaRodonaInferior(){
  
  if (mitjaRodona) {
    if (!changeColor){ 
      fill(0,255,0); // Verd
    }else{  
      fill(0,0,255); //Blau
    } 
  }else{
    fill(#FF0004); //Vermell
  }
}

int GetXAxis(int g, int pos){
  
  if ((15+int(cos(radians(g))*pos)) >= 30){
    return 29;
  }else{
    return 15+int(cos(radians(g))*pos);
  }
  
  
  
}

int GetYAxis(int g, int pos){
  
  if ((15+int(sin(radians(g))*pos)*-1) >= 30){
     return 29; 
  }else{
      return 15+int(sin(radians(g))*pos)*-1;
  }
  
  
  
}
