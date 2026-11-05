int[] resultat = {80, 140, 60, 190, 110};
int[] x= {20,40,60,80,100};

void setup() {
  size(800, 800);
}

void draw() {
  background(240);
  fill(34, 197, 94);

  // Tegn søjlerne med en for-løkke
  for(int i = 0; i < resultat.length; i++){
    rect(x[i],800,20,-resultat[i]);
  }
}
