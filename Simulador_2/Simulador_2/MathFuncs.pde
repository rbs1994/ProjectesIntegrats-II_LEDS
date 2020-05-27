// Funcio que calcula la X que hem de buscar en l'array 2D de colors.
float GetXAxis(int g, int pos, int numLeds){
  float r = (pos+0.5)/numLeds;
 // int posAux = ((100*(pos))/30);
  //int x = 50+round(cos(radians(g))*(posAux-1))*-1;
  float x = (-1)*(r*cos(radians(g))) / 2;
  return x+0.5;  
  
}



// Funcio que calcula la X que hem de buscar en l'array 2D de colors.
float GetYAxis(int g, int pos, int numLeds){
  
  //int posAux = ((100*(pos-1))/30);
  
  //int y = 50+round(sin(radians(g))*(posAux-1))*-1;
  float r = (pos+0.5)/numLeds;
 // int posAux = ((100*(pos))/30);
  //int x = 50+round(cos(radians(g))*(posAux-1))*-1;
  float y = (-1)*(r*sin(radians(g))) / 2;
   return y+0.5;
}


// Funcio que revisa que les posicions X i Y obtingudes existeixin dins l'Array 2D,
// per evitar errors al programa
boolean CheckArrayPositions(int XAux, int YAux){
  
  if ((XAux >= 0) && (XAux < (currentImage.length))){
    if ((YAux >= 0) && (YAux < (currentImage[XAux].length))){
      return true; 
    }else{
      return false; 
    }
  }else{
   return false;
  }
  
}

int getNumLeds(int sliderVal){
  
  if (sliderVal < 20){
    return 15;
  }
  else if(sliderVal >= 20 && sliderVal < 40 ){
    return 20;
  }
  else if(sliderVal >= 40 && sliderVal < 60 ){
    return 30;
  }else{
    return 40;
  }
  
}

int getDegrees(int sliderVal){
  
  if (sliderVal < 10){
    return 1;
  }
  else if(sliderVal >= 10 && sliderVal < 20 ){
    return 2;
  }
  else if(sliderVal >= 20 && sliderVal < 30 ){
    return 3;
  }else if(sliderVal >= 30 && sliderVal < 40 ){
    return 4;
  }else if(sliderVal >= 40 && sliderVal < 50 ){
    return 5;
  }else if(sliderVal >= 50 && sliderVal < 60 ){
    return 6;
  }else if(sliderVal >= 60 && sliderVal < 70 ){
    return 9;
  }else{
    return 10;
  }
  
}

int getVelocity(int sliderVal){
  
  if (sliderVal < 10){
    return 10;
  }
  else if(sliderVal >= 10 && sliderVal < 20 ){
    return 30;
  }
  else if(sliderVal >= 20 && sliderVal < 30 ){
    return 60;
  }else if(sliderVal >= 30 && sliderVal < 40 ){
    return 90;
  }else if(sliderVal >= 40 && sliderVal < 50 ){
    return 120;
  }else if(sliderVal >= 50 && sliderVal < 60 ){
    return 150;
  }else if(sliderVal >= 60 && sliderVal < 70 ){
    return 180;
  }else{
    return 210;
  }
  
}

int getEffect(int sliderVal){
  
  if (sliderVal < 10){
    return 0;
  }
  else if(sliderVal >= 10 && sliderVal < 20 ){
    return 5;
  }
  else if(sliderVal >= 20 && sliderVal < 30 ){
    return 10;
  }else if(sliderVal >= 30 && sliderVal < 40 ){
    return 15;
  }else if(sliderVal >= 40 && sliderVal < 50 ){
    return 20;
  }else if(sliderVal >= 50 && sliderVal < 60 ){
    return 25;
  }else if(sliderVal >= 60 && sliderVal < 70 ){
    return 30;
  }else{
    return 40;
  }
  
}
