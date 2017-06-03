GUI gui;
Calculator calc;

void setup() {
  size(400, 600);
  gui = new GUI();
  calc = new Calculator(gui); //create a new calc linked with this gui
}

void draw() {
  background(80);
  gui.render();
}

void mousePressed() {
  Button selected = gui.getSelectedButton();

  if (selected != null) {
    if (selected.label == "=") {
      calc.evaluate();
    }
  }
}