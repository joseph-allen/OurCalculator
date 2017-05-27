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
    String express = gui.expression.toString();
    
    // prevalidate expression
    // handles js comments being valid, also ** which would fail anyway
    if (express.matches("(.*)[*/][*/](.*)")) {
      gui.expression = new StringBuilder("Invalid Input");
      return;
    }
    // modify -- to +
    express = express.replaceAll("-{2}","+");
    // sqush ++... to +
    express = express.replaceAll("\\+{2,}","+");

    try {
      Object answer = engine.eval(express);
      gui.expression.delete(0, gui.expression.length());
      gui.expression.append(answer);
    } 
    catch(ScriptException e) {
      gui.expression = new StringBuilder("Invalid Input");
    }
  }
}