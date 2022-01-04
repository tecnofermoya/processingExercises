int x;
int vx;
int estado;

void setup() {
  size(800, 600);
  x = 0;
  vx = 10;
  estado = 0;
}

void draw() {

  switch(estado) {
  case 0:
    background(255, 0, 0);
    break;

  case 1:
    pelota();
    break;
  }
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

  if (x >= width || x <= 0) {
    vx = vx * -1;
  }
}

void keyReleased() {
  if (key=='a') {
    estado = 0;
  }
  if (key=='b') {
    estado = 1;
  }
}
