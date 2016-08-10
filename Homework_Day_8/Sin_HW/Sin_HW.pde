float[] a = new float[30];
float[] b = new float[30];
float s = 23;
int p;
int q;
int r;

void setup() {
  size(640, 360);
  strokeWeight(25);
  p = (int)random(254);
  q = (int)random(254);
  r = (int)random(0);
  stroke(p, q, r);
}

void draw() {
  background(255);
  dragSegment(0, mouseX, mouseY);
  }

void dragSegment(int i, float ain, float bin) {
  float angle = 0.2*mouseX;  
  a[i] = ain - cos(angle) * s;
  b[i] = bin - sin(angle) * s;
  segment(a[i], b[i], angle);
}

void segment(float a, float b, float s) {
  translate(a, b);
  pushMatrix();
  popMatrix();
  
  rotate(a/2);
  line(0, 0, s, 0);
  
}