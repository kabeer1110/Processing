int a;
int i;

void setup(){
  size(640, 360);
    background(255);
}

  void draw(){
    a = (int)random(350);
    i = (int)random(100); 
  for(i = 10; i < width; i += 10) {
  if((i % 20) == 0) {
    stroke(200);
    line(i, 80, i, a);
  } else {
    stroke(153);
    line(i, 20, i, 180); 
  }
}
  }