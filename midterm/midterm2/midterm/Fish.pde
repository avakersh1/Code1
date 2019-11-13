class Fish {
  float r;
  float x, y;

  Fish(float tempR) {
    r = tempR;
    x = 0;
    y = 0;
  }

  void setLocation(float tempX, float tempY) {
    x = tempX;
    y = tempY;
    
  }

  void collider() {
    noStroke();
    noFill();
    ellipse(x, y, 50, 25);
  }

  boolean intersect(Food d) {
    float distance = dist(x, y, d.x, d.y);

    if (distance < r + d.r) {
      return true;
    } else {
      return false;
    }
  }
}
