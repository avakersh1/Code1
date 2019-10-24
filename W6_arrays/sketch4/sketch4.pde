//int [] myInts; // an array of ints
//float [] myFloats;
boolean[] myBools;
String[] myStrs; 

void setup () {

 int[] myInts = {10,20,30,40,50,60,70,80};
  println(myInts.length);
  for(int i = 0; i < myInts.length; i++) {
    println(myInts[i]);
  }
  float[] myFloats = new float[8];
  
  for(int i = 0; i < myFloats.length; i++) {
myFloats[i] = (i + 1) * 10;
myFloats[i] = map(i, 0, myFloats.length, 10, 80);
println(myFloats[i]);

}

}
