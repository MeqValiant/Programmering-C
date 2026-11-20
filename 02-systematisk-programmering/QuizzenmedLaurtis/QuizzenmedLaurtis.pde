int Start = 0;
int Spørgsmål = 1;
int Indstillinger = 2;
int Slut = 3;
int Spørgsmål2 = 7;
int Spørgsmål3 = 8;
int Spørgsmål4 = 9;
int Spørgsmål5 = 10;
int tilstand = Start;
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
  textSize(50);
   if(tilstand==Start && mouseX<400 && mouseX>200 && mouseY>175 && mouseY<215){
    tilstand=Spørgsmål;
    resultat = 0;
    Spørgsmål("Hvilken form har en rect()","Firkant","Cirkel");
    }
     if(tilstand==Spørgsmål5){
      if(mouseX<300 && mouseY>300){
       tilstand=Slut;
       Slut();
     } else if(mouseX>300 && mouseY>300){
       resultat=resultat+1;
       tilstand=Slut;
       Slut();
     } else if(mouseX>15 && mouseX<65 && mouseY>15 && mouseY<65){
       tilstand=Spørgsmål4;
     }
   }
   if(tilstand==Spørgsmål4){
      if(mouseX<300 && mouseY>300){
        resultat=resultat+1;
       tilstand=Spørgsmål5;
       textSize(30);
       Spørgsmål("Hvad er en variabel skrevet uden for et scope?","local","Global");
     } else if(mouseX>300 && mouseY>300){
       tilstand=Spørgsmål5;
       Spørgsmål("Hvad er en variabel skrevet uden for et scope?","local","Global");
     } else if(mouseX>15 && mouseX<65 && mouseY>15 && mouseY<65){
       tilstand=Spørgsmål3;
     }
   }
   if(tilstand==Spørgsmål3){
      if(mouseX<300 && mouseY>300){
        resultat=resultat+1;
       tilstand=Spørgsmål4;
       textSize(43);
        Spørgsmål("Hvilket funktion danner et loop?","for()","if()");
     } else if(mouseX>300 && mouseY>300){
       tilstand=Spørgsmål4;
        Spørgsmål("Hvilket funktion danner et loop?","for()","if()");
     } else if(mouseX>15 && mouseX<65 && mouseY>15 && mouseY<65){
       tilstand=Spørgsmål2;
     }
   }
    if(tilstand==Spørgsmål2){
      if(mouseX<300 && mouseY>300){
       tilstand=Spørgsmål3;
     } else if(mouseX>300 && mouseY>300){
       tilstand=Spørgsmål3;
       resultat=resultat+1;
       Spørgsmål("Hvilken farve er fill(0,200,0)?","Grøn", "rød");
     } else if(mouseX>15 && mouseX<65 && mouseY>15 && mouseY<65){
       tilstand=Spørgsmål;
       Spørgsmål("Hvilken farve er fill(0,200,0)?","Grøn", "rød");
     }
   }
    if(tilstand==Spørgsmål){
     if(mouseX<300 && mouseY>300){
       tilstand=Spørgsmål2;
       resultat=resultat+1;
         Spørgsmål("Kan en int have komma-tal?","ja", "nej");
     } else if(mouseX>300 && mouseY>300){
       tilstand=Spørgsmål2;
         Spørgsmål("Kan en int have komma-tal?","ja", "nej");
     } else if(mouseX>15 && mouseX<65 && mouseY>15 && mouseY<65){
       tilstand=Start;
     }
   }
}

void Spørgsmål(String overskrift, String svar1, String svar2){
  background(0);
  //Baggrundsfarve
  for (int x = 0; x < width; x++) {
    float ca = map(x, 0, width, 0, 1);

    stroke(lerpColor(cb1, cb2, ca));
    line(x, 0, x, height);
  }
  fill(255);
  rect(300,300,300,300);
  fill(200);
  rect(0,300,300,300);
  fill(250);
  textAlign(CENTER,CENTER);
  text(overskrift,width/2,100);
  textSize(20);
  fill(0);
  text(svar1,150,350);
   text(svar2,450,350);
 fill(200,0,0);
 rect(15,15,50,50,12);
 fill(0);
textSize(50);
textAlign(CENTER,CENTER);
text("←", 40, 35);
}
