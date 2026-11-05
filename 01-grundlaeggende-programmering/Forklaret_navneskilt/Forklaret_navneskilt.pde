PFont f;

void setup() {
 //Dette her sætter størrelsen og farven af baggrunden
 size(400,400); //Størrelse af baggrund
 background(0); //Farve af baggrund
 //Dette er fonten til mit navneskilt
 f = createFont("Times New Roman", 32); //Font af tekst
 textFont(f);
}

void draw() { //Grunden til at cirkelerne og teksten er placeret her er pga vi skal opdatere for at se om cirkelerne overlapper teksten
  fill(0,0,0); // Farven af understregen
  rect(20,260,360,10); // Rectangel som fungere som understreg
  //Dette er farven af de cirkeler der spawner ved min mus og cirkel størrelsen
  fill(255,0,255); //farven af cirkelerne der spawner
  ellipse(mouseX,mouseY,50,50); //størrelse og lokation af spawns sat til mussen
// Det her er tekst størrelsen, farven og lokationen af min tekst, og teksten selv
  fill(0,0,0); //farven af teksten
  textSize(128); //tekstens størrelse
  textAlign(CENTER,CENTER); //tekstens lokation
  text("Marcus",200,200); //teksten selv
}
