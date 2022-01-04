int x = 0;
int vx = 10;

void setup() {
  size(800, 600);
}

void draw() {
  
  pelota();
  
}

void pelota() {
  fill(0, 0, 0, 40);
  rect(0, 0, width, height);

  for (int i=0; i<3; i = i+1) {
    noStroke();
    fill(0, 255, 0);
    ellipse(x, 200*i, 50, 50);
  }

  x = x + vx;

  if (x>=width || x <= 0) {
    vx = vx * -1;
  }
}
