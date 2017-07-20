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
    
    float stepx = random(-1, 1) * (float) generator.nextGaussian();
    float stepy = random(-1, 1) * (float) generator.nextGaussian();
    x += stepx;
    y += stepy;
  }
}