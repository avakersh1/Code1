//

void setup() {
  size(600,600);
}

int backgroundColor = 255;

void draw() {
  
 if (buttonOn){
   background(255);
 }else{
   background(150);
  background (backgroundColor);
  
  ellipse (width/2, height/2, 100,100);
  line (width/2, height/2, mouseX, mouseY);
}
  //float d = getDistance(width/2, height/2 mouseX, mouseY);
 //float d = dist(width/2, height/2, mouseX, mouseY);
 
 
void mousePressed(){
float d= dist(width/2, height/2, mouseX, mouseY) {
if (d < 50) {
  if (backgroundColor == 255)
  backgroundColor = 100;
}else{
  backgroundColor = 255;
}
