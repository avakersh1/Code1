/*************************************************
                  SOURCE CODE
  Title: Easing.
  Author: n/a
  Date: n/a
  Availabilty: https://processing.org/examples/easing.html
  
****************************************************/
PImage bg;
PImage kelp;
color bodyColor = color(255,255,255);
color finsColor = color(255,255,255);
float fishX;
float fishY;
float easing = 0.07;


void setup() {
  size(700, 400);
  colorMode(HSB);
  bg = loadImage("fishBG.jpg");
  kelp = loadImage("kelp.png");
}

void draw(){
background(bg);
cursor(HAND);
bodyColor = color(mouseX/3, 220, 200);
finsColor = color(mouseX/3, 140, 240);

//////////////////////////////EASING///////////////////////////////////
float cursorX = mouseX;
float dx = cursorX - fishX;
fishX += dx * easing;

float cursorY = mouseY;
float dy = cursorY - fishY;
  fishY += dy * easing;
  
/////////////////////////////TURNING//////////////////////////////////
if (fishX > mouseX){
    drawFishLeft(fishX, fishY);
 }else{
    drawFishRight(fishX, fishY);  
 }
 image(kelp, 10, 200); //kelp will show in front of fish
}

//////////////////////////FISH ORIENTATION////////////////////////////

void drawFishLeft(float x, float y){
  drawTail(x,y);
  drawDorsel(x,y);
  drawBody(x,y); 
  drawFin(x,y);
  drawFaceLeft(x,y);
}


void drawFishRight(float x, float y){
  drawTail(x - 60,y);
  drawDorsel(x - 6,y);
  drawBody(x,y); 
  drawFin(x + 4,y);
  drawFaceRight(x,y);
}

/////////////////////////////FISH PARTS////////////////////////////////

void drawBody(float x, float y){
  fill(bodyColor);
  ellipse(x, y, 50, 25);
}

void drawTail(float x, float y){
  fill(finsColor);
  ellipse(x + 30, y, 19, 16);
}

void drawDorsel(float x, float y){
  fill(finsColor);
  ellipse(x + 3, y - 14, 25, 10);
}

void drawFin(float x, float y){
  fill(finsColor);
  ellipse(x - 2, y + 5, 10,5);
}


void drawFaceLeft(float x, float y){
  fill(255);
  stroke(2);
  line(x - 23, y + 5, x - 14, y + 3); 
  ellipse(x - 12, y - 3, 7, 7);
  ellipse(x - 12, y - 3, 1, 1);
}

void drawFaceRight(float x, float y){
  fill(255);
  stroke(2);
  line(x + 23, y + 5, x + 14, y + 3); 
  ellipse(x + 12, y - 3, 7, 7);
  ellipse(x + 12, y - 3, 1, 1);
}
