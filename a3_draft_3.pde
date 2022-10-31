int dim;

void setup() {
  size(800, 560);
  dim = width/5;
  background(-1);
  colorMode(HSB, 400, 250, 100, 150);
  noStroke();
  ellipseMode(RADIUS);
  frameRate (1);
}

void draw() {
  background(-1);
  for (int x = 0; x <= width; x+=dim) {
    drawGradient(x, height/3);
    drawGradient (x, height/2);
    drawGradient (x, height/1.5);
  }
}

void drawGradient(float x, float y) {
  int radius = dim/2;
  float h = random(0, 360);
  for (int r = radius; r > 0; --r) {
    fill(h, 90, 90);
    ellipse(x, y, r, r);
    h = (h + 1) % 360;
  }
}
void keyPressed(){
  colorMode(HSB, 200, 150, 70, 50);
  frameRate (5);
}
void mousePressed (){
    dim = width/2;
}
