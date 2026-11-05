PFont font;
String navn = "Marcus";
float navnX = 140;
float navnY = 150;

float nodeX = 285;
float nodeY = 120;
float nodebredde = 350;
float nodehøjde = 150;

color sort = color(0,0,0);
color grøn = color(0,255,0);
color gul = color(255,255,0);
color pink = color(255,0,255);

// Sej ninja stjerne forkortet til ns (dine eksisterende variabler)
float ns300 = 300;
float ns550 = 550;
float ns270 = 270;
float ns150 = 150;
float ns50 = 50;
float ns330 = 330;
float ns450 = 450;

void setup(){
  size(600,600);
  background(pink);

  font = createFont("Times New Roman", 100);

  // Tegner den grønne ellipse i toppen
  fill(grøn);
  noStroke(); 
  ellipse(nodeX, nodeY, nodebredde, nodehøjde);

  // Tegner dit navn henover ellipsen
  fill(sort);
  textFont(font);
  text(navn, navnX, navnY);
  
  // ==========================================
  // 4 MINDRE NINJA-STJERNER UDEN OVERLAP
  // ==========================================
  fill(gul);     
  stroke(sort);  
  strokeWeight(2);
  
  // Stjerne 1 (Venstre side)
  quad(100, 280,  90, 240, 100, 210, 110, 240); // Top-blad
  quad(100, 280, 140, 270, 170, 280, 140, 290); // Højre-blad
  quad(100, 280, 110, 320, 100, 350,  90, 320); // Bund-blad
  quad(100, 280,  60, 290,  30, 280,  60, 270); // Venstre-blad

  // Stjerne 2 (Midt-Venstre side)
  quad(230, 340, 220, 300, 230, 270, 240, 300); // Top-blad
  quad(230, 340, 270, 330, 300, 340, 270, 350); // Højre-blad
  quad(230, 340, 240, 380, 230, 410, 220, 380); // Bund-blad
  quad(230, 340, 190, 350, 160, 340, 190, 330); // Venstre-blad

  // Stjerne 3 (Midt-Højre side)
  quad(370, 270, 360, 230, 370, 200, 380, 230); // Top-blad
  quad(370, 270, 410, 260, 440, 270, 410, 280); // Højre-blad (Rettet Y fra 270 til 280)
  quad(370, 270, 380, 310, 370, 340, 360, 310); // Bund-blad
  quad(370, 270, 330, 280, 300, 270, 330, 260); // Venstre-blad (Rettet Y fra 270 til 280)

  // Stjerne 4 (Højre side)
  quad(500, 310, 490, 270, 500, 240, 510, 270); // Top-blad
  quad(500, 310, 540, 300, 570, 310, 540, 320); // Højre-blad
  quad(500, 310, 510, 350, 500, 380, 490, 350); // Bund-blad
  quad(500, 310, 460, 320, 430, 310, 460, 300); // Venstre-blad
}
