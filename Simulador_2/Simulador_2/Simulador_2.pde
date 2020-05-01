int a = 0, mw,mm,mn, mh, r =100;
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

boolean mitjaRodona = true;


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
  }



/********* Leds 1 *************/ 
  ColorMitjaRodonaSuperior();
  ellipse( mw+sin(radians(a+(360/2)))*10,
           mh+cos(radians(a+(360/2)))*10,
           10*(r/100),10*(r/100));

  ColorMitjaRodonaInferior();
  ellipse( mw+sin(radians(a+(360/2)))*-10,
           mh+cos(radians(a+(360/2)))*-10,
           10*(r/100),10*(r/100));
  
  
/********* Leds 2 *************/ 
  
  ColorMitjaRodonaSuperior();
  ellipse( mw+sin(radians(a+(360/2)))*30,
           mh+cos(radians(a+(360/2)))*30,
           10*(r/100),10*(r/100));


  
  ColorMitjaRodonaInferior();
  ellipse( mw+sin(radians(a+(360/2)))*-30,
           mh+cos(radians(a+(360/2)))*-30,
           10*(r/100),10*(r/100));

  
/********* Leds 3 *************/ 

  ColorMitjaRodonaSuperior();
  ellipse( mw+sin(radians(a+(360/2)))*50,
           mh+cos(radians(a+(360/2)))*50,
           10*(r/100),10*(r/100));



  ColorMitjaRodonaInferior();
  ellipse( mw+sin(radians(a+(360/2)))*-50,
           mh+cos(radians(a+(360/2)))*-50,
           10*(r/100),10*(r/100));
 
  
/********* Leds 4 *************/ 

  ColorMitjaRodonaSuperior();
  ellipse( mw+sin(radians(a+(360/2)))*70,
           mh+cos(radians(a+(360/2)))*70,
           10*(r/100),10*(r/100));



  ColorMitjaRodonaInferior();
  ellipse( mw+sin(radians(a+(360/2)))*-70,
           mh+cos(radians(a+(360/2)))*-70,
           10*(r/100),10*(r/100));
 
  
/********* Leds 5 *************/ 

  ColorMitjaRodonaSuperior();
  ellipse( mw+sin(radians(a+(360/2)))*90,
           mh+cos(radians(a+(360/2)))*90,
           10*(r/100),10*(r/100));



  ColorMitjaRodonaInferior();
  ellipse( mw+sin(radians(a+(360/2)))*-90,
           mh+cos(radians(a+(360/2)))*-90,
           10*(r/100),10*(r/100));
 
  
/********* Leds 6 *************/ 
  
  ColorMitjaRodonaSuperior();
  ellipse( mw+sin(radians(a+(360/2)))*110,
           mh+cos(radians(a+(360/2)))*110,
           10*(r/100),10*(r/100));



  ColorMitjaRodonaInferior();
  ellipse( mw+sin(radians(a+(360/2)))*-110,
           mh+cos(radians(a+(360/2)))*-110,
           10*(r/100),10*(r/100));
  
  
/********* Leds 7 *************/ 
  if ((a == 0) || (a == -180) || (a == -360) || (a == -90) || (a == -270)){
    fill(255,0,0);
  }else{
    ColorMitjaRodonaSuperior();
  }
  ellipse( mw+sin(radians(a+(360/2)))*130,
           mh+cos(radians(a+(360/2)))*130,
           10*(r/100),10*(r/100));


  if ((a == 0) || (a == -180) || (a == -360) || (a == -90) || (a == -270)){
    fill(255,0,0);
  }else{
    ColorMitjaRodonaInferior();
  }
  ellipse( mw+sin(radians(a+(360/2)))*-130,
           mh+cos(radians(a+(360/2)))*-130,
           10*(r/100),10*(r/100));
  
  
