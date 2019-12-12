// this code draws an system where one ellipse rotates around another.
// replace this drawing code with a function that can be used to 
// draw the system repeatedly, like "drawSystem()". It should
// take arguments that allow parameters of the system to be customized,
// like the distance between each ellipse, the speed of rotation, and 
// the size of the ellipses.
// use your function to draw the system multiple times in the sketch
// as seen in the example gif.


void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  drawSystem(width*0.25, height*0.4, .02, 60, 30 );
  drawSystem(width*0.5, height*0.5, .03, 50, 20);
  drawSystem(width*0.75, height*0.3, .05, 70, 90);

}

void drawSystem(float x, float y, float speed, float size1, float size2){
  pushMatrix();
  translate(x, y);
  rotate(frameCount * speed);
  ellipse(0, 0, size1, size1);

  pushMatrix();
  translate(150, 0);
  ellipse(0, 0, size2, size2);
  popMatrix();
  
  popMatrix();
}
