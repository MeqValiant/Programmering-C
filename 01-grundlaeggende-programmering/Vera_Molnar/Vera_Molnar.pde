void setup(){
  size(800,800);
  background(0);
  fill(255);
  stroke(255);
}

void draw(){
}

void mousePressed(){
  if(mousePressed){
    background(0);
    for(int movey = 10; movey<=760; movey+=80){
      for(int movex = 10; movex<=760; movex+=80){
  int decider = int(random(1,7));
  switch(decider){
    case 1:
    line(movex,movey,movex+60,movey);
    line(movex+60,movey,movex+60,movey+60);
    break;
    case 2:
    line(movex,movey,movex,movey+60);
    line(movex,movey,movex+60,movey);
    break;
    case 3:
    line(movex,movey,movex,movey+60);
    line(movex,movey+60,movex+60,movey+60);
    break;
    case 4:
    line(movex,movey+60,movex+60,movey+60);
    line(movex+60,movey,movex+60,movey+60);
    break;
    case 5:
    line(movex+60,movey,movex+60,movey+60);
    line(movex,movey,movex,movey+60);
    break;
    case 6:
    line(movex,movey,movex+60,movey);
    line(movex,movey+60,movex+60,movey+60);
    break;
  }
}
    }}}
