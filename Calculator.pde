import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

class Calculator {

  GUI gui;

  Calculator(GUI g) {
    gui = g;
  }

  void evaluate() {
    ScriptEngineManager manager = new ScriptEngineManager();
    ScriptEngine engine = manager.getEngineByName("js");

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