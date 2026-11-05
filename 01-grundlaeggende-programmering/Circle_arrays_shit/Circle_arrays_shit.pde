float[] diameter = {20, 45, 30, 70, 50};

void setup() {
  size(800, 800);
}

void draw() {
  background(235);

  // Skriv din løkke her
  for(int i = 0; i < 4; i++){
    circle(diameter[i]*4,diameter[i]*4,20);
}
}
