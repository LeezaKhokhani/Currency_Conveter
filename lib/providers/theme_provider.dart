import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../moduls/thmedata.dart';

class ThemeProvider extends ChangeNotifier {
  AppTheme obj = AppTheme(isDark: true);

  void changeTheme() {
    obj.isDark = !obj.isDark;
    notifyListeners();
  }
}
