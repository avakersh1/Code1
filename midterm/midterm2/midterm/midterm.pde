import processing.sound.*;
SoundFile file;

Fish fish;
FoodTimer foodtimer;
Food[] food;
int totalFood = 0; 

PImage bg;
PImage kelp;

color bodyColor = color(255, 255, 255);
color finsColor = color(255, 255, 255);

int gameScene = 0; 

float endTime; 
float timeToEnd = 10000; 

int score = 0; 

void setup() {
  size(700, 400);
  colorMode(HSB);
  bg = loadImage("fishBG.jpg");
  kelp = loadImage("kelp.png");

  fish = new Fish(40);
  food = new Food[1000];
  foodtimer = new FoodTimer(300);
  
  file = new SoundFile(this, "sound.wav");
  file.loop();
}


void draw() {

  if (gameScene == 0) {
    gameStartScene();
  } else if 
    (gameScene == 1) {
    gameScene();
  } else if  
    (gameScene==2) {
    gameOverScene();
  }
}

////////////////////////////////////////////////////////////

void gameStartScene() {
  background(0); 
  textSize(20); 
  text("CLICK TO PLAY !!!", 260, 50);
  text("Collect as many pieces of food before time runs out !!!", 100, 200);
  
   resetGameTimer();
}

///////////////////////////////////////////////////////////

void startGame() {
  gameScene = 1;
}

///////////////////////////////////////////////////////////

void gameScene() { 
  background(bg);

  foodDisplay();

  float fishX = mouseX;
  float fishY = mouseY;
  
  if (millis()>timeToEnd) {
    gameOverScene();
  }

  if (fishX > width/2) {
    drawFishLeft(fishX, fishY);
  } else {
    drawFishRight(fishX, fishY);
  }

  bodyColor = color(mouseX/3, 220, 200);
  finsColor = color(mouseX/3, 140, 240);

  fish.setLocation(mouseX, mouseY);
  fish.collider();
  
  image(kelp, 10, 200);
}

/////////////////////////////////////////////////////////

void gameOverScene() {
  background(0); 
  text("You ate " + score + " pieces of food !!! ", 30, 200);
  text("CLICK TO PLAY AGAIN!", height/2, width/2);
  gameScene = 2;
}


void resetGameTimer() {
  endTime = millis() + timeToEnd;
}
////////////////////////////////////////////////////////

void foodDisplay() {
  
  foodtimer.start();

  if (foodtimer.isFinished()) {
    food[totalFood] = new Food();
    totalFood ++;
    if (totalFood >= food.length) { 
      totalFood = 0;
    }

    foodtimer.start();
  }
  for (int i = 0; i < totalFood; i++ ) {
    food[i].fall();
    food[i].display();
    if (fish.intersect(food[i])) {
      food[i].eaten();
    }
  }
}
///////////////////////////////////////////////////////

void drawFishLeft(float x, float y) {
  drawTail(x, y);
  drawDorsel(x, y);
  drawBody(x, y); 
  drawFin(x, y);
  drawFaceLeft(x, y);
}


void drawFishRight(float x, float y) {
  drawTail(x - 60, y);
  drawDorsel(x - 6, y);
  drawBody(x, y); 
  drawFin(x + 4, y);
  drawFaceRight(x, y);
}

//////////////////////////////////////////////////////

void drawBody(float x, float y) {
  fill(bodyColor);
  ellipse(x, y, 50, 25);
}

void drawTail(float x, float y) {
  fill(finsColor);
  ellipse(x + 30, y, 19, 16);
}

void drawDorsel(float x, float y) {
  fill(finsColor);
  ellipse(x + 3, y - 14, 25, 10);
}

void drawFin(float x, float y) {
  fill(finsColor);
  ellipse(x - 2, y + 5, 10, 5);
}


void drawFaceLeft(float x, float y) {
  fill(255);
  stroke(2);
  line(x - 23, y + 5, x - 14, y + 3); 
  ellipse(x - 12, y - 3, 7, 7);
  ellipse(x - 12, y - 3, 1, 1);
}

void drawFaceRight(float x, float y) {
  fill(255);
  stroke(2);
  line(x + 23, y + 5, x + 14, y + 3); 
  ellipse(x + 12, y - 3, 7, 7);
  ellipse(x + 12, y - 3, 1, 1);
}

///////////////////////////////////////////////////////

void mousePressed() {
  if (gameScene == 0) {
    startGame();
  }
  if (gameScene == 2) {
    gameStartScene();
  }
}
