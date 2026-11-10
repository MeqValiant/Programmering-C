


void setup() {
  size(600, 400);

  color colorbackground1 = color(0, 1, 51);
  color colorbackground2 = color(1, 50, 32);

  for (int x = 0; x < width; x++) {
    float coloramount = map(x, 0, width, 0, 1);

    stroke(lerpColor(colorbackground1, colorbackground2, coloramount));
    line(x, 0, x, height);
  }
}

void draw(){
 Start();
}

void Start(){
  
  textAlign(CENTER,CENTER);
  textSize(50);
  text("Programmeringsquizzen",width/2,100);
  
}

void Spørgsmål(){
  
}

void Slut(){
  
}
