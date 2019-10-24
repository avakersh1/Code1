float x;
float y;

float radius;

float angle;
float rectW = 8;
float rectH = 8;

void setup() {
  size(1500, 800);
  background(0);
  noStroke();
  rectMode(CENTER);
  colorMode(HSB);
  radius = dist(2 +width / 2, 2+ height / 2, width/2, height/2);  
}
 
void draw() {
  
  Spiral(x, y);
 
}
 
void Spiral(float x, float y){
 
  float hColor = map(mouseX, 0, width, 0, 255);
  float sColor = map(mouseY, 0, height, 200, 255);
  float bColor = map(mouseX, 0, height, 200, 255);
  float rectW = map(mouseX/2, 0, width, 1, 150);
  float rectH = map(mouseY/2, 0, height, 1, 150);

 translate(width / 2, height / 2);
    angle += 0.5;
    radius -= 0.6;
    if(radius > 0)
        radius = 0;
    x = sin(angle) * radius;
    y = cos(angle) * radius;
    
    stroke(hColor,sColor,bColor);
    strokeWeight(1);
    noFill();
    rect(x, y, rectW, rectH);
    
  
}
 
    void mousePressed() {
    saveFrame("screenshot.png");
    }
