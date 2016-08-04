int a;
int b;
int c;

void draw() {
  a = (int) random(200);
  b = (int) random(200);
  c = (int) random(200);
  
  
  if (mousePressed == true) {
    fill(a, b, c);
  } else {
    fill(255);
  }
  rect(25, 25, 50, 50);
}