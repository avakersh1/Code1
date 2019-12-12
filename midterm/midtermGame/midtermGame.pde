PImage bg;
PImage kelp;
//PImage fishLeft;
//PImage fishRight;
color bodyColor = color(255,255,255);
color finsColor = color(255,255,255);
float fishX;
float fishY;
float easing = 0.07;

PFont font;
String time = "10";
int t;
int interval = 11;

float fishfoodX;
float fishfoodY; 

float fishfoodSpeedX = .001; 
float fishfoodSpeedY= .001; 


FoodTimer foodtimer;
Food[] foodPieces;
int totalFoodPieces;

void setup() {
  size(700, 400);
  colorMode(HSB);
  bg = loadImage("fishBG.jpg");
  kelp = loadImage("kelp.png");
  
  
  foodPieces = new Food[1000];
  foodtimer = new FoodTimer(300);
  foodtimer.start();

  fishfoodX = 50; 
  fishfoodY = 50;
  
}

void draw(){
background(bg);
cursor(HAND);

 text(time, width/2, 40);

bodyColor = color(mouseX/3, 220, 200);
finsColor = color(mouseX/3, 140, 240);

timer();

//int posX, posY; 

//for(int i=0; i<20; i=i+1){
//  posX = int(random(width-100));
//  posY = int(random(width-100)); 
//  fishfoodX(posX, posY);
//  fishfoodY(posX, posY); 
 
//}

//fishfoodX = fishfoodX + fishfoodSpeedX; 
//fishfoodY = fishfoodY + fishfoodSpeedY; 

//fill(50); 
//ellipse(fishfoodX, fishfoodY, 20, 20); 

///WRAP SCREEN/////////////////////////////////////////////////////////////////

//if (fishfoodX > width){
//  fishfoodX = 0; 
//}
//if (fishfoodX < 0){
//  fishfoodX = width; 
//}

//if (fishfoodY > height) {
//  fishfoodY = 0; 
//}
//if (fishfoodY < 0){
//  fishfoodY = height; 
//}

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
 
 //foodPieces = new Food[1000];
 // foodtimer = new FoodTimer(300);
 // foodtimer.start();
  
 
 image(kelp, 10, 200); //kelp will show in front of fish
 
}

////////////////////////////FISH ORIENTATION////////////////////////////

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



class Food{
  float x, y;   
  float speed;  
  color c;
  float r;      

  Food() {
    r = 8;                   
    x = random(width);       
    y = -r*4;                
    speed = random(1, 5);    
    c = color(50, 100, 150); 
  }
  
  void move() {
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
    fill(255);
    noStroke();
    for (int i = 2; i < r; i++ ) {
      ellipse(x, y, i*2, i*2);
    }
  }

 
  void eaten() {
    speed = 0; 
    y = -1000;
  }
}


  class FoodTimer {

  int savedTime; 
  int totalTime; 

  FoodTimer(int tempTotalTime) {
    totalTime = tempTotalTime;
  }
  
  void start() {
    savedTime = millis();
  }

  
  boolean isFinished() { 
  
    int passedTime = millis()- savedTime;
    if (passedTime > totalTime) {
      return true;
    } else {
      return false;
    }
  }
}

  void fishfoodX(int x, int y){
  pushMatrix(); 
  translate(x,y); 
  fill(50); 
ellipse(fishfoodX, fishfoodY, 10, 10); 
popMatrix();
  
}

void fishfoodY(int x, int y){
  pushMatrix(); 
  translate(x,y); 
  fill(50); 
ellipse(fishfoodX, fishfoodY, 10, 10); 
popMatrix(); 
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
 
