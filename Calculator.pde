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
      Object answer = engine.eval(gui.expression.toString());
      gui.expression.delete(0, gui.expression.length());
      gui.expression.append(answer);
    } 
    catch(ScriptException e) {
      gui.expression = new StringBuilder("Invalid Input");
    }
  }
}