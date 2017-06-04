import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

import java.math.BigDecimal;
import java.math.MathContext;

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
    
    exp = exp.replaceAll("(?<!\\d)0+(?=\\d+)", "");
    exp = exp.replaceAll("-{2}", "+"); // modify -- to +
    exp = exp.replaceAll("\\+{2,}", "+"); // reduce ++... to +

    try {
      Object answer = engine.eval(exp);

      if (answer == null) {
        gui.expression = new StringBuilder("Invalid Input");
        return;
      }
          
      if (answer.toString().length() > 14) {
        BigDecimal bd = new BigDecimal(answer.toString());
        bd = bd.round(new MathContext(14));
        answer = bd;
      }

      gui.expression.delete(0, gui.expression.length());
      gui.expression.append(answer);
    } 
    catch(ScriptException e) {
      gui.expression = new StringBuilder("Invalid Input");
    }
  }
}