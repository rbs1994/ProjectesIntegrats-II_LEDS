class button{
  color rectColor = color(#FFFFFF);
  color rectHighlight = color(#D8D8D8);
  
  int x;
  int y;
  int sizeX;
  int sizeY;
  boolean overButton;
  
  String txt;
  int txtX;
  int txtY;
  
  button (int x, int y, int sX, int sY, String txt, int txtX, int txtY){
    this.x = x;
    this.y = y;
    this.sizeX = sX;
    this.sizeY = sY;
    this.overButton = false;
    this.txt = txt;
    this.txtX = txtX;
    this.txtY = txtY;
  }
  
  void printButton(){
    
    if (overButton) {
      fill(rectHighlight);
    } else {
      fill(rectColor);
    }
    textSize(12); 
    stroke(255);
    rect(x, y, sizeX, sizeY);
    fill(0);
    text(this.txt, this.txtX, this.txtY);
    
  }
  
  void overButton(int Xmouse, int Ymouse)  {
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



class textGUI{  
  int x;
  int y;
  
  String txt;
  
  textGUI (int x, int y, String txt){
    this.x = x;
    this.y = y;
    this.txt = txt;
  }
  
  void printText(){
    fill(#000000);
    noStroke();
    rect(this.x, this.y-20, 170, 26);
    fill(#FFFFFF);
    textSize(26); 
    text(this.txt, this.x, this.y);
    
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
  
  String txt;
   
  
  sliderBar(int X1, int Y1, int X2, int Y2, int sliderPos, int rectY, String txt){
    this.l1X = X1;
    this.l1Y = Y1;
    this.l2X = X2;
    this.l2Y = Y2;
    this.sliderPos = sliderPos;
    this.rectY = rectY;
    this.sizeX = 5;
    this.sizeY = 10;
    this.txt = txt;
  }
  
  void printSliderBar(int val){
    noStroke();
    fill(#000000);
    rect(l1X-5, l1Y-5, (l2X-l1X) + 80, this.sizeY+2);
    stroke(50);
    fill(#FFFFFF);
    line(l1X, l1Y, l2X, l2Y);
    rect(this.sliderPos, rectY, sizeX, sizeY);
    noStroke();
    textSize(12); 
    if (val > 0){
      text(val+" "+this.txt, (l2X-l1X) + 15, l1Y+5);
    }else {
      text(this.txt, (l2X-l1X) + 15, l1Y+5);
    }
    
  }
  
  int getValue(){
    
    return this.sliderPos; 
  }
  
  void setBarPos(int pos){
   if (pos >= 0 && pos <= 80){ 
     this.sliderPos = pos; 
   }
  }
  
  boolean overSlider(int Xmouse, int Ymouse)  {
    if (((Xmouse >= this.sliderPos && Xmouse <= this.sliderPos+this.sizeX) || 
          (Xmouse >= (this.sliderPos - 10) && Xmouse <= this.sliderPos+this.sizeX) ) && 
        (Ymouse >= this.rectY && Ymouse <= this.rectY+this.sizeY)) {
      return true;
      
    } else {
      return false;
    }
   
  }
  
  
}
