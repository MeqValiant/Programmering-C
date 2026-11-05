int[] x = {50, 150, 250, 350, 450, 550, 650, 750};
int[] y = {50, 150, 250, 350, 450, 550, 650, 750};

void setup(){
  size(800,800);
  background(0);
  fill(0, 128, 0);
}

void draw(){
  background(0);
  for(int i = 0; i<y.length; i++){
    circle(x[i],y[i],50);
    x[i] = x[i] +10;
    if(x[i]>=775){
      x[i]=25;
  }
  }
}
