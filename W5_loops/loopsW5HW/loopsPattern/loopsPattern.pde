/*****************SOUCRE CODE********************
* TITLE: Circular Motion: sine and her cousin 
* AUTHOR: Aba Pazos 
* DATE: n/a 
* AVAILABLITY: https://funprogramming.org/67-Circular-motion-sine-and-her-cousin.html
************************************************/
boolean up, left, right, down;
float a = 0; //angle
float b = 0; //angle
float x = .01;
float y = .01;
float co = 0; //color

void setup() {
  background(255);
  colorMode(HSB, 100); //will only reach the value 100
  size(800, 800);
  smooth();
  strokeWeight(1);
}

void draw() {
  stroke(co, 80, 100, 50);
  
  float x0 = map(sin(a), -1, 1, 10, width - 10);
  float y0 = map(cos(a), -1, 1, 10, height - 10);
  
  float x1 = map(sin(b), -1, 1, 10, width - 10);
  float y1 = map(cos(b), -1, 1, 10, height - 10);
  
 
  line(x0, y0, x1, y1);
  
    a = a + x; //up and down control
    b = b + y; //left and right control
  
    if (up) {
    x += .001;
  }
  if (down) {
    x -= .001;
  }
  if (right) {
    y += .001;
  }
  if (left) {
   y -= .001;
  }

println( "a = " + x);
println( "b = " + y);
  
  co = co + 5;    //restart after reaching 100
  if (co > 100) {
    co = 0;
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      up = true;
    } else if (keyCode == RIGHT) {
      right = true;
    } else if (keyCode == LEFT) {
      left = true;
    } else if (keyCode == DOWN) {
      down = true;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      up = false;
    } else if (keyCode == RIGHT) {
      right = false;
    } else if (keyCode == LEFT) {
      left = false;
    } else if (keyCode == DOWN) {
      down = false;
    }
  }
}

 void mousePressed() {
    saveFrame("screenshot-########.png");
    }
