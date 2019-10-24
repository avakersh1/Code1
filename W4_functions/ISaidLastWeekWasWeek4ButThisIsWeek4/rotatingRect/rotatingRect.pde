void setup(){
  size(700,700);
  rectMode(CENTER);
}

void draw() {
  
  background(255);
  translate(width/2, height/2);
  scale(mouseX * .01);
  rotate(radians(frameCount));
  println(frameCount);
  rect(0,0,10,10);
}
