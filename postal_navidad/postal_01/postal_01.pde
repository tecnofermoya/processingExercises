int copo;

PImage fondo;
PImage sol;

void setup() {
  size(800, 600);
  fondo = loadImage("fondo.jpg");
  sol = loadImage("sun.jpeg");
  textSize(72);
}

void draw() {

  background(fondo);

  // Muñeco de nieve
  noStroke();
  fill(255);
  ellipse(width/2, height-60, 120, 120);
  ellipse(width/2, height-110, 100, 100);
  ellipse(width/2, height-160, 80, 80);

  fill(0);
  ellipse(width/2-20, height-170, 10, 10);
  ellipse(width/2+20, height-170, 10, 10);

  fill(255, 0, 0);
  triangle(width/2, height-160, width/2, height-150, width/2+30, height-155);

  // Copo de nieve
  stroke(255);
  strokeWeight(2);
  line(100, copo, 100, copo+20);
  line(90, copo+10, 110, copo+10);
  line(95, copo+5, 105, copo+15);
  line(95, copo+15, 105, copo+5);
  copo ++;
  
  // Sol
  image(sol,mouseX, 20, 100, 100);
  
  // Feliz año nuevo
  text("¡Feliz año nuevo!", 60, 80);
  
}

void keyReleased(){
  if (key==' '){
    copo = 0;
  }
}
