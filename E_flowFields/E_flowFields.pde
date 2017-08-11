import java.util.Random;

Random generator;

void setup() {
  size(640, 420);
  background(120);
  generator = new Random();
}

void draw() {
  float num = (float) generator.nextGaussian();
  float sd = 65;
  float mean = 340;
  
  float x = sd * num + mean;
  noStroke();
  fill(255, 10);
  ellipse(x, 180, 16, 16);
}