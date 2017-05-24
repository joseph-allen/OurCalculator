float answer; // Will hold previously computed answer.
ArrayList<Button> buttons; // Initialize in setup.

void setup(){}

void draw(){}

//Issue 1 Write Add function BELOW+++++++++++++++++++++++++++++++++++++++++++++++++
float add(float a, float b) {
	return a + b;
}
//Issue 1---------------------------------------------------------------------------

//Issue 2 Write Multiply function BELOW+++++++++++++++++++++++++++++++++++++++++++++++++
float multiply(float a, float b){
  return a*b;
}
//Issue 2---------------------------------------------------------------------------

//Issue 10: Subtract function
float subtract(float a, float b){
  return a-b;
}
//Issue 10--------------------------------------------------------------------------

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