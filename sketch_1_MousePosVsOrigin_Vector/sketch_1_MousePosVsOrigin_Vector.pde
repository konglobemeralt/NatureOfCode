PVector location = new PVector(100, 100);
PVector velocity = new PVector(1,3.3);

void setup() {
  size(640, 360);
  background(255);
}

void draw() {
  background(255);
  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width/2, height/2);
  
  mouse.sub(center);
  mouse.mul(0.5);
  translate(width/2, height/2);
  line(0, 0, mouse.x, mouse.y);
}