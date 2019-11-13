class Food {
  float x, y;
  float speed;
  color c;
  float r;

  Food() {
    r = 8;                   
    x = random(width);       
    y = -r*4;                
    speed = random(1, 5);    
    c = color(25, 200, 222);
  }

  void fall() {
    y += speed;
  }

  boolean reachedBottom() {
    if (y > height + r*4) { 
      return true;
    } else {
      return false;
    }
  }

  void display() {
    fill(c);
    noStroke();
      ellipse(x, y, 10, 10);
    }

  void eaten() {
    speed = 0;
    y = -1000;
  }
}
