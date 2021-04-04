import 'package:flutter/material.dart';
import 'widgets/calculator/calculator.dart';
import 'controllers/app_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatelessWidget {
  verifyTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    AppController.instance.setTheme(prefs.get('isDarkTheme'));
  }

  @override
  Widget build(BuildContext context) {
    verifyTheme();
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            initialRoute: '/',
            routes: {
              '/': (context) => Calculator(),
            },
          );
        });
  }
}
