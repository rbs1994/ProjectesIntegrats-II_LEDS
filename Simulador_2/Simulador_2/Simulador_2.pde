// Array 2D per els Colors de l'Imatge
color [][] currentImage;
color [][] Image1;
color [][] Image2;
color [][] Image3;
color [][] Image4;
color [][] Image5;
color [][] Image6;

// Variables per crear les Elipses i l'Angle
int mw,mm,mn, mh, r =100;

//Contador de l'angle en el que ens trobem
int a = 0;
int z = -180;

//Slider Pos
int SliderPos = 5;

int imatgeActual = 0;

int imageSizeX, imageSizeY;

int vel;  // Valors possibles: 1,2,3,4,5,6,9,10,12,15
          // Per detectar la minja volta als 180 i la volta completa als 360.

// Boolea que ens indica si els valors X i Y estan dins el nostre Array 2D
boolean checkArrayPos = false;

float x,y;

int superior, inferior;

boolean playing = false;

int numLeds = 15;
int radiLed;
int separacioLeds;

int frameVel;


button play;
button selectFile;
button selectFile2;
button selectFile3;
button selectFile4;
button selectFile5;
button selectFile6;
button resetImages;
sliderBar slider, sliderLeds, sliderVel, sliderFrame;

textGUI ledText;
textGUI simulatorText;


ImageClass FImage, FImage2, FImage3, FImage4, FImage5, FImage6;



void setup() {
  size(800,780);
  background(0);
  noStroke();
  
  
  mw = width/2;
  mh = height/2;
  
  
  
  play = new button(10, 10, 60, 20, "Play/Stop", 13,24);
  resetImages = new button(100, 10, 60, 20, "Reset", 103,24);
  selectFile = new button (600, 10, 100, 20, "Select Image 1", 603, 24);
  selectFile2 = new button (600, 40, 100, 20, "Select Image 2", 603, 54);
  selectFile3 = new button (600, 70, 100, 20, "Select Image 3", 603, 84);
  selectFile4 = new button (600, 100, 100, 20, "Select Image 4", 603, 114);
  selectFile5 = new button (600, 130, 100, 20, "Select Image 5", 603, 144);
  selectFile6 = new button (600, 160, 100, 20, "Select Image 6", 603, 174);
  
  ledText = new textGUI (10,750,"Drawing Leds");
  simulatorText = new textGUI (650,750,"Simulator");
  
  vel = 6;
  slider = new sliderBar(5, 55, 80, 55, 10, 50, "Effect");
  
  sliderLeds = new sliderBar(5, 85, 80, 85, 10, 80, "Pixels");
  
  sliderVel = new sliderBar(5, 115, 80, 115, 50, 110, "Degrees");
  
  vel = getDegrees(sliderVel.getValue());

  sliderFrame = new sliderBar(5, 145, 80, 145, 50, 140, "Velocity");
  
  frameVel = getVelocity(sliderFrame.getValue());
  
  //radiLed = 15;
  radiLed = round((300 - (5*numLeds-1))/(numLeds));
  
  separacioLeds = radiLed+5;
  //separacioLeds = round(20/(numLeds/15));
  

}

