class Mover {

  PVector position;
  PVector velocity;
  PVector acceleration;
  
  float topSpeed;
  
  Mover(){
    position = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    topSpeed = 5;
  
  }
  
  void update(){
    PVector mouse = new PVector(mouseX, mouseY);
    PVector acceleration = PVector.sub(mouse, position);
    
    acceleration.setMag(0.2);
    velocity.add(acceleration);
    velocity.limit(topSpeed);
    position.add(velocity);
  }
  
  void display(){
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(position.x, position.y, 48, 48);
  }
  
  void checkEdges(){
    if(position.x > width) {
      position.x = 0;
    }
    else if(position.x < 0){
      position.x = width;
    }
    
    
    if(position.y > height) {
      position.y = 0;
    }
    else if(position.y < 0){
      position.y = height;
    }
  }
}