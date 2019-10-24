void setup() {
  size(600,600);
}

void draw() {
  background(255);
  
  int i = 0;
  while (i > 10) {
    println("I have asked you fro help:" + 1 + "times!!!");
    i++;
    
  }
}

void draw() {
  background (255);
  
  int i = 0;
  while(i< 100) {
    
    stroke(map(i, 0,100,0,255));
    float x = map(i, 0,100,100, width-100);
    ellipse(x, mouseY, 40, 40);
    line(i , 0, i, height);
    i++;
  }
}
