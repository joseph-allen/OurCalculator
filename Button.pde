class Button {
  int sizeX = 100;
  int sizeY = 100;
  float posX, posY;
  int fontSize = 38;
  String label;
  final color BRIGHT = color(255,0,0),
              DARK   = color(100,0,100);
  color textColor, bgColor;

  Button(float _posX, float _posY, String _label) {
    posX = _posX;
    posY = _posY;
    label = _label;
    bgColor = DARK;
    textColor = BRIGHT;
  }

  void display() {
    fill(bgColor);
    stroke(150);
    rect(posX, posY, sizeX, sizeY);
    textSize(fontSize);
    textAlign(CENTER, CENTER);
    fill(textColor);
    text(label, posX + sizeX / 2, posY + sizeY / 2);
  } 
  // Returns true if mouse is pressed and mouse is inside button.
  boolean clicked() {
    return (mouseX > posX && mouseX < posX + sizeX) &&
      (mouseY > posY && mouseY < posY + sizeY) &&
      mousePressed;
  }
}