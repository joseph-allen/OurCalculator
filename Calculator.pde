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

  Object evaluate(StringBuilder input) {
    String exp = input.toString();

    exp = exp.replaceAll("(?<!\\d|\\.)0+(?=\\d+)", "");
    exp = exp.replaceAll("-{2}", "+"); // modify -- to +
    exp = exp.replaceAll("\\+{2,}", "+"); // reduce ++... to +

    try {
      Object answer = engine.eval(exp);

      if (answer == null) {
        return "Invalid Input";
      }

      if (answer.toString().length() > 14) {
        BigDecimal bd = new BigDecimal(answer.toString());
        bd = bd.round(new MathContext(14));
        answer = bd;
      }
      return answer;
      //gui.expression.delete(0, gui.expression.length());
      //gui.expression.append(answer);
    } 
    catch(ScriptException e) {
      return "Invalid Input";
    }
  }
}