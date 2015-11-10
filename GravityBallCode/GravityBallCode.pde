//declare variables
int count = 30;
//declare arrays
float[] y = new float[count];
float[] x = new float[count];
float[] velY = new float[count];
float[] diam = new float[count];
float[] acc = new float[count];
void setup() {
  //set size of canvas
  size(800, 600);
  int i = 0;
  //initialize variables
  while (i < count) {
  y[i] = height/2;
  x[i] = random(0, width);
  diam[i] = random(40,80);
  velY[i] = random(5,15);
  acc[i] = random(1,5);
  
  i++;

}
}
void draw() {
  //draw background to cover previous frame
  background(0);
int i = 0;
while (i < count) {
  //draw ball
  ellipse(x[i], y[i], diam[i], diam[i]);
  fill(random(255), random(255), random(255));


  //add velocity to position
  velY[i] = velY[i] + acc[i];
  y[i] += velY[i];


  if (y[i] >= height) {
    velY[i] = -abs(velY[i]);
    y[i]=height;
  
  }
 i ++ ;
}
}