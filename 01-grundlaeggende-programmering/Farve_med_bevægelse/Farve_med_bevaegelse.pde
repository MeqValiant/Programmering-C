void setup(){
  size(500,500);
  background(255);
}

void draw(){
  if(mouseX>width/2){
  fill(0,255,0);
  ellipse(200,200,150,150);
  }
  else{
    fill(255,0,0);
    ellipse(200,200,150,150);
  }
if(mouseX>width/2){
  background(mouseX/2,mouseX,mouseY);
}else{
  background(mouseX,mouseY,mouseX/2);
}
}