/********* Leds 8 *************/ 

  ColorMitjaRodonaSuperior();
  ellipse( mw+sin(radians(a+(360/2)))*150,
           mh+cos(radians(a+(360/2)))*150,
           10*(r/100),10*(r/100));

  ColorMitjaRodonaInferior();
  ellipse( mw+sin(radians(a+(360/2)))*-150,
           mh+cos(radians(a+(360/2)))*-150,
           10*(r/100),10*(r/100));
  
  
/********* Leds 9 *************/ 

  ColorMitjaRodonaSuperior();
  ellipse( mw+sin(radians(a+(360/2)))*170,
           mh+cos(radians(a+(360/2)))*170,
           10*(r/100),10*(r/100));

  ColorMitjaRodonaInferior();
  ellipse( mw+sin(radians(a+(360/2)))*-170,
           mh+cos(radians(a+(360/2)))*-170,
           10*(r/100),10*(r/100));
  
  
  
/********* Leds 10 *************/ 

  ColorMitjaRodonaSuperior();
  ellipse( mw+sin(radians(a+(360/2)))*190,
           mh+cos(radians(a+(360/2)))*190,
           10*(r/100),10*(r/100));


  ColorMitjaRodonaInferior();
  ellipse( mw+sin(radians(a+(360/2)))*-190,
           mh+cos(radians(a+(360/2)))*-190,
           10*(r/100),10*(r/100));

  
  
/********* Leds 11 *************/ 

  ColorMitjaRodonaSuperior();
  ellipse( mw+sin(radians(a+(360/2)))*210,
           mh+cos(radians(a+(360/2)))*210,
           10*(r/100),10*(r/100));
 
 
  ColorMitjaRodonaInferior();
  ellipse( mw+sin(radians(a+(360/2)))*-210,
           mh+cos(radians(a+(360/2)))*-210,
           10*(r/100),10*(r/100));
     
  
  
 
/********* Leds 12 *************/ 
  
  ColorMitjaRodonaSuperior();
  ellipse( mw+sin(radians(a+(360/2)))*230,
           mh+cos(radians(a+(360/2)))*230,
           10*(r/100),10*(r/100));


  ColorMitjaRodonaInferior();
  ellipse( mw+sin(radians(a+(360/2)))*-230,
           mh+cos(radians(a+(360/2)))*-230,
           10*(r/100),10*(r/100));
     
  
  
/********* Leds 13 *************/ 
  
  ColorMitjaRodonaSuperior();
  ellipse( mw+sin(radians(a+(360/2)))*250,
           mh+cos(radians(a+(360/2)))*250,
           10*(r/100),10*(r/100));


  ColorMitjaRodonaInferior();
  ellipse( mw+sin(radians(a+(360/2)))*-250,
           mh+cos(radians(a+(360/2)))*-250,
           10*(r/100),10*(r/100));
   
 
/********* Leds 14 *************/ 
  
  
  ColorMitjaRodonaSuperior();  
  ellipse( mw+sin(radians(a+(360/2)))*270,
           mh+cos(radians(a+(360/2)))*270,
           10*(r/100),10*(r/100));


  ColorMitjaRodonaInferior();
  ellipse( mw+sin(radians(a+(360/2)))*-270,
           mh+cos(radians(a+(360/2)))*-270,
           10*(r/100),10*(r/100));
  
 
 
/********* Leds 15 *************/ 
  
  ColorMitjaRodonaSuperior();
  ellipse( mw+sin(radians(a+(360/2)))*290,
           mh+cos(radians(a+(360/2)))*290,
           10*(r/100),10*(r/100));
           
  ColorMitjaRodonaInferior();
  ellipse( mw+sin(radians(a+(360/2)))*-290,
           mh+cos(radians(a+(360/2)))*-290,
           10*(r/100),10*(r/100));
             
  a = a-vel;
  
}

void ColorMitjaRodonaSuperior(){
  
  if (mitjaRodona) {
    if (changeColor){ 
      fill(0,255,0); // Verd
    }else{  
      fill(0,0,255); //Blau
    } 
  }else{
    fill(0,255,0);
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
    fill(0,255,0);
  }
}
