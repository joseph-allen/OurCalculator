
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