void draw() {
  frameRate(frameVel);
 
  //Pressed Mouse
  if (mousePressed) {
    if (slider.overSlider(mouseX, mouseY)){
        slider.setBarPos(mouseX);
    }
    
    if (sliderLeds.overSlider(mouseX, mouseY)){
        sliderLeds.setBarPos(mouseX);
    }
    
    if (sliderVel.overSlider(mouseX, mouseY)){
        sliderVel.setBarPos(mouseX);
    }
    
    if (sliderFrame.overSlider(mouseX, mouseY)){
        sliderFrame.setBarPos(mouseX);
    }
  }
  
  play.overButton(mouseX, mouseY);
  selectFile.overButton(mouseX, mouseY);
  selectFile2.overButton(mouseX, mouseY);
  selectFile3.overButton(mouseX, mouseY);
  selectFile4.overButton(mouseX, mouseY);
  selectFile5.overButton(mouseX, mouseY);
  selectFile6.overButton(mouseX, mouseY);
  resetImages.overButton(mouseX, mouseY);
  
  
  //Boto PLAY
  play.printButton();
  
  //Texts
  ledText.printText();
  simulatorText.printText();
  
  
  numLeds = getNumLeds(sliderLeds.getValue());
  radiLed = round((300 - (5*numLeds-1))/(numLeds));
  separacioLeds = radiLed+5;
  
  vel = getDegrees(sliderVel.getValue());
  frameVel = getVelocity(sliderFrame.getValue());
  //Slider
  slider.printSliderBar(0);
  sliderLeds.printSliderBar(numLeds*2);
  sliderVel.printSliderBar(vel);
  sliderFrame.printSliderBar(frameVel);
  
  
  if (playing) {  
    // Rodona que es va pintant amb un Alpha reduit per deixar l'estela dels punts anteriors.
    fill(0,getEffect(slider.getValue()));
    ellipse(mw, mh, 610, 610);
    
    // A cada volta es posem l'angle (a) a 0.  
    if (a == -360){
      a = 0;
      
    }else if(a == -180){
      z = 0;
      changeImage();
    }
  
  
    superior = 10;
    inferior = -10;
    
   
  
    for (int i = 0; i <= numLeds-1; i=i+1){
    
      // Busquem la X i la Y segons en l'angles que ens trobem (a) i la posicio del LED (1)  
      x = GetXAxis(a,i, numLeds);
      y = GetYAxis(a,i, numLeds);
            
      
      imageSizeX = currentImage.length;
      int xAux = round(imageSizeX*x);
      imageSizeY = currentImage[imageSizeX-1].length;
      int yAux = round(imageSizeY*y);
    
      // Comprovem que les coordenades obtingudes existeixen dons l'array 2D  
      // Si existeixen les cordenades obtenim el color que correspon a l'array, sino pintem el led negre.  
      if (CheckArrayPositions(xAux,yAux)){
        fill(currentImage[xAux][yAux]);
      }else{
        fill(#000000); //Negre
      }
      
  
      // Dibuixem el LED, al posar 10 estem dibuixant el LED superior  
      ellipse( mw+sin(radians(a+(360/2)))*superior,
             mh+cos(radians(a+(360/2)))*superior,
             radiLed,radiLed);
             
             
      // Busquem la X i la Y segons en l'angles que ens trobem (z) i la posicio del LED (1)  
      x = GetXAxis(z,i, numLeds);
      y = GetYAxis(z,i, numLeds);
      
      imageSizeX = currentImage.length;
      xAux = round(imageSizeX*x);
      imageSizeY = currentImage[imageSizeX-1].length;
      yAux = round(imageSizeY*y);
    
      // Comprovem que les coordenades obtingudes existeixen dons l'array 2D    
      // Si existeixen les cordenades obtenim el color que correspon a l'array, sino pintem el led negre.    
      if (CheckArrayPositions(xAux,yAux)){
        fill(currentImage[xAux][yAux]);
      }else{
        fill(#000000); //Negre
      }
    
      // Dibuixem el LED, al posar -10 estem dibuixant el LED inferior   
      ellipse( mw+sin(radians(a+(360/2)))*inferior,
               mh+cos(radians(a+(360/2)))*inferior,
               radiLed,radiLed);
               
      inferior = inferior - separacioLeds;          
             
      superior = superior + separacioLeds;          
    }
                      
    // Incrementar la a ens augmenta la velocitat i amb la a tambe obtenim l'angle
    // en que es troben en cada moment els 15 Leds Superiors.
    a = a-vel;
    
    // La Z nomes ens serveix per obtenir l'angle en que es troben els 15 Leds Inferiors  
    z = z-vel;  
  }else{
    selectFile.printButton(); 
    selectFile2.printButton(); 
    selectFile3.printButton(); 
    selectFile4.printButton();
    selectFile5.printButton();
    selectFile6.printButton();
    resetImages.printButton();
  }
}

void mousePressed() {
  if (play.getOverButton()) {
    if (Image1 != null){
      background(0);
      currentImage = Image1;
      playing = !playing;
      a = 0;
      imatgeActual = 0;
      
    }
  }
  if (selectFile.getOverButton()) {
    selectInput("Select a file to process:", "fileSelected");
  }
  
  if (selectFile2.getOverButton()) {
    selectInput("Select a file to process:", "fileSelected2");
  }
  
  if (selectFile3.getOverButton()) {
    selectInput("Select a file to process:", "fileSelected3");
  }
  
  if (selectFile4.getOverButton()) {
    selectInput("Select a file to process:", "fileSelected4");
  }
  
  if (selectFile5.getOverButton()) {
    selectInput("Select a file to process:", "fileSelected5");
  }
  
  if (selectFile6.getOverButton()) {
    selectInput("Select a file to process:", "fileSelected6");
  }
  
  if (resetImages.getOverButton()) {
    Image1 = null;
    Image2 = null;
    Image3 = null;
    Image4 = null;
    Image5 = null;
    Image6 = null;
  }
  
}

void fileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    FImage = new ImageClass(selection.getAbsolutePath());
    Image1 = FImage.getImageColors();
  }
}

void fileSelected2(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    FImage2 = new ImageClass(selection.getAbsolutePath());
    Image2 = FImage2.getImageColors();
  }
}

void fileSelected3(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    FImage3 = new ImageClass(selection.getAbsolutePath());
    Image3 = FImage3.getImageColors();
  }
}

void fileSelected4(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    FImage4 = new ImageClass(selection.getAbsolutePath());
    Image4 = FImage4.getImageColors();
  }
}

void fileSelected5(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    FImage5 = new ImageClass(selection.getAbsolutePath());
    Image5 = FImage5.getImageColors();
  }
}

void fileSelected6(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    FImage6 = new ImageClass(selection.getAbsolutePath());
    Image6 = FImage6.getImageColors();
  }
}

//Funcio que s'executa a cada volta dels leds i comprova quina imatge ha de mostrar.
void changeImage(){
boolean imageFound = false;
  
  while(!imageFound){
    
    if (imatgeActual + 1 == 1){
      if(Image1 != null){
         currentImage = Image1;
         imageFound = true;
      }
        imatgeActual = 1;
    }else if (imatgeActual + 1 == 2){
      if(Image2 != null){
         currentImage = Image2;
         imageFound = true;
      }
        imatgeActual = 2;
    }else if (imatgeActual + 1 == 3){
      if(Image3 != null){
         currentImage = Image3;
         imageFound = true;
      }
        imatgeActual = 3;
    }else if (imatgeActual + 1 == 4){
      if(Image4 != null){
         currentImage = Image4;
         imageFound = true;
      }
        imatgeActual = 4;
    }else if (imatgeActual + 1 == 5){
      if(Image5 != null){
         currentImage = Image5;
         imageFound = true;
      }
        imatgeActual = 5;
    }else if (imatgeActual + 1 == 6){
      if(Image6 != null){
         currentImage = Image6;
         imageFound = true;
      }
        imatgeActual = 0;
    }
    
    
  }
  
}
