boolean powerOn = false;

void setup(){
  size(800,800);
  background(0);
  rect(150,300,200,200);
  rect(450,300,200,200);
}

void draw(){
}

void mousePressed(){
  if(mousePressed){
    if(powerOn == true){
    fill(0, 128, 0);
    rect(450,300,200,200);
    fill(92, 16, 16);
    rect(150,300,200,200);
    powerOn = false;
    } else
    if(powerOn == false){
      fill(0, 128, 0);
    rect(150,300,200,200);
    fill(92, 16, 16);
    rect(450,300,200,200);
    powerOn = true;
    }
  }
}
    
