class PVector {
  float x;
  float y;
  
  PVector(float x_, float y_){
    x = x_;
    y = y_;
  }
  
  void add(PVector v){
    y = y + v.y;
    x = x + v.x;
  }
  
  void sub(PVector v){
    x = x - v.x;
    y = y - v.y;
  }
  
  void mul(float n){
    x = x * n;
    y = y * n;
  }
  
  void div(float n){
    x = x / n;
    y = y / n;
  }
}