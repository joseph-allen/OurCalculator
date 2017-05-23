class Button{
  int sizeX = 70;
  int sizeY = 50;
  float posX, posY;
  int textSize = 16;
  String label;

  Button(float _posX, float _posY, String _label){
    posX = _posX;
    posY = _posY;
    label = _label;
  }

  void Display(){
    fill(100);
    rect(posX,posY,sizeX,sizeY);
    textSize(textSize);
    textAlign(CENTER, CENTER);
    text(label, posX + sizeX / 2, posY + sizeY / 2);
  }

}