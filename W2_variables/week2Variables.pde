

/* SOURCE CODES
*
* Title: Interactivity source code
* Author: Casey Reas and Ben Fry
* Date: 2014
* Availability: https://processing.org/tutorials/interactivity/ 
*
* Title: Continuious Lines source code
* Author: Casey Reas and Ben Fry ?
* Date: n/a
* Availability: https://processing.org/examples/continuouslines.html
*
* Title: A Better Way to Generate Random Colors
* Author: Abe Pazos
* Date: n/a
* Availability: https://funprogramming.org/17-A-better-way-to-generate-random-colors.html
* 
*/


int backCircleX = 300;
int backCircleY = 250;


int leftEyeX = 230;
int leftEyeY = 250;

int rightEyeX = 370;
int rightEyeY = 250;

int mouthX = 300;
int mouthY = 330;

int textX = 260;
int textY = 450;

void setup() {
size(600, 600);
background(5);
colorMode(HSB); //contains randomness to the hue, saturation, and brightness
ellipse(backCircleX, backCircleY, 300, 300);
arc(mouthX, mouthY, 80, 80, 0, PI+QUARTER_PI, CHORD);
String s = "Give me hair!";
fill(255);
text(s, textX,textY , 80, 80); //displays text

}

void draw() {

strokeWeight(random(1, 50));
stroke(random(255), 200, 255); //HSN values
if (mousePressed == true) {
line(mouseX, mouseY, pmouseX, pmouseY); //draws line on screen
cursor(HAND); //changes to "select" cursor

} else {

cursor(CROSS); //when mouse is not pressed cursor appears as cross
}
ellipse(leftEyeX, leftEyeY, 30,30);
ellipse(rightEyeX, rightEyeY, 30,30);
}
