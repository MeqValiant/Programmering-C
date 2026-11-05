class Circle {
  float x, y, s;
  
  Circle(float tempX, float tempY, float tempS) {
    x = tempX;
    y = tempY;
    s = tempS;
  }
}
ArrayList<Circle> circles;
void setup() {
  size(600, 400);
  background(255);
  circles = new ArrayList<Circle>();
}
void draw() {
  fill(179, 63, 64);
  noStroke();
  float newX = random(width);
  float newY = random(height);
  float newS = random(5, 25);
  
  boolean overlapping = false;
  
  for (Circle c : circles) {
    float d = dist(newX, newY, c.x, c.y);
    if (d < (newS/2 + c.s/2)) {
      overlapping = true;
    }
  }
  
  if (!overlapping) {
    circles.add(new Circle(newX, newY, newS));
  }
  
  for (Circle c : circles) {
    ellipse(c.x, c.y, c.s, c.s);
  }
}
