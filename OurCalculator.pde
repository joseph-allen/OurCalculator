

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

class Calculator{
  float answer; // Will hold previously computed answer.
  ArrayList<Button> buttons; // Holds the calculator's buttons.
  
  // Constructor
  Calculator(){
    answer = 0f;
    buttons = new ArrayList<Button>();
    // Button initialization code here.
    // ...
  }
  
  // Call this function from `mouseClicked`.
  void buttonClicked(){
    
    Button pressed; // Stores the button that was pressed.
    for (Button b : buttons){
      if (b.clicked()){
        pressed = b;
        break;
      }
    }
    
    // TODO: Not sure what to do once an operation has been selected...
    if (pressed.label.equals("+")){
      
    } else if (pressed.label.equals("-")){
      
    } else if (pressed.label.equals("/")){
      
    } else if (pressed.label.equals("*")){
      
    } else if (pressed.label.equals("=")){
      
    } else {
      try {
        int number = Integer.parseInt(pressed.label);
      } catch (NumberFormatException e) {
        println("Error: Argument '" + pressed.label + "' to Button.performAction is not supported.");
        throw e;
      }
      
      // TODO: Implement inserting individual digits into some kind of temp buffer.
    }
  }
  
}