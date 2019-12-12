// this program draws a line of ellipses to the
// screen that change their color over time.
// replace the 1 dimensional array with a 
// 2 dimensional array and draw it to the screen
// as shown in the example gif. Everything already 
// works, all you have to do is add a dimension.
int rows = 10;
int cols = 10;
int[][]myArray = new int[cols][rows];

//float[] x = new float[cols];
//float[] y = new float[cols];
//float[] col = new float[cols];
//float[] rate = new float[cols];

void setup() {
  size(600, 600);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
    myArray[i][j] = 0;
  }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++)
      myArray[i][j] = int(random(255));
    }

    
    noStroke();
    fill(i, j);
    ellipse(x[i], y[i], 25, 25);
  }
