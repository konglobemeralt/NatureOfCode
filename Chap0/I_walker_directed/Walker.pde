class Walker {
  int x,y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void render() {
    stroke(0);
    point(x,y);
  }

  // Randomly move up, down, left, right, or stay in one place
  void step() {
    
    float stepx = random(-0.5, 1.5);
    float stepy = random(-0.5, 1.5);
    x += stepx;
    y += stepy;
  }
}