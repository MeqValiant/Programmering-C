int slag;
//This is the first die throw when you open the program
void setup(){
  size(600,600);
  background(255);
  
  slag = (int) random(1, 7);
  fill(0);
  textSize(100);
  textAlign(CENTER,CENTER);
  text("Du rullede "+slag,width/2,height/2);
}
//To keep listening
void draw(){
}
//This is the die throw everytime you press a key
void keyPressed(){
 slag = (int) random(1, 7);
 background(255);
  fill(0);
  textSize(100);
  textAlign(CENTER,CENTER);
  text("Du rullede "+slag,width/2,height/2);
}
