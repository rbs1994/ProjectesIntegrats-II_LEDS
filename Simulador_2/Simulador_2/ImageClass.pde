class ImageClass{
  
  PImage image; 
  int newWidth, newHeight;
  
  ImageClass(String url){
   image = loadImage(url); 
   resizeImage();
  }
  
  private void resizeImage(){
    
    if (image.width > image.height){
      this.newWidth = 100;
      this.newHeight = ((image.height*100)/image.width);
    }else{
      this.newHeight = 100;
      this.newWidth = ((image.width*100)/image.height);
    }
    
    this.image.resize(newWidth, newHeight);
    
  }
  
  
  color[][] getImageColors(){
    color [][] colorsArray = new color[newWidth][newHeight]; 
    
    for (int y = 0; y < newHeight; y = y+1){
      for (int x = 0; x < newWidth; x = x+1){
         colorsArray[y][x] = image.get(x,y);
      }
      
    }
    
    
    return colorsArray;
  }
  
}
