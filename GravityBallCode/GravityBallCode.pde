//declare variables
float y, velY, diam,acc;

void setup() {
  //set size of canvas
  size(800, 600);
  
  //initialize variables
  y = height/2;
  diam = 80;
  velY = 10;
  acc = 1;
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(400, y, diam, diam);
  fill(random(255), random(255), random(255));


  //add velocity to position
  velY = velY + acc;
  y += velY;


  if (y >= height) {
    velY = -abs(velY);
    y=height;
  
  }
 
}