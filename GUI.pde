class GUI {

  ArrayList<Button> buttons;
  int padding = 5; //pixel padding for input from the right 
  SimpleText expression;
  String register = "";
  String operatorRegex;
  int gap;

  Button previousButton = null;

  GUI() {
    buttons = new ArrayList<Button>();
    createButtons();
    expression = new SimpleText();
  }  

  void render() {
    fill(255);
    textAlign(LEFT, CENTER);
    String expString = expression.getDisplayString();
    text(expString, width-textWidth(expString+" "), gap/2);
    // add a little M if there is a value in memory
    textSize(15);
    if (!register.equals("")) text("M", 5, gap-15);
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
    return selectedButton;
  }

  void action(String value) {
    switch (value) {
    case "=" :
      expression.set(calc.evaluate(expression.getText()));
      break;
    case "del" : 
      expression.del(); 
      break;
    case "clear":
      expression.clear();
      break;
    case "M":
      String temp = expression.toString();
      if (isNumber(temp) || temp.equals("")) {
        expression.set(register);
        register = temp.toString();
      }
      break;
    case "c":
      register = "";
      break;
    default: 
      // if value is a digit, bracket or decimal and expression was evaluated, clear the expression to enter a new one.
      if (!isOperator(value) && previousButton!=null && previousButton.label.equals("=")) {
        expression.clear();
      } 
      expression.append(value);
    }
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
    operatorRegex = "[-+\\/\\*]";
    for (int i=1; i<=5; i++)
      buttons.add(new Button(width-gap, height-gap*i, operators[i-1]));

    //clear button for future
    buttons.add(  new Button(0, gap, "M"  ).setDim(50, 50).setFontSize(15)       );
    buttons.add(  new Button(50, gap, "c"  ).setDim(50, 50).setFontSize(15)       );
    buttons.add(  new Button(0, gap+50, "clear").setDim(100, 50)  );
    buttons.add(new Button(gap, gap, "("));
    buttons.add(new Button(gap*2, gap, ")"));
    buttons.add(new Button(gap*2, height-gap, "."));
    buttons.add(new Button(0, height-gap, "del"));
  }

  void mousePressed() {
    Button selected = getSelectedButton();
    if (selected != null) action(selected.label);
  }

  boolean isOperator(String test) {
    return test.matches(operatorRegex);
  }
  boolean isNumber(String test) {
    try {
      Float.parseFloat(test);
      return true;
    } 
    catch (Exception e) {
      return false;
    }
  }
}