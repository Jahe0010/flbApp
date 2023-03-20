import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  // Main Colors (Buttons and texts)
  static const Color BACKGROUND_COLOR = Color.fromRGBO(252, 252, 252, 1);
  static const Color PRIMARY_COLOR = Color.fromRGBO(102, 172, 22, 1);
  static const Color SECONDARY_COLOR = Color.fromRGBO(102, 172, 22, 1);
  static const Color TERTIAR_COLOR = Color.fromRGBO(255, 186, 8, 1);
  static const Color ERROR = Color.fromRGBO(167, 26, 28, 1);

  static ThemeData applicationTheme() {
    return ThemeData(
      scaffoldBackgroundColor: BACKGROUND_COLOR,
      fontFamily: 'Roboto',
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.green[900],
          titleTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.lightGreen[100],
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black87),
      textTheme: TextTheme(
          headlineLarge: const TextStyle(color: Colors.white),
          headlineMedium: const TextStyle(color: Colors.white),
          headlineSmall: const TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.grey[700], fontSize: 16),
          bodyMedium: TextStyle(color: Colors.grey[700], fontSize: 14),
          bodySmall: TextStyle(color: Colors.grey[700], fontSize: 12)),
      disabledColor: Colors.grey[400],
      iconTheme: IconThemeData(
        color: Colors.grey[800],
        size: 20
      )
    );
  }
}
