int waterlevel = 65;
int midtY = height/2;
int midtX = width/2;


void setup(){
  size(800,800);
  textAlign(CENTER,CENTER);
  fill(255);
  textSize(64);
}

void draw(){
  if(waterlevel < 0 || waterlevel > 100){
      background(25, 25, 112);
      text(waterlevel, width/4, height/4);
      text("Ugyldig måling", width/2, height/2);
    }
    if(waterlevel <= 19 && waterlevel >= 0){
      background(65, 105, 225);
      text(waterlevel, width/4, height/4);
      text("Fyld tanken", width/2, height/2);
    }
    if(waterlevel <=49 && waterlevel >= 20){
      background(30, 144, 255);
      text(waterlevel, width/4, height/4);
      text("Lav vandstand", width/2, height/2);
    }
    if(waterlevel <=79 && waterlevel >= 50){
      background(135, 206, 235);
      text(waterlevel, width/4, height/4);
      text("Passende vandstand", width/2, height/2);
    }
    if(waterlevel <=100 && waterlevel >= 80){
      background(176, 196, 222);
      text(waterlevel, width/4, height/4);
      text("Tanken er næsten fuld", width/2, height/2);
    }
}

void keyPressed(){
  if(keyCode == UP){
    waterlevel = waterlevel + 1;
  }
  if(keyCode == DOWN){
    waterlevel = waterlevel - 1;
  }
}
      
    
    
