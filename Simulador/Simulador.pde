/* Prova Git Hub +/
float rotation=0;
boolean change = false;



void setup() {
  size(700, 700);
  smooth();
}

void draw() {
  background(0,0,0);
  
  rotation += 2;
  stroke(1);
  translate(350, 350);
  rotate(radians(rotation));
  
  if (rotation == 180){
     change = true;
  }
  
  if (rotation == 360){
     rotation = 0;
     change = false;
  }
  
  
  
  println(nf(rotation, 0, 2));
  //fill(255,0,0);
  noStroke();
  
  //Superiors
  if(change){
    fill(0,255,0, 255);
  }else{
    fill(0,0,255, 255);
  }
  
  for(int i = -10; i >= -310; i -= 20){
    ellipse(0, i, 15, 15);
  }
  
  //Inferiors
  if(change){
    fill(0,0,255, 255);
  }else{
    fill(0,255,0, 255);
  }
  for(int i = 10; i <= 310; i += 20){
    ellipse(0, i, 15, 15);
  }
  
/********************/  
 rotate(radians(-3));
//Superiors
  if(change){
    fill(0,255,0, 230);
  }else{
    fill(0,0,255, 230);
  }
  
  for(int i = -10; i >= -310; i -= 20){
    ellipse(0, i, 15, 15);
  }
  
  //Inferiors
  if(change){
    fill(0,0,255, 230);
  }else{
    fill(0,255,0, 230);
  }
  for(int i = 10; i <= 310; i += 20){
    ellipse(0, i, 15, 15);
  }

/********************/  
 rotate(radians(-3));
//Superiors
  if(change){
    fill(0,255,0, 200);
  }else{
    fill(0,0,255, 200);
  }
  
  for(int i = -10; i >= -310; i -= 20){
    ellipse(0, i, 15, 15);
  }
  
  //Inferiors
  if(change){
    fill(0,0,255, 200);
  }else{
    fill(0,255,0, 200);
  }
  for(int i = 10; i <= 310; i += 20){
    ellipse(0, i, 15, 15);
  }
  
  
/********************/  
 rotate(radians(-3));
//Superiors
  if(change){
    fill(0,255,0, 170);
  }else{
    fill(0,0,255, 170);
  }
  
  for(int i = -10; i >= -310; i -= 20){
    ellipse(0, i, 15, 15);
  }
  
  //Inferiors
  if(change){
    fill(0,0,255, 170);
  }else{
    fill(0,255,0, 170);
  }
  for(int i = 10; i <= 310; i += 20){
    ellipse(0, i, 15, 15);
  }
  
  
}
