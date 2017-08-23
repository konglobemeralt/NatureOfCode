class Walker {
  float x,y;
  float tx, ty;
  
  Walker() {
    tx = 0;
    ty = 10000;
  }

  void render() {
    stroke(0);
    point(x,y);
  }

  // Randomly move up, down, left, right, or stay in one place
  void step() {
    
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);
   
    tx += 0.01;
    ty += 0.01;
   
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
}

float montecarlo(){
  while(true){
    float r1 = random(1);
    float probabilty = pow(1.0 - r1,8);
    
    float r2 = random(1);
    if(r2 < probabilty){
      return r1;
    }
  }
}