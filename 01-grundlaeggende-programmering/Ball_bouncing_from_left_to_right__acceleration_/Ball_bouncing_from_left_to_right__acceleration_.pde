float x = 25;
float speed = 10;
float acceleration = 2;

void setup() {
  size(600, 400);
  noStroke();
  fill(179, 63, 64);
}

void draw() {
  background(255);
  ellipse(x, 200, 50, 50);
  x = x + speed;
  if (x > 575) {
    speed = -(abs(speed) + acceleration);
  }
  if (x < 25) {
    speed = abs(speed) + acceleration;
  }
}
