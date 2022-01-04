int x = 0;
int vx = 10;

void setup() {
  size(800, 600);
}

void draw() {
  fill(0, 0, 0, 40);
  rect(0, 0, width, height);
  fill(0, 255, 0);
  
  noStroke();
  ellipse(x, height/2, 50, 50);
  
  x = x + vx;
  
  if (x>=width || x <= 0){
    vx = vx * -1;
  }
  
}
