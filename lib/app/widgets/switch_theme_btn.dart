import 'package:flutter/material.dart';
import '../controllers/app_controller.dart';

class SwitchThemeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: Colors.white,
      inactiveTrackColor: Color.fromRGBO(0, 150, 135, 1),
      inactiveThumbColor: Color.fromRGBO(0, 150, 135, 1),
      value: AppController.instance.isDarkTheme,
      onChanged: (v) {
        AppController.instance.changeTheme();
      },
    );
  }
}
