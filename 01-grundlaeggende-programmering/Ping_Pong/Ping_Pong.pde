int rectY = mouseY;
float boldY = 450;
float boldX = 450;
float boldspeedY = 2;
float boldspeedX = 2;
float boldspeedXacceleration = random(1, 4);
float boldspeedYacceleration = random(1, 4);
int pointfjende = 0;
int pointspiller = 0;
float enemyMaxSpeed = 10;
float enemyY = 450;

void setup(){
  size(1000,1000);
  background(0,0,0);
}

void draw(){
  background(0);
  fill(255);
 rect(500, 0, 20, 50);
 rect(500, 100, 20, 50);
 rect(500, 200, 20, 50);
 rect(500, 300, 20, 50);
 rect(500, 400, 20, 50);
 rect(500, 500, 20, 50);
 rect(500, 600, 20, 50);
 rect(500, 700, 20, 50);
 rect(500, 800, 20, 50);
 textSize(64);
 text(pointspiller,550,75);
 text(pointfjende,440,75);
  fill(0,255,0);
  rect(900,mouseY-75,20,150);
  ellipse(boldX,boldY,50,50);
  rect(100,enemyY-75,20,150);

  boldX = boldX+boldspeedX;
  boldY = boldY+boldspeedY;
  
  if (enemyY < boldY) {
  enemyY += min(enemyMaxSpeed, boldY - enemyY);
} else if (enemyY > boldY) {
  enemyY -= min(enemyMaxSpeed, enemyY - boldY);
}
  boolean touchingleftX = boldX - 25 <= 120 && boldX + 25 >= 100;
  boolean touchingleftY = boldY - 25 <= enemyY + 75 && boldY + 25 >= enemyY - 75;

if (touchingleftX && touchingleftY) {
  boldspeedX = abs(boldspeedX)+boldspeedXacceleration;
}
  boolean touchingrightX = boldX + 25 >= 900 && boldX - 25 <= 920;
  boolean touchingrightY = boldY + 25 >= mouseY - 75 && boldY - 25 <= mouseY + 75;

  if (touchingrightX && touchingrightY) {
    boldspeedX = -(abs(boldspeedX)+boldspeedXacceleration);
  }

  if(boldY>=820){
    boldspeedY = -(abs(boldspeedY)+boldspeedYacceleration);
  }
  if(boldY<=25){
    boldspeedY = abs(boldspeedY)+boldspeedYacceleration;
  }
  if(boldX>=1000){
    pointfjende = pointfjende + 1;
    boldX = 450;
    boldspeedX = 2;
    boldY = 450;
    boldspeedY = 2;
    delay(1000);
  } else if(boldX<=0){
    pointspiller = pointspiller + 1;
    boldX = 450;
    boldspeedX = random(-2,2);
    boldY = 450;
    boldspeedY = random(-2,2);
    delay(1000);
}
}
