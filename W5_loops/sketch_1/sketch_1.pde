void setup() {
  size(600,600);
}


void draw() {
background(255);
for(int y = 0; y < height; y+= 30){  
for(int x = 0; x < width ; x+=30) {
  pushMatrix();
  translate(x, y); 
  float r = map(x, 0, width, 0, 255);
  float g = map(y, 0, width, 0, 255);
  float t = map(y, 0, width, 0, 255);
  
  fill(r, g, 150);
  rotate(radians (frameCount + t));
  ellipse (0, 0, mouseX , mouseY);
  noStroke();
  popMatrix();
}
} 
}
