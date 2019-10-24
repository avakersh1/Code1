/**********Source code*****************
 * TITLE: How to create a countdown timer
 * AUTHOR: v.k.
 * DATE: May 2019
 * AVAILABLITY: https://forum.processing.org/one/topic/how-to-create-countdown-timer.html
 **************************************/
int num =200;

PFont font;
String time = "10";
int t;
int interval = 11;
int mouseRadius = 10; 
int Radius = 30;
boolean playing = true;
float dist;
float xpos, ypos;

float[] xspeed = new float[num];
float[] yspeed= new float[num];
float[] xPos= new float[num];
float[] yPos= new float[num];
float[] hues= new float[num];
float[] radius = new float[num];

void setup() {

  size(600, 600);
  font = createFont("Arial", 10);
  colorMode(HSB);
  noStroke();


  for (int i = 0; i < num; i++) {
    xPos[i] = width/2;
    yPos[i] = height/2;
    xspeed[i] = random(-5, 5); 
    yspeed[i] = random(-5, 5); 
    radius[i] = random(5, 30);
    hues[i] = map(i, 0, num, 0, 255);
  }
}

void draw() {

  background(255);

  text(time, width/2, 40);


  circles();
  timer();
}

void circles() {


  for (int i = 0; i < num; i++) {

    if (xPos[i] > width - radius[i] || xPos[i] < radius[i]) { 
      xspeed[i] *= -1;
    }

    if (yPos[i] > height - radius[i] || yPos[i] <radius[i]) { 
      yspeed[i] *= -1;
    }

    xPos[i] += xspeed[i];
    yPos[i] += yspeed[i];
    fill(hues[i], 200, 240);
    ellipse( xPos[i], yPos[i], radius[i] * 2, radius[i] * 2);
  }

  float d = dist(xpos, ypos, mouseX, mouseY);
  if (d < mouseRadius + Radius && mousePressed) {
    playing = false;
    //xPos = 0[];
    //yPos = 0[]; Im not sure how to connect the collision and click on ellipses to the array???
  }
}


void timer() {
  t = interval-int(millis()/1000);
  time = nf(t, 1);
  if (t == 0) {
    background(55);
    text("GAME OVER", width/2 - 30, height/2);
    interval+=10;
    noLoop();
  }
}
