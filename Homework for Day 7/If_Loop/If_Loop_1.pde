float y = 100;
int a;
int b;
int c;
 
// Click the mouse button to see the animation
void setup() {
  size(500, 500); 
  a=(int)random(244);
  b=(int)random(244);
  c=(int)random(255);
  
  stroke(a, b, c);
  noLoop();
  
  y = height * 0.5;
}


void draw() { 
  background(0);
  line(0, y, width, y);  
  
  y = y - 1; 
  if (y < 0) { 
    y = height; 
  } 
} 

void mousePressed() {
  loop();
}