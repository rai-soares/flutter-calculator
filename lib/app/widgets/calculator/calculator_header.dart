import 'package:flutter/material.dart';
import '../../controllers/app_controller.dart';
import '../../controllers/calculator_controller.dart';

class CalculatorHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            CalculatorController.instance.history,
            style: TextStyle(
              color: AppController.instance.isDarkTheme
                  ? Color.fromRGBO(70, 84, 85, 1)
                  : Color.fromRGBO(218, 218, 218, 1),
              fontSize: 20,
            ),
          ),
          Container(height: 10),
          Text(
            CalculatorController.instance.formula,
            style: TextStyle(
              color: AppController.instance.isDarkTheme
                  ? Colors.white
                  : Colors.black,
              fontSize:
                  CalculatorController.instance.formula.length > 10 ? 25 : 45,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
