import java.util.Random;

Random generator;

void setup() {
  size(640, 420);
  background(100);
  generator = new Random();
}

float getGaussian(){
  return (float) generator.nextGaussian();
}

void draw() {
  
  float sd = 65;
  float mean = 340;
  
  float x = sd * getGaussian() + mean;
  float y = sd * getGaussian() + mean;
  
  noStroke();
  fill(255, 10);
  ellipse(x, y, 16, 16);
}