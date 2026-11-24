import processing.sound.*;
boolean Spiller = true;
int højrevenstre = 0;

SinOsc tone;

void setup() {
  size(800, 600);
  tone = new SinOsc(this);
  tone.play();
}

void draw(){
  background(30);
  float freq = map(mouseX,0,width,800,800);
  tone.freq(freq);
  float volume = map(mouseY, 0, height, 10, 0);
  tone.amp(volume);
  float pan = højrevenstre;
  tone.pan(pan);
  if(Spiller == false){
    tone.stop();
  } else {
    tone.play();
  }
  fill(255);
  text("Frekvens: "+ int(freq) + " Hz", 20, 100);
  text("Lydstyrke: "+ nf(volume,1,2) + " dB", 20, 150);
  if(højrevenstre >0){
  text("Hvilket øre spiller det i?: Højre ",20,200); 
  }
  if(højrevenstre <0){
  text("Hvilket øre spiller det i?: Venstre",20,200);
  }
  if(højrevenstre == 0){
  text("Hvilket øre spiller det i?: Begge",20,200);
}
}

void keyPressed(){
 if(key == ' ' && Spiller == true){
   Spiller = false;
 } else if(key == ' ' && Spiller == false){
   Spiller = true;
 }
 if(key == '+'){
   højrevenstre = højrevenstre +1;
 }
 if(key == '-'){
   højrevenstre = højrevenstre -1;
 }
}
