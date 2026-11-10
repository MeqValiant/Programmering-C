void setup() {
  size(600, 400);
  textAlign(CENTER, CENTER);
  textSize(24);
}

void draw() {
  background(235);

  if(key == '1'){
    tegnKnap("Afspil",40,40+30);
    musOverKnap(40);
  }
  if(key == '2'){
    tegnKnap("Regler",130,130+30);
  }
  if(key == '3'){
    tegnKnap("Afslut",220,220+30);
  }
  if(key == '4'){
    tegnKnap("Indstillinger",310,310+30);
  }
  
}
boolean musOverKnap(float y);


void tegnKnap(String tekst, float y, float teksty){
  if(mouseY>y&&mouseY<y+60&&mouseX>200&&mouseX<400){
    fill(200,200,255);
}else{
  fill(255);
}
  rect(200, y, 200, 60, 12);
  fill(30);
  text(tekst, 300, teksty);
    
}
