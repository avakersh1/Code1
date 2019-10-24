float [][] r = new float[40][40];
float [][] g = new float[40][40];
int step;

void setup() {
  size (800,800);
  step = width/ r.length;
  
  for (int i = 0; i < r.length; i++) {
    for (int j = 0; j < r[0].length; j++) {
      r[i] [j] = map(j, 0, r[0].length, 0, 255); 
      g[i] [j] = map(j, 0, g[0].length, 0, 255);
    }
  }
}

void draw() { 
  for (int i = 0; i < r.length; i++) {
    for (int j = 0; j < r[0].length; j++) {
      float x = map(i, 0, r.length, 0, width);
      float y = map(i, 0, r[0].length, 0,height);
      
      c[i][j] = (c[i][j] + 1) % 255);
      fill(c[i][j]);
      
      rect(x,y,step, step); 
    }
  }
}
