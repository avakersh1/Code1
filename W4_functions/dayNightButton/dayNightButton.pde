/***************SOURCE CODE******************
*
* Title: Button.
* Author: n/a
* Date: n/a
*Availability: https://processing.org/examples/button.html
*
********************************************/
int sunX, sunY;     
int moonX, moonY;  
int sunSize = 100;     
int moonSize = 100;   
color sunColor, moonColor, baseColor;
color sunHighlight, moonHighlight;
color skyColor;
color nightColor;
color currentColor;
boolean sunOver = false;
boolean moonOver = false;

void setup() {
  size(600, 300);
  sunColor = color(255,213,0);
  sunHighlight = color(201,168,0);
  moonColor = color(213,241,245);
  moonHighlight = color(164,186,189);
  skyColor = color(31,203,255);
  nightColor = color(19,66,128);
  baseColor = color(255);
  currentColor = baseColor;
  moonX = 150;
  moonY = 130;
  sunX = 450;
  sunY =130;
  ellipseMode(CENTER);
}

void draw() {
  update(mouseX, mouseY);
  background(currentColor);
  
  String sun = ("Click on the Moon to make it night!");
  String moon = ("Click on the Sun to make it day!");
  fill(0);
  text(sun, 120,210,70,80);
  text (moon, 420,210,70,80);
 
  if (moonOver) {
    fill(moonHighlight);
  } else {
    fill(moonColor);
  }
  stroke(1);
  ellipse(moonX, moonY, moonSize, moonSize);

 if (sunOver) {
    fill(sunHighlight);
  } else {
    fill(sunColor);
  }
  stroke(1);
  ellipse(sunX, sunY, sunSize, sunSize);
  
}
void update(int x, int y) {
  if ( overMoon(moonX, moonY, moonSize) ) {
    moonOver = true;
    sunOver = false;
  } else if ( overSun(sunX, sunY, sunSize) ) {
    sunOver = true;
    moonOver = false;
  } else {
    sunOver = moonOver = false;
  }
}

void mousePressed() {
  if (moonOver) {
    currentColor = nightColor;
  }
  if (sunOver) {
    currentColor = skyColor;
  }
}

boolean overSun(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overMoon(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
