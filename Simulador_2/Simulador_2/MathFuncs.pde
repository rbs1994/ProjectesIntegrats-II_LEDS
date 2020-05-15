// Funcio que calcula la X que hem de buscar en l'array 2D de colors.
int GetXAxis(int g, int pos){
  
  int posAux = ((100*(pos-1))/30);
  int x = 50+round(cos(radians(g))*(posAux-1))*-1;
  
  return x;  
  
}



// Funcio que calcula la X que hem de buscar en l'array 2D de colors.
int GetYAxis(int g, int pos){
  
  int posAux = ((100*(pos-1))/30);
  
  int y = 50+round(sin(radians(g))*(posAux-1))*-1;
  
   return y;
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
