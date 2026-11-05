//left & right player x
float leftplayerx = 100;
float rightplayerx = 900;

//left & right player y
float leftplayery = 400;
float rightplayery = 400;

//left player x,y speed
int leftplayerspeedx = 2;
int leftplayerspeedy = 2;

//right player x,y speed
int rightplayerspeedx = 2;
int rightplayerspeedy = 2;

//Point system
int pointleftplayer = 0;
int pointrightplayer = 0;

// ball X,Y
float ballY = 450;
float ballX = 450;

//ball speed
float ballspeedX = 2;
float ballspeedY = 1;

//ball acceleration
float ballspeedaccelerationX = random(1,2);
float ballspeedaccelerationY = random(1,2);

//Left player up down
boolean wPressed = false;
boolean sPressed = false;

//Right player up down
boolean upPressed = false;
boolean downPressed = false;

int lastTriggerleft = 0;
int lastTriggerright = 0;
int interval = 1;


void setup(){
  size(1000,800);
  background(0);
}

void draw(){
  //map and pointsystem
  background(0);
  fill(255);
 rect(490, 20, 20, 50);
 rect(490, 120, 20, 50);
 rect(490, 220, 20, 50);
 rect(490, 320, 20, 50);
 rect(490, 420, 20, 50);
 rect(490, 520, 20, 50);
 rect(490, 620, 20, 50);
 rect(490, 720, 20, 50);
 rect(490, 820, 20, 50);
 textSize(64);
 text(pointrightplayer,545,75);
 text(pointleftplayer,425,75);
 //player and ball
 fill(0,255,0);
 rect(rightplayerx,rightplayery-75,20,150);
 ellipse(ballX,ballY,50,50);
 rect(leftplayerx,leftplayery-75,20,150);

 //ball movement
  ballX = ballX+ballspeedX;
  ballY = ballY+ballspeedY;
  
  //if ball is touching left player then boolean turns true
  boolean touchingleftX = ballX - 25 <= 120 && ballX + 25 >= 100;
  boolean touchingleftY = ballY - 25 <= leftplayery + 75 && ballY + 25 >= leftplayery - 75;
  
//if ball is touching left players x,y then reverse speed
if (touchingleftX && touchingleftY) {
  ballspeedX = abs(ballspeedX)+ballspeedaccelerationX;
}
//if ball is touching right player the boolean turns true
  boolean touchingrightX = ballX + 25 >= 900 && ballX - 25 <= 920;
  boolean touchingrightY = ballY + 25 >= rightplayery - 75 && ballY - 25 <= rightplayery + 75;
  
//if touching right players x,y then reverse speed
  if (touchingrightX && touchingrightY) {
    ballspeedX = -(abs(ballspeedX)+ballspeedaccelerationX);
  }
    if (wPressed && millis() - lastTriggerleft > interval) {
      leftplayery = leftplayery + leftplayerspeedy*-5;
      lastTriggerleft = millis();
}
if (sPressed && millis() - lastTriggerleft > interval) {
      leftplayery = leftplayery + leftplayerspeedy*5;
      lastTriggerleft = millis();
}
leftplayery = constrain(leftplayery, 75, 725);
if (upPressed && millis() - lastTriggerright > interval) {
      rightplayery = rightplayery + rightplayerspeedy*-5;
      lastTriggerright = millis();
}
if (downPressed && millis() - lastTriggerright > interval) {
      rightplayery = rightplayery + rightplayerspeedy*5;
      lastTriggerright = millis();
}
rightplayery = constrain(rightplayery, 75, 725);
if(ballX>=1000){
    pointleftplayer = pointleftplayer + 1;
    ballX = 450;
    ballspeedX = 2;
    ballY = 450;
    ballspeedY = 2;
    delay(1000);
  } else if(ballX<=0){
    pointrightplayer = pointrightplayer + 1;
    ballX = 450;
    ballspeedX = random(-2,2);
    ballY = 450;
    ballspeedY = random(-2,2);
    delay(1000);
}
if(ballY>=775){
    ballspeedY = -(abs(ballspeedY)+ballspeedaccelerationY);
  }
  if(ballY<=25){
    ballspeedY = abs(ballspeedY)+ballspeedaccelerationY;
  }
}
void keyPressed(){
  if(key == 'w'){
    wPressed = true;
}
if(key == 's'){
    sPressed = true;
  }

if(keyCode == UP){
    upPressed = true;
  }
if(keyCode == DOWN){
    downPressed = true;
}
}

void keyReleased(){
  if(key == 'w'){
    wPressed = false;
  }
  if(key == 's'){
    sPressed = false;
  }
  if(keyCode == UP){
    upPressed = false;
  }
  if(keyCode == DOWN){
    downPressed = false;
  }
}
