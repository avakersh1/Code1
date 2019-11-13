import processing.sound.*;

int NUM_BALLS = 5;
float MIN_RADIUS = 10;
float MAX_RADIUS = 50;

ArrayList<Ball> b = new ArrayList<Ball>();

void setup() {
  size(700, 700);
  colorMode(HSB, 100);

  for (int i = 0; i < NUM_BALLS; i++) {
    b.add(new Ball(random(MAX_RADIUS, width-MAX_RADIUS), random(MAX_RADIUS, height-MAX_RADIUS), this));
  }
}

void draw() {
  background(60, 50 , 100);

  for (int i = 0; i < NUM_BALLS; i++) {
    Ball ball = b.get(i);
    ball.update();
    ball.display();
  }
}
