void setup(){
  size(800,800);
  background(0);
}

void draw(){
}

void keyPressed(){
  if(key == ' '){
    background(0);
    for(int y = 50;y<height;y+=50){
      for(int x = 50;x<width;x+50){
        
