void setup() {
  size(800, 600);
}

void draw() {
  fill(0, 0, 0, 40);
  rect(0, 0, width, height);
  fill(0,255,0);
  noStroke();
  ellipse(mouseX, mouseY, 50, 50);
}
