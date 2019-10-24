int radius;
int diam;
float xCent;
float yCent;

void setup() {
  size(900, 900);
  noStroke();
  background(mouseX, mouseY);
  
  radius = 300;
  diam = 1;
  
  xCent = 0;
  yCent = 0;  
}

void draw() {
  
   if (xCent > width + 50) {
    xCent = -50;
    yCent += 50;
  } else {
    xCent += 10;    
  }
  
    float fillColor = map(mouseX, 0, width, 0, 255);
    fill(fillColor, 100, 200);
    
    for (float deg = 5; deg < 300; deg += 5) {
      
      float angle = radians(deg);
      float xShape = xCent + (cos(angle)*radius);
      float yShape = yCent + (sin(angle)*radius)*(cos(angle)); //creates figure 8
      
      ellipse (xShape, yShape, diam, diam);
      for(int i = 0; i < 500; i += 50) {
        ellipse(xShape-i, yShape-i , diam, diam);
        

        translate(600,600);
        rotate(radians(90));
        
        ellipse(xCent-i, yShape-i, diam, diam);
      
        deg += 2;
        
      
      }
    }
}
    
    
    
    
    
    
    
