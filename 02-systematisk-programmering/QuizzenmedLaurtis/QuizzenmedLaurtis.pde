int Start = 0;
int Spørgsmål = 1;
int Indstillinger = 2;
int Slut = 3;
int tilstand = Slut;
int svær = 5;
int nem = 4;
int sværhedsgrad = nem;
int resultat = 0;
int checkfærdig = 0;

color cb1 = color(0, 1, 51);
color cb2 = color(1, 50, 32);

void setup() {
  size(600, 400);
}

void draw(){
 if(tilstand==Start){
   Start();
 } else
 if(tilstand==Indstillinger){
   Indstillinger();
 } else
 if(tilstand==Spørgsmål){
   Spørgsmål();
 } else
 if(tilstand==Slut){
   Slut();
 }
}

void Start(){
  resultat = 0;
  //Baggrundsfarve
  for (int x = 0; x < width; x++) {
    float ca = map(x, 0, width, 0, 1);

    stroke(lerpColor(cb1, cb2, ca));
    line(x, 0, x, height);
  }
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
  
  if(checkfærdig == 1){
    fill(200);
    textSize(20);
    text("Tidligere resultat",510,325);
   text(resultat+"/5", 510, 350);
  }
}

void Indstillinger(){
  //Baggrundsfarve
  for (int x = 0; x < width; x++) {
    float ca = map(x, 0, width, 0, 1);

    stroke(lerpColor(cb1, cb2, ca));
    line(x, 0, x, height);
  }
  //Overskrift
  textAlign(CENTER,CENTER);
  textSize(60);
  fill(200);
  text("Indstillinger",width/2,100);
  
  //Retur kasse
  fill(175,0,0);
  rect(width/2-100,325,200,40,12);
  //Nem kasse
  if(sværhedsgrad==nem){
  fill(0, 175, 0);
  } else if(sværhedsgrad==svær){
    fill(175,0,0);
  }
  rect(width/2-100,250,200,40,12);
  //Svær kasse
  if(sværhedsgrad==nem){
  fill(175,0,0);
  } else if(sværhedsgrad==svær){
    fill(0,175,0);
  }
  rect(width/2-100,175,200,40,12);
  fill(0);
  textSize(30);
  text("Svær",width/2,195);
  text("Nem",width/2,270);
  text("Retur",width/2,345);
}

void Spørgsmål(){
  
}

void Slut(){
  //Baggrundsfarve
  for (int x = 0; x < width; x++) {
    float ca = map(x, 0, width, 0, 1);

    stroke(lerpColor(cb1, cb2, ca));
    line(x, 0, x, height);
  }
  //Overskrift
  textAlign(CENTER,CENTER);
  textSize(80);
  fill(200);
  text("Resultat af Quiz",width/2,100);
  //Kasse for Retur
  fill(150,0,0);
  rect(width/2-100,325,200,40,12);
  textSize(26);
  fill(0);
  text("Tilbage til Start",width/2,345);
  
  textAlign(CENTER,CENTER);
  textSize(100);
  fill(200);
  text(resultat+"/5",width/2,220);
}

void mouseClicked(){
  //Lukker knappen
  if(tilstand==Start && mouseX<400 && mouseX>200){
    if(mouseY<365 && mouseY>325){
      exit();
    }
  }
  if(tilstand==Start && mouseX<400 && mouseX>200){
    if(mouseY<290 && mouseY>250){
      tilstand = Indstillinger;
    }
  }
  if(tilstand==Start && mouseX<400 && mouseX>200){
    if(mouseY<215 && mouseY>175){
      tilstand = Spørgsmål;
    }
  }
  if(tilstand==Indstillinger && mouseX<400 && mouseX>200){
    if(mouseY<215 && mouseY>175){
      sværhedsgrad = svær;
    }
  }
  if(tilstand==Indstillinger && mouseX<400 && mouseX>200){
    if(mouseY<290 && mouseY>250){
      sværhedsgrad = nem;
    }
  }
  if(tilstand==Indstillinger && mouseX<400 && mouseX>200){
    if(mouseY<365 && mouseY>325){
      tilstand = Start;
    }
  }
  if(tilstand==Slut && mouseX<400 && mouseX>200){
    if(mouseY<365 && mouseY>325){
      tilstand = Start;
      checkfærdig = 1;
    }
  }
}
