void setup() {
  size(500, 500);
  
}


void draw() {
  background(0); 
  for (int x = 0; x < width; x+=10) {
    for (int y = 0; y < height; y+=10) {
      
      float a = map(x, 0, height, 0, 255); 

      noStroke();
      rotate(radians(x-y*a)); 
      fill(radians(frameCount*x-y*a));
     ellipse(x, y, 10, 10);
   
    }
  }
}
