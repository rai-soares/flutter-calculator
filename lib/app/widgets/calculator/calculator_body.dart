import 'package:flutter/material.dart';
import 'calculator_button.dart';
import '../../controllers/app_controller.dart';
import '../../controllers/calculator_controller.dart';

class CalculatorBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CalculatorButton(
                textColor: AppController.instance.isDarkTheme
                    ? Colors.white
                    : Colors.black87,
                backgroundColor: AppController.instance.isDarkTheme
                    ? Color.fromRGBO(108, 128, 126, 1)
                    : Colors.transparent,
                text: 'AC',
                onTap: () {
                  CalculatorController.instance.deleteAll();
                },
              ),
              CalculatorButton(
                textColor: AppController.instance.isDarkTheme
                    ? Colors.white
                    : Colors.black87,
                backgroundColor: AppController.instance.isDarkTheme
                    ? Color.fromRGBO(108, 128, 126, 1)
                    : Colors.transparent,
                text: 'DEL',
                onTap: () {
                  CalculatorController.instance.delete();
                },
              ),
              CalculatorButton(
                textColor: Color.fromRGBO(0, 150, 135, 1),
                backgroundColor: AppController.instance.isDarkTheme
                    ? Colors.white
                    : Colors.transparent,
                text: '%',
                onTap: () {
                  CalculatorController.instance.setFormula('%');
                },
              ),
              CalculatorButton(
                textColor: Color.fromRGBO(0, 150, 135, 1),
                backgroundColor: AppController.instance.isDarkTheme
                    ? Colors.white
                    : Colors.transparent,
                text: '/',
                onTap: () {
                  CalculatorController.instance.setFormula('/');
                },
              ),
            ],
          ),
          Container(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CalculatorButton(
                backgroundColor: Colors.transparent,
                textColor: AppController.instance.isDarkTheme
                    ? Colors.white
                    : Colors.black54,
                text: '7',
                onTap: () {
                  CalculatorController.instance.setFormula(7);
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.transparent,
                textColor: AppController.instance.isDarkTheme
                    ? Colors.white
                    : Colors.black54,
                text: '8',
                onTap: () {
                  CalculatorController.instance.setFormula(8);
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.transparent,
                textColor: AppController.instance.isDarkTheme
                    ? Colors.white
                    : Colors.black54,
                text: '9',
                onTap: () {
                  CalculatorController.instance.setFormula(9);
                },
              ),
              CalculatorButton(
                textColor: Color.fromRGBO(0, 150, 135, 1),
                backgroundColor: Colors.white,
                text: 'X',
                onTap: () {
                  CalculatorController.instance.setFormula('x');
                },
              ),
            ],
          ),
          Container(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CalculatorButton(
                backgroundColor: Colors.transparent,
                textColor: AppController.instance.isDarkTheme
                    ? Colors.white
                    : Colors.black54,
                text: '4',
                onTap: () {
                  CalculatorController.instance.setFormula(4);
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.transparent,
                textColor: AppController.instance.isDarkTheme
                    ? Colors.white
                    : Colors.black54,
                text: '5',
                onTap: () {
                  CalculatorController.instance.setFormula(5);
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.transparent,
                textColor: AppController.instance.isDarkTheme
                    ? Colors.white
                    : Colors.black54,
                text: '6',
                onTap: () {
                  CalculatorController.instance.setFormula(6);
                },
              ),
              CalculatorButton(
                textColor: Color.fromRGBO(0, 150, 135, 1),
                backgroundColor: Colors.white,
                text: '-',
                onTap: () {
                  CalculatorController.instance.setFormula('-');
                },
              ),
            ],
          ),
          Container(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CalculatorButton(
                backgroundColor: Colors.transparent,
                textColor: AppController.instance.isDarkTheme
                    ? Colors.white
                    : Colors.black54,
                text: '1',
                onTap: () {
                  CalculatorController.instance.setFormula(1);
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.transparent,
                textColor: AppController.instance.isDarkTheme
                    ? Colors.white
                    : Colors.black54,
                text: '2',
                onTap: () {
                  CalculatorController.instance.setFormula(2);
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.transparent,
                textColor: AppController.instance.isDarkTheme
                    ? Colors.white
                    : Colors.black54,
                text: '3',
                onTap: () {
                  CalculatorController.instance.setFormula(3);
                },
              ),
              CalculatorButton(
                textColor: Color.fromRGBO(0, 150, 135, 1),
                backgroundColor: Colors.white,
                text: '+',
                onTap: () {
                  CalculatorController.instance.setFormula('+');
                },
              ),
            ],
          ),
          Container(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CalculatorButton(
                backgroundColor: Colors.transparent,
                textColor: AppController.instance.isDarkTheme
                    ? Colors.white
                    : Colors.black54,
                text: '+/-',
                onTap: () {
                  CalculatorController.instance.setPositiveNegative();
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.transparent,
                textColor: AppController.instance.isDarkTheme
                    ? Colors.white
                    : Colors.black54,
                text: '0',
                onTap: () {
                  CalculatorController.instance.setFormula(0);
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.transparent,
                textColor: AppController.instance.isDarkTheme
                    ? Colors.white
                    : Colors.black54,
                text: '.',
                onTap: () {
                  CalculatorController.instance.setFormula('.');
                },
              ),
              CalculatorButton(
                textColor: Color.fromRGBO(0, 150, 135, 1),
                backgroundColor: Colors.white,
                text: '=',
                onTap: () {
                  CalculatorController.instance.result();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
