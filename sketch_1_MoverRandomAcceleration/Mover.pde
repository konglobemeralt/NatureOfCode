class Mover {

  PVector position;
  PVector velocity;
  PVector acceleration;
  
  Mover(){
    position = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    
    acceleration = new PVector(-0.001, 0.01);
  }
  
  void update(){
    velocity.add(new PVector(random(0.5)-1, random(0.5)-1));
    position.add(velocity);
    velocity.limit(10);
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