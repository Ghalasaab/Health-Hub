import 'package:flutter/material.dart';
import 'package:healthhub/themes/dark_mode.dart';
import 'package:healthhub/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData=ThemeData.light();

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData){
    _themeData =themeData;
    notifyListeners();
  }

  void toggletheme(){
    if (_themeData == lightMode){
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}