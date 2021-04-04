import 'package:calculator/app/controllers/calculator_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  // ignore: missing_return
  await testWidgets('Sum test', (WidgetTester tester) async {
    await CalculatorController.instance.setFormula('1+1');
    await CalculatorController.instance.result();
    expect(CalculatorController.instance.formula, equals('2.0'));
  });
  await testWidgets('Minus test', (WidgetTester tester) async {
    await CalculatorController.instance.deleteAll();
    await CalculatorController.instance.setFormula('1-1');
    await CalculatorController.instance.result();
    expect(CalculatorController.instance.formula, equals('0.0'));
  });

  await testWidgets('Multiplication test', (WidgetTester tester) async {
    await CalculatorController.instance.deleteAll();
    await CalculatorController.instance.setFormula('1x1');
    await CalculatorController.instance.result();
    expect(CalculatorController.instance.formula, equals('1.0'));
  });
  await testWidgets('Division test', (WidgetTester tester) async {
    await CalculatorController.instance.deleteAll();
    await CalculatorController.instance.setFormula('2/2');
    await CalculatorController.instance.result();
    expect(CalculatorController.instance.formula, equals('1.0'));
  });
  await testWidgets('Percent test', (WidgetTester tester) async {
    await CalculatorController.instance.deleteAll();
    await CalculatorController.instance.setFormula('1%10');
    await CalculatorController.instance.result();
    expect(CalculatorController.instance.formula, equals('1.0'));
  });
}
