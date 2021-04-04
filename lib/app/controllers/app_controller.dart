import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool isDarkTheme = false;
  changeTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isDarkTheme = !isDarkTheme;
    prefs.setBool('isDarkTheme', isDarkTheme);
    notifyListeners();
  }

  setTheme(bool theme) {
    isDarkTheme = theme;
    notifyListeners();
  }
}
