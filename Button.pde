class Button{
  int sizeX = 70;
  int sizeY = 50;
  float posX, posY;
  
  Button(float _posX, float _posY){
    posX = _posX;
    posY = _posY;
  
  }
  
  void Display(){
    fill(100);
    rect(posX,posY,sizeX,sizeY);
    
  }

}