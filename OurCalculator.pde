float answer; // Will hold previously computed answer.
ArrayList<Button> buttons; // Initialize in setup.

void setup(){
  size(375,600);
  
  buttons = new ArrayList<Button>();
  buttons.add(new Button(25, 125, "0"));
  buttons.add(new Button(25, 200, "1"));
  buttons.add(new Button(100, 200, "2"));
  buttons.add(new Button(175, 200, "3"));
  buttons.add(new Button(25, 275, "4"));
  buttons.add(new Button(100, 275, "5"));
  buttons.add(new Button(175, 275, "6"));
  buttons.add(new Button(25, 350, "7"));
  buttons.add(new Button(100, 350, "8"));
  buttons.add(new Button(175, 350, "9"));

  buttons.add(new Button(25, 425, "+"));
  buttons.add(new Button(100, 425, "-"));
  buttons.add(new Button(175, 425, "*"));
  buttons.add(new Button(25, 500, "/"));
  buttons.add(new Button(100, 500, "="));
}

void draw(){
  for (Button b : buttons){
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