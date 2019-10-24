Player p;
Enemy e;
Target t;



void setup() {

  size(1000, 1000);
  p = new Player(500, 500, 100);
  e = new Enemy(100, 100, 100);
  t = new Target(900, 900, 100);
}

void draw() {
  background(255, 0, 0);

  p.display();
  p.update();

  e.display();
  e.update();

  t.display();
  t.update();
}


class Player {
  float xpos;
  float ypos;
  float radius;
  boolean isKeyboardControlled;

  Player(float x, float y, float r) {
    xpos = x;
    ypos = y;
    radius = r;
  }

  void display() {
    ellipse(xpos, ypos, radius, radius);
  }

  void update() {
    if (keyPressed == true) {
      if (key == CODED) {
        if (keyCode == UP) {
          ypos = ypos - 10;
        }
        if (keyCode == DOWN) {
          ypos = ypos + 10;
        }
        if (keyCode == LEFT) {
          xpos = xpos - 10;
        }
        if (keyCode == RIGHT) {
          xpos = xpos + 10;
        }
      }
    }
  }
}

class Enemy {
  float xpos;
  float ypos;
  float radius;

 int up;
 int down;
 int right; 
 int left;

  Enemy(float x, float y, float r) {
    xpos = x;
    ypos = y;
    radius = r;
  }

  void display() {
    ellipse(xpos, ypos, radius, radius);
  }

  void update() {
    if (frameCount % (10) == 0) {
      xpos = xpos++;
    }
  }
}

class Target {
  float xpos;
  float ypos;
  float radius;

 int up;
 int down;
 int right; 
 int left;
 

  Target(float x, float y, float r) {
    xpos = x;
    ypos = y;
    radius = r;
  }

  void display() {
    ellipse(xpos, ypos, radius, radius);
  }

  void update() {
  }
}
