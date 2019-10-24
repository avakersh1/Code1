void setup()
{
size(400,400);

background(255);
}
void draw() {

  strokeWeight(4);
  stroke(0);
  fill(255,0,0);
  ellipse(width/2,height/2,80,80);
  noStroke();
  fill(0,0,255);
  rectMode(CENTER);
  rect(width/2, .66*height, width-160,80);
  
  stroke(0,255,0);
  line(80,height/3, width-80,80);
  
  stroke(0,255,0);
  strokeWeight(map(mouseX,0,width,1,10));
  line(80,height/3,width-80,80);
  
  println("mouse position: " + mouseX + ", " + mouseY);
  
  stroke(random(255), random(255), random(255));
  line(width/2,height/2,mouseX, mouseY);
  
  
  
  
  ////code1 week2
 //data and variables
 //(& arithmetic)
 
 int numerator = 3;
 int denominator = 4;
 
 println("3/4" + numerator/denominator);
 println("3/4= " + 4/3);
 
 
 println("3/(float)4 = " + numerator/(float)denominator);
 
 String mystring = "hello world";
 println(mystring);
 
 //capitalization in programming
 //datatypes
 // - simple is all lowercased (int, float, double)
 //- classes -- capitalize eash word ( String PShape)
 
 // variables
 //- single word is all lowercase (eg var1)
 //multiple words can be camelCase (myVariable, mySecondVariable)
 // - constants are all caps 
 
 //String strl = 4;
 String strl = str(4);  //use a conversion function
 //println("strl:" + strl);
 
 
 //scope
 
 void setup (){
 
 
 void draw() {
 
 
 
 background(10*numerator*denominator);
 
 
 }
 
 
 
}
