int x = 0;
int y = 0;

void setup() {
  size(700, 700);
}

void draw() {
  if(x > width + 100){
    x = -100;
    y += 70;
  }else{
    x+=3;
  }
  
  pushMatrix();
  translate(x, y);
  rotate (radians(frameCount));
  fill(255);
  rect(0,0, mouseX, mouseY);
  popMatrix();
}
