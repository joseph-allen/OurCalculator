class GUI {

  ArrayList<Button> buttons;
  int padding = 5; //pixel padding for input from the right 
  StringBuilder expression;
  int gap;

  GUI() {
    buttons = new ArrayList<Button>();
    expression = new StringBuilder();
    createButtons();
  }  

  void render() {
    fill(255);
    textAlign(LEFT, CENTER);
    text(expression.toString(), width-textWidth(expression.toString()+padding), gap/2);

    for (Button b : buttons) {
      b.display();
    }
  }

  Button getSelectedButton() {
    Button selectedButton = null;

    for (Button b : buttons) {
      if (b.clicked()) {
        selectedButton = b;
        selectedButton.flash();
        break;
      }
    }
    if (selectedButton != null) {
      if (selectedButton.label == "=") {
        return selectedButton;
      } else if (selectedButton.label == "clear") {
        expression.delete(0, expression.length());
      } 
      else if(selectedButton.label == "del") {
        expression.deleteCharAt(expression.length()-1);
      }
      else {
        expression.append(selectedButton.label);
      }
    }
    return selectedButton;
  }

  void createButtons() {
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

    buttons.add(new Button(gap, gap, "("));
    buttons.add(new Button(gap*2, gap, ")"));
    buttons.add(new Button(gap*2, height-gap, "."));
    buttons.add(new Button(0, height-gap, "del"));
  }
}