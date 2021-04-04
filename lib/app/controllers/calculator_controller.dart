import 'package:flutter/cupertino.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends ChangeNotifier {
  static CalculatorController instance = CalculatorController();

  String formula = '';
  String history = '';

  setFormula(value) {
    if (formula.length <= 38) {
      formula += value.toString();
      notifyListeners();
    }
  }

  deleteAll() {
    formula = '';
    history = '';
    notifyListeners();
  }

  delete() {
    formula = formula.substring(0, formula.length - 1);
    notifyListeners();
  }

  setPositiveNegative() {
    if (formula.substring(0, 1) == '-') {
      formula = formula.replaceAll('-', '');
    } else {
      formula = '- $formula';
    }
    notifyListeners();
  }

  result() {
    Parser p = new Parser();
    Expression exp = p.parse(formula.replaceAll('x', '*'));
    String expression = exp.toString().replaceAll(')', '').replaceAll('(', '');
    String result = exp.evaluate(EvaluationType.REAL, null).toString();
    formula = result;
    history = expression;
    notifyListeners();
  }
}
