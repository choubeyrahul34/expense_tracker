import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kcolorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

void main() {
  runApp(
    MaterialApp(
      // ignore: deprecated_member_use
      theme: ThemeData().copyWith(
        colorScheme: kcolorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          // backgroundColor: kcolorScheme.onPrimary,
          foregroundColor: kcolorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kcolorScheme.primaryContainer,
          shadowColor: kcolorScheme.primaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kcolorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: kcolorScheme.onSecondaryContainer,
              ),
            ),
      ),
      home: const Expenses(),
    ),
  );
}
