float co;
float angle;

void setup() {
size(601, 631);
colorMode(HSB);
}

void draw() {
  
  angle += .04;
  co = (150 * sin(angle/4));
for (int x = 0; x < width; x+=30) {
  for (int y = 0; y < height; y+=70) {
    strokeWeight(2);
    stroke(-co , 150, 200);
    fill(co , 150, 200);
    rect(x, y, 30, 70);
  }  
} 
}
