Fish fish;
Timer timer;
Food[] food;
int totalFood = 0; 

void setup() {
  size(700, 400);
  colorMode(HSB);
  bg = loadImage("fishBG.jpg");
  kelp = loadImage("kelp.png");
  
  fish = new Fish(50,25);
  food = new Food[1000];
  foodtimer = new FoodTimer(300);
  foodTimer.start(); 
}

void draw() {
  background(bg);

bodyColor = color(mouseX/3, 220, 200);
finsColor = color(mouseX/3, 140, 240);

fish.setLocation(mouseX, mouseY);
fish.display();

if (timer.isFinished()) {
  food[totalFood] = new Food();
  totalFood ++;
  if (totalFood >= food.length) { 
    totalFood = 0;
  }
  
  foodTimer.start();
}
  for (int i = 0; i < totalFood; i++ ) {
    food[i].move();
    food[i].display();
    if (fish.intersect(food[i])) {
      food[i].eaten();
    }
  }
}
