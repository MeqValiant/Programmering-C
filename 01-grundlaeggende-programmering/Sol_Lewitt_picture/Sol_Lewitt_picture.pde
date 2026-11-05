void setup(){
  size(600,600);
  background(0);
  stroke(255);
  }
void draw(){
}

void keyPressed(){
  background(0);
  if(key == ' '){
  for(int i=0;i<24;i++){
    float x = random(0,600);
    float y = random(0,600);
    line(300,300,x,y);
  }
    for(int i=0;i<12;i++){
    float x = random(0,600);
    float y = random(0,600);
    line(300,0,x,y);
  }
  for(int i=0;i<12;i++){
    float x = random(0,600);
    float y = random(0,600);
    line(300,600,x,y);
  }
  for(int i=0;i<12;i++){
    float x = random(0,600);
    float y = random(0,600);
    line(0,300,x,y);
  }
  for(int i=0;i<12;i++){
    float x = random(0,600);
    float y = random(0,600);
    line(600,300,x,y);
  }
  for(int i=0;i<12;i++){
    float x = random(0,600);
    float y = random(0,600);
    line(0,0,x,y);
  }
  for(int i=0;i<12;i++){
    float x = random(0,600);
    float y = random(0,600);
    line(0,600,x,y);
  }
  for(int i=0;i<12;i++){
    float x = random(0,600);
    float y = random(0,600);
    line(600,0,x,y);
  }
  for(int i=0;i<12;i++){
    float x = random(0,600);
    float y = random(0,600);
    line(600,600,x,y);
  }
  }
}
