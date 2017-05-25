GUI gui;

void setup() {
  size(400, 600);
  gui = new GUI();
}

void draw() {
  background(80);
  gui.render();
}

void mousePressed() {
  gui.updateAction();
}