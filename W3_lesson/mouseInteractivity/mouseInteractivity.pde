/*
//scopes
int numerator = 3;
int denominator = 4;

void setup() {
color bg = color(255,255,0);
//background(bg);

size(300,300);
}

void draw() {
  
fill(10*(numerator*denominator)); 
  rectMode(CENTER);
  rect(width/2,height/2,20,20);
  
}
*/

//mouse and interactivity 

//mousePressed bool vs mousePressed() event

int mouseEventCounter = 0;
int mousePressedBooleanCounter = 0;



void setup() {
size(300,300);
}


void draw() {
  if(mousePressed) {
    mousePressedBooleanCounter++;
println("mousePressedBlooeanCounter: " + mousePressedBooleanCounter); 
  }
  //println("mousePressed:" + mousePressed);
}

void mousePressed() {
 mouseEventCounter++; //mouseEventCounter = mouseEventCounter + 1
                      //
  println("mousePressed() event" + mouseEventCounter); 
}
