import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

class Calculator {

  GUI gui;
  ScriptEngine engine;
  ScriptEngineManager manager;

  Calculator(GUI g) {
    gui = g;
    manager = new ScriptEngineManager();
    engine = manager.getEngineByName("js");
  }

  void evaluate() {
    String exp = gui.expression.toString();

    exp = exp.replaceAll("-{2}", "+"); // modify -- to +
    exp = exp.replaceAll("\\+{2,}", "+"); // reduce ++... to +

    try {
      Object answer = engine.eval(exp);

      if (answer == null) {
        gui.expression = new StringBuilder("Invalid Input");
        return;
      }

      gui.expression.delete(0, gui.expression.length());
      gui.expression.append(answer);
    } 
    catch(ScriptException e) {
      gui.expression = new StringBuilder("Invalid Input");
    }
  }
}