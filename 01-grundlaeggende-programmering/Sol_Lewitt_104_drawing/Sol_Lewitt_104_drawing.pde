void setup(){
  size(1000,800);
  background(0);
  stroke(255);
  }
   void draw(){
  }
  void keyPressed(){
    for(int i=0;i<=10000;i++){
     float randomx = random(10,990);
     float randomy = random(10,790);
    line(randomx,randomy,randomx-random(-10,10),randomy-random(-10,10));
    }
  }
