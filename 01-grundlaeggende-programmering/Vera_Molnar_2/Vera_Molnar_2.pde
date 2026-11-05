boolean tjekalt1 = false;
boolean tjekalt2 = false;
boolean tjekalt3 = false;
int switchnum = int(random(1, 26));

void setup() {
  size(800, 800);
  background(91, 165, 222);
  noFill();
  strokeWeight(7);
  stroke(150, 50, 50);
}

void draw() {
}

void keyPressed() {
  if (key == ' ') {
    background(20, 20, 255);
    for (int y = 10; y<height; y+=160) {
      for (int x = 10; x<width; x+=160) {
        strokeWeight(7);
        switchnum = int(random(1, 26));
        if (switchnum<=22) {
          rect(x, y, 140, 140);
          rect(x+15, y+15, 110, 110);
          rect(x+30, y+30, 80, 80);
          rect(x+45, y+45, 50, 50);
          rect(x+60, y+60, 20, 20);
        } else if (switchnum==23 && tjekalt1 == false) {
          rect(x, y, 140, 140);
          rect(x+15, y+15, 110, 110);
          rect(x+30, y+30, 80, 80);
          rect(x+45, y+45, 50, 50);
          rect(x+60, y+60, 20, 20);
          fill(150, 50, 50);
          rect(x+60, y+60, 20, 20);
          noFill();
          tjekalt1 = true;
        } else if (switchnum==24 && tjekalt2 == false) {
          rect(x+15, y+15, 110, 110);
          rect(x+30, y+30, 80, 80);
          rect(x+45, y+45, 50, 50);
          rect(x+60, y+60, 20, 20);
          tjekalt2 = true;
        } else if (switchnum==25 && tjekalt3 == false) {
          rect(x, y, 140, 140);
          rect(x+15, y+15, 110, 110);
          rect(x+30, y+30, 80, 80);
          strokeWeight(10);
          rect(x+45, y+45, 50, 50);
          rect(x+60, y+60, 20, 20);
          tjekalt3 = true;
        } else if (switchnum <= 23 && tjekalt1 == true || tjekalt2 == true || tjekalt3 == true) {
          rect(x, y, 140, 140);
          rect(x+15, y+15, 110, 110);
          rect(x+30, y+30, 80, 80);
          rect(x+45, y+45, 50, 50);
          rect(x+60, y+60, 20, 20);
        }
      }
    }
    tjekalt1 = false;
    tjekalt2 = false;
    tjekalt3 = false;
  }
}
