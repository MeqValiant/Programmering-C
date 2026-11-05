float[] brickX = {
  15, 95, 175, 255, 335, 415
};
boolean[] brickActive = {
  true, true, true, true, true, true
};
int ballx = 250;
int bally = 600;
int ballspeedx = 3;
int ballspeedy = 2;

boolean collisiondetectx = false;
boolean collisiondetecty = false;



void setup(){
  size(500,800);
  background(0);
  fill(0,200,0);
}

void draw(){
  background(0);
for (int i = 0; i < brickX.length; i++) {
  if (brickActive[i]) {
    rect(brickX[i], 40, 70, 20);
  }
}
circle(ballx,bally,20);
if(ballx>=490){
  ballspeedx = ballspeedx * -1;
}
if(ballx<=10){
  ballspeedx = ballspeedx * -1;
  }
  if(bally>=790){
    ballspeedy = ballspeedy * -1;
  }
rect(mouseX-50,750,100,15);
ballx = ballx + ballspeedx;
bally = bally + ballspeedy;
if(ballx <= mouseX+100 && ballx >= mouseX && bally >= 740){
ballspeedy = ballspeedy *-1;
}
if(collisiondetectx == true && collisiondetecty == true){
  ballspeedy = ballspeedy*-1;
}
}
