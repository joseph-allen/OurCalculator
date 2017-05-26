import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

class Calculator {

  GUI gui;
  ScriptEngine engine;

  Calculator(GUI g) {
    gui = g;
    engine = (new ScriptEngineManager()).getEngineByName("js");
  }

  void evaluate() {
    try {
      Object answer = engine.eval(validator(gui.expression.toString()));
      gui.expression.delete(0, gui.expression.length());
      gui.expression.append(answer);
    } 
    catch(ScriptException e) {
      gui.expression = new StringBuilder("Invalid Input");
    }
  }
  
  String validator(String input) throws ScriptException {
    // handles js comments being valid, also ** which would fail anyway
    if (input.matches("(.*)[*/][*/](.*)")) throw new ScriptException(new UnsupportedOperationException());
    // -- to +
    input = input.replaceAll("-{2}","+");
    // squish ++ to +
    input = input.replaceAll("\\+{2,}","+");
    
    return input;
  }
}