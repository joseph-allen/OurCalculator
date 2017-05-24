Button onebutton = new Button(25, 200, "1");
Button twobutton = new Button(100, 200, "1");
Button threebutton = new Button(175, 200, "1");
Button fourbutton = new Button(25, 275, "1");
Button fivebutton = new Button(100, 275, "1");
Button sixbutton = new Button(175, 275, "1");
Button sevenbutton = new Button(25, 350, "1");
Button eightbutton = new Button(100, 350, "1");
Button ninebutton = new Button(175, 350, "1");

float answer; // Will hold previously computed answer.
ArrayList<Button> buttons; // Initialize in setup.

void setup(){
  size(375,600);
  onebutton.Display();
  twobutton.Display();
  threebutton.Display();
  fourbutton.Display();
  fivebutton.Display();
  sixbutton.Display();
  sevenbutton.Display();
  eightbutton.Display();
  ninebutton.Display();
}

void draw(){
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
