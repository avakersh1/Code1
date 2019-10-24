int num =200;
int destroy;
boolean up; 

float[] xspeed = new float[num];
float[] yspeed= new float[num];
float[] xpos= new float[num];
float[] ypos= new float[num];
float[] hues= new float[num];
float[] radius = new float[num];
float[] time = new float[num];


void setup() {

  size(600, 600);

  colorMode(HSB);
  noStroke();

  for (int d  = 0; d < num; d++) {
    if (xpos[d] < 0 || xpos[d] > width) { 
      radius[d] = 0;
    }

    for (int i = 0; i < num; i++) {
      xpos[i] = width/2;
      ypos[i] = height/2;
      xspeed[i] = random(-5, 5); 
      yspeed[i] = random(-5, 5); 
      radius[i] = random(5, 30);
      time[i] = random(1, 2);
      hues[i] = map(i, 0, num, 0, 255);
    }
  }
}
  void draw() {
    background(150);

if (up) {
    for (int i = 0; i < num; i++) {

      if (xpos[i] > width - radius[i] || xpos[i] < radius[i]) { 
        xspeed[i] *= -1;
      }

      if (ypos[i] > height - radius[i] || ypos[i] <radius[i]) { 
        yspeed[i] *= -1;
      }

      xpos[i] += xspeed[i];
      ypos[i] += yspeed[i];
      fill (hues[i], 200, 240); 
      ellipse( xpos[i], ypos[i], radius[i] * 2, radius[i] * 2);

      if (up) {
      }
    }
  }
  }
  void keyPressed() {
      if (key == CODED) {
      if (keyCode == UP) {
        up = false;
      }
    }
  }
