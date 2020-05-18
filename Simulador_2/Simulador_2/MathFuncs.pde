// Funcio que calcula la X que hem de buscar en l'array 2D de colors.
float GetXAxis(int g, int pos, int numLeds){
  float r = (pos+0.5)/numLeds;
 // int posAux = ((100*(pos))/30);
  //int x = 50+round(cos(radians(g))*(posAux-1))*-1;
  float x = (-1)*(r*cos(radians(g))) / 2;
  println("X r:"+ r + "COS: "+cos(radians(g))+" G: "+g);
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
  println("Y r:"+ r + "SIN: "+sin(radians(g))+" G: "+g);
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
