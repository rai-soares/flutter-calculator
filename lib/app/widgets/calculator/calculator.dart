import 'package:flutter/material.dart';
import '../../controllers/app_controller.dart';
import '../../controllers/calculator_controller.dart';
import '../switch_theme_btn.dart';
import 'calculator_header.dart';
import 'calculator_body.dart';

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: CalculatorController.instance,
        builder: (context, child) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppController.instance.isDarkTheme
                  ? Colors.black26
                  : Colors.white,
              title: Text('Calculator',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppController.instance.isDarkTheme
                        ? Colors.white
                        : Color.fromRGBO(0, 150, 135, 1),
                  )),
              actions: [SwitchThemeButton()],
            ),
            body: Padding(
              padding: const EdgeInsets.only(
                  left: 40, right: 40, top: 50, bottom: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CalculatorHeader(),
                    Container(height: 35),
                    CalculatorBody(),
                  ]),
            ),
          );
        });
  }
}
