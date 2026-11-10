


void setup() {
  size(600, 400);

//Baggrundsfarve
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
  //Overskrift
  textAlign(CENTER,CENTER);
  textSize(50);
  fill(200);
  text("Programmeringsquizzen",width/2,100);
  
  //Exit kasse
  fill(175,0,0);
  rect(width/2-100,325,200,40,12);
  //Indstillinger kasse
  fill(175, 175, 0);
  rect(width/2-100,250,200,40,12);
  //Start kasse
  fill(45,175,45);
  rect(width/2-100,175,200,40,12);
  //Tekst fyld i kasserne
  fill(0);
  textSize(30);
  text("Start",width/2,195);
  text("Indstillinger",width/2,270);
  text("Afslut",width/2,345);
  
  
}

void Spørgsmål(){
  
}

void Slut(){
  
}

void mouseClicked(){
  
}
