class Walker {
  float x,y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void render() {
    stroke(0);
    point(x,y);
  }

  void step() {
    
    float stepx = random(-1, 1);
    float stepy = random(-1, 1);
    x += stepx;
    y += stepy;
  }
}