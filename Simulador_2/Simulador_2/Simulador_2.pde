// Array 2D per els Colors de l'Imatge
color [][] currentImage;
color [][] Image1;
color [][] Image2;
// Variables per crear les Elipses i l'Angle
int a = 0, mw,mm,mn, mh, r =100;
int z = -180;

//Slider Pos
int SliderPos = 5;

boolean viewImage1 = true;

int vel;  // Valors possibles: 1,2,3,4,5,6,9,10,12,15
          // Per detectar la minja volta als 180 i la volta completa als 360.

// Boolea que ens indica si els valors X i Y estan dins el nostre Array 2D
boolean checkArrayPos = false;

float x,y;

int superior, inferior;

boolean playing = false;



button play;
button selectFile;
button selectFile2;
button resetImages;
sliderBar slider;

textGUI ledText;
textGUI simulatorText;

ImageClass FImage;
ImageClass FImage2;



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
  
  ledText = new textGUI (10,750,"Drawing Leds");
  simulatorText = new textGUI (650,750,"Simulator");
  
  slider = new sliderBar(5, 55, 80, 55, vel);
  vel = slider.getValue();
  

}

void draw() {
 
  //Pressed Mouse
  if (mousePressed) {
    println(mouseX);
      if(mouseX < 5){
        slider.setBarPos(5);
      }else{
        slider.setBarPos(mouseX);
      }
  }
  
  play.overButton(mouseX, mouseY);
  selectFile.overButton(mouseX, mouseY);
  selectFile2.overButton(mouseX, mouseY);
  resetImages.overButton(mouseX, mouseY);
  
  //Boto PLAY
  play.printButton();
  
  //Texts
  ledText.printText();
  simulatorText.printText();
  
  //Slider
  slider.printSliderBar();
  
  if (playing) {  
    // Rodona que es va pintant amb un Alpha reduit per deixar l'estela dels punts anteriors.
    fill(0,10);
    ellipse(mw, mh, 600, 600);
    
    
    // A cada volta es posem l'angle (a) a 0.  
    if (a == -360){
      a = 0;
      if (viewImage1) {
        currentImage = Image1;
        viewImage1 = false;
      }else {
        if (Image2 != null) {
          currentImage = Image2;
        }
        viewImage1 = true;
      }
    }else if(a == -180){
      z = 0;
    }
  
  
  
    superior = 10;
    inferior = -10;
  
    for (int i = 0; i <= 14; i=i+1){
    
      // Busquem la X i la Y segons en l'angles que ens trobem (a) i la posicio del LED (1)  
      x = GetXAxis(a,i, 15);
      y = GetYAxis(a,i, 15);
      
      println("X: " + x + " Y: "+y);
      
      
      int xAux = round(100*x);
      int yAux = round(100*y);
    
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
             15,15);
             
             
      // Busquem la X i la Y segons en l'angles que ens trobem (z) i la posicio del LED (1)  
      x = GetXAxis(z,i, 15);
      y = GetYAxis(z,i, 15);
      
      xAux = round(100*x);
      yAux = round(100*y);
    
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
               15,15);
               
      inferior = inferior - 20;          
             
      superior = superior + 20;          
    }
                      
    // Incrementar la a ens augmenta la velocitat i amb la a tambe obtenim l'angle
    // en que es troben en cada moment els 15 Leds Superiors.
    a = a-vel;
    
    // La Z nomes ens serveix per obtenir l'angle en que es troben els 15 Leds Inferiors  
    z = z-vel;  
  }else{
    selectFile.printButton(); 
    selectFile2.printButton(); 
    resetImages.printButton();
  }
}

void mousePressed() {
  if (play.getOverButton()) {
    if (Image1 != null){
      background(0);
      currentImage = Image1;
      playing = !playing;
    }
  }
  if (selectFile.getOverButton()) {
    selectInput("Select a file to process:", "fileSelected");
  }
  
  if (selectFile2.getOverButton()) {
    selectInput("Select a file to process:", "fileSelected2");
  }
  
  if (resetImages.getOverButton()) {
    Image1 = null;
    Image2 = null;
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
