import 'package:flutter/material.dart';

class AppTheme {
  // RETURN INPLICITO
  ThemeData getTheme() =>
      ThemeData(useMaterial3: true, brightness: Brightness.dark);
}
