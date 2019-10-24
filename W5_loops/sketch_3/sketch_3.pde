void setup() {
  size (800, 800); 
}

void draw() {
  background(255);
  float x = sin(radians(frameCount));
  float pos = map(s, -1, 1, 0, width); 
  
  background(map (s, -1, 1 0
