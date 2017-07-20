import java.util.Random;
Random generator;

class Walker {
  int x,y;

  Walker() {
    generator = new Random();
    x = width/2;
    y = height/2;
  }

  void render() {
    stroke(0);
    point(x,y);
  }

  // Randomly move up, down, left, right, or stay in one place
  void step() {
    
    float stepx = random(-1, 1);
    float stepy = random(-1, 1);
    
    float stepsize = montecarlo()*50;
    
    x += stepx * stepsize;
    y += stepy * stepsize;
    
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