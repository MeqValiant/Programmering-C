void setup() {
  size(600, 400);
}

void draw() {
  background(235);

  if (mouseX < 300 && mouseY < 200) {
    fill(70, 130, 230);
  } else if (mouseX > 300 && mouseY < 200) {
    fill(70, 190, 110);
  } else if (mouseX < 300 && mouseY > 200){
    fill(240, 150, 60);
  } else if (mouseX > 300 && mouseY > 200){
    fill(255, 192, 203);
  }

  ellipse(mouseX, mouseY, 60, 60);
}
