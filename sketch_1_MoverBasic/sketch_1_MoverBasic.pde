void setup(){
  size(640, 360);
  Mover = new Mover();
}

void draw(){
  background(255);
  
  mover.update();
  mover.checkEdges();
  
}