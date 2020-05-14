class buttonPlay{
  color rectColor = color(#FFFFFF);
  color rectHighlight = color(#D8D8D8);
  
  int x;
  int y;
  int sizeX;
  int sizeY;
  boolean overButton;
  
  buttonPlay (int x, int y, int sX, int sY){
    this.x = x;
    this.y = y;
    this.sizeX = sX;
    this.sizeY = sY;
    this.overButton = false;
  }
  
  void printButtonPlay(){
    
    if (overButton) {
      fill(rectHighlight);
    } else {
      fill(rectColor);
    }
    
    stroke(255);
    rect(x, y, sizeX, sizeY);
    fill(0);
    text("Play/Stop", 13, 24);
    
  }
  
  void overPlayButton(int Xmouse, int Ymouse)  {
    if (Xmouse >= this.x && Xmouse <= this.x+this.sizeX && 
        Ymouse >= this.y && Ymouse <= this.y+this.sizeY) {
      this.overButton = true;
    } else {
      this.overButton = false;
    }
   
  }
  
  boolean getOverButton(){
    return this.overButton;
    
  }
}

class buttonSelectFile{
  color rectColor = color(#FFFFFF);
  color rectHighlight = color(#D8D8D8);
  
  int x;
  int y;
  int sizeX;
  int sizeY;
  boolean overButton;
  
  buttonSelectFile (int x, int y, int sX, int sY){
    this.x = x;
    this.y = y;
    this.sizeX = sX;
    this.sizeY = sY;
    this.overButton = false;
  }
  
  void printButtonSelectFile(){
    
    if (overButton) {
      fill(rectHighlight);
    } else {
      fill(rectColor);
    }
    
    stroke(255);
    rect(x, y, sizeX, sizeY);
    fill(0);
    text("Change Image", this.x+2, 24);
    
  }
  
  void overSelectFileButton(int Xmouse, int Ymouse)  {
    if (Xmouse >= this.x && Xmouse <= this.x+this.sizeX && 
        Ymouse >= this.y && Ymouse <= this.y+this.sizeY) {
      this.overButton = true;
    } else {
      this.overButton = false;
    }
   
  }
  
  boolean getOverButton(){
    return this.overButton;
    
  }
}





class sliderBar{
  
  int l1X;
  int l1Y;
  int l2X;
  int l2Y;
  
  int sliderPos;
  int rectY;
  int sizeX;
  int sizeY;
   
  
  sliderBar(int X1, int Y1, int X2, int Y2, int sliderPos){
    this.l1X = X1;
    this.l1Y = Y1;
    this.l2X = X2;
    this.l2Y = Y2;
    this.sliderPos = sliderPos;
    this.rectY = 50;
    this.sizeX = 5;
    this.sizeY = 10;
  }
  
  void printSliderBar(){
    fill(#FFFFFF);
    line(l1X, l1Y, l2X, l2Y);
    rect(this.sliderPos, rectY, sizeX, sizeY);
    noStroke();
  }
  
  int getValue(){
    
    int val = 5;
    return val; 
  }
  
  void setBarPos(int pos){
   if (pos >= 5 && pos <= 80){ 
     this.sliderPos = pos; 
   }
  }
  
  boolean overSlider(int Xmouse, int Ymouse)  {
    if (Xmouse >= this.sliderPos && Xmouse <= this.sliderPos+this.sizeX && 
        Ymouse >= this.rectY && Ymouse <= this.rectY+this.sizeY) {
      return true;
      
    } else {
      return false;
    }
   
  }
  
  
}
