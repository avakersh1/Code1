Grid [] grd = new Grid[26]; 

void setup() {
  colorMode(HSB); 
  size(250, 420); 
  
  int x = width/2-90; 
  int y = height/2-160; 
  int k = 0; 

  for (int i = 0; i < 5; i+=1) {
    for (int j = 0; j < 5; j+= 1){
    grd[k] = new Grid(x+i*45, y+j*80, 100, 50, 50);
    k++; 
    }
  }
}

void draw() {
  for (int i = 0; i < 25; i++) {
    grd[i].display();
  }
}

class Grid {
  float x; 
  float y; 
    float w = 30;
float h = 70; 


int col; 

  Grid(float x, float y, float w, float h, int col) {

    
    this.x = x;
    this.y = y; 
  }
  void display() {
    rectMode(CENTER); 
    //for (int i = 15; i > 0; i++) {
      stroke(0); 
      rect(x, y, w, h); 
      
      
      
      
      
      //translate(width/2, height/2); 
      //fill(5, 150, 200); 
      
      //float s = map(i, 0, 10, 250, 10); 
      //stroke(s, 150, 200); 
      

      //translate(width/2, height/2); 
      //strokeWeight(2); 
      //stroke(-co, 150, 200); 
      //fill(co, 150, 200); 
      //rect(0, 0, 30, 70);
    }
  }
