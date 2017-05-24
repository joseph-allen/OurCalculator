<<<<<<< HEAD

Button onebutton; //Buttons initialized in setup, then added to ArrayList
Button twobutton;
Button threebutton;
Button fourbutton;
Button fivebutton;
Button sixbutton;
Button sevenbutton;
Button eightbutton;
Button ninebutton;
Button zerobutton;

float answer; // Will hold previously computed answer.
ArrayList<Button> buttons; // Initialize in setup.

void setup(){
  size(375,600);
 
  buttons = new ArrayList<Button>(); //ArrayList initialize
  
  onebutton = new Button(25, 200, "1");
  twobutton = new Button(100, 200, "2");
  threebutton = new Button(175, 200, "3");
  fourbutton = new Button(25, 275, "4");
  fivebutton = new Button(100, 275, "5");
  sixbutton = new Button(175, 275, "6");
  sevenbutton = new Button(25, 350, "7");
  eightbutton = new Button(100, 350, "8");
  ninebutton = new Button(175, 350, "9");
  zerobutton = new Button(100, 425, "0");
  
  buttons.add(onebutton);
  buttons.add(twobutton);
  buttons.add(threebutton);
  buttons.add(fourbutton);
  buttons.add(fivebutton);
  buttons.add(sixbutton);
  buttons.add(sevenbutton);
  buttons.add(eightbutton);
  buttons.add(ninebutton);
  buttons.add(zerobutton);

}

void draw(){
  background(255);
  for(Button b: buttons){
    b.Display();
  }
}

//MATH FUNCTIONS BELOW
float add(float a, float b){
	return a+b;
}

float subtract(float a, float b){
	return a-b;
}

float multiply(float a, float b){
	return a*b;
}

float divide(float a, float b){
	if (b != 0) {
		return a/b;
	} else {
		throw new ArithmeticException("Cannot divide by zero");
  }
}

// Returns true if the character is either a digit or the '.' period character.
boolean isNumericChar(String s){
  return s.matches("[0-9\\.]") && s.length() == 1;
}

void mouseClicked(){
  // Search for the button that was pressed.
  Button pressed = null;
  for (Button b : buttons){
    if (b.clicked()){
      pressed = b;
      break;
    }
  }
  
  // If no button was pressed, exit function.
  if (pressed == null)
    return;
  
  switch (pressed.label){
    case "+":
      // Handle addition button here...
      return;
    case "-":
      // Handle subtraction button here...
      return;
    case "*":
      // Handle multiplication button here...
      return;
    case "/":
      // Handle division button here...
      return;
    default:
      if (!isNumericChar(pressed.label)){
        println("The button pressed does not have a supported label!");
      }
      //
      // Handle number buttons here...
      //
      return;
  }
}
=======
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
>>>>>>> joezcool02/master
