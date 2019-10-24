int cx, cy;
void setup() {
  size(600, 600);
  strokeWeight(4);
  colorMode(HSB);
}

void draw() {
 
  
  background(255);
 
  strokeWeight(2);
  translate(width/2, height/2);
  beginShape(POINTS);
  stroke(mouseX/3, mouseY, mouseX, mouseY);
  for (int a = 0; a < 360; a+=6) {
    float angle = radians(a);
    float x = cx + cos(angle) * 200;
    float y = cy + sin(angle) * 200;
    vertex(x, y); 

  pushMatrix();
  rotate(map(second(), 0, 60, 0, TWO_PI));
  strokeWeight(1);
  line(0, 0, 0, -180);
  popMatrix();

  pushMatrix();
  rotate(map(minute(), 0, 60, 0, TWO_PI));
  strokeWeight(3);
  line(0, 0, 0, -150);
  popMatrix();
  
  pushMatrix();
  int hour = hour();
  if (hour > 12) {
    hour -= 12;
  }
  rotate(map(hour(), 0, 12, 0, TWO_PI));
  strokeWeight(4);
  line(0, 0, 0, -120);
  popMatrix();
  
  }
  
}
