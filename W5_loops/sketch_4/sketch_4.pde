char a = 'a';
boolean 

void setup() {
  size(600,600);
  x = width/2;
  y = height/2; 
}

void draw() {
 ellipse( x, y, 50, 50);
}

void keyPressed() {
 // println(key); 
  if (key == CODED) {
   if (keyCode == UP) {
     println("up!");
   }
  }
}

void keyRealeased() {
  if (key == CODED) {
    if (keyCode == UP) {
      println("Released!");
    }
  }
}
