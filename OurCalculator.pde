float answer; // Will hold previously computed answer.

ArrayList<Button> buttons;

int gap;

void setup() {

  size(400, 600);

  buttons = new ArrayList<Button>();

  //adding zero
  Button zero = new Button(width/4, height-100, "0");
  buttons.add(zero);
  gap = zero.sizeY;

  //adding 1-9
  int number = 1;
  for (int i=1; i<=3; i++) {
    for (int j=0; j<3; j++) {
      buttons.add(new Button((j*gap), height-((i+1)*gap), String.valueOf(number)));
      number++;
    }
  }  
  //other arithmetic buttons
  String[] operators = {"=", "-", "+", "/", "*"}; 
  for (int i=1; i<=5; i++)
    buttons.add(new Button(width-gap, height-gap*i, operators[i-1]));

  //clear button for future
  buttons.add(new Button(0, gap, "clear"));
}
void draw() {
  for (Button b : buttons) {
    b.display();
  }
}

//MATH FUNCTIONS BELOW
float add(float a, float b) {
  return a+b;
}

float subtract(float a, float b) {
  return a-b;
}

float multiply(float a, float b) {
  return a*b;
}

float divide(float a, float b) {
  if (b != 0) {
    return a/b;
  } else {
    throw new ArithmeticException("Cannot divide by zero");
  }
}