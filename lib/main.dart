import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/theme_provider.dart';
import 'screens/main_screen.dart';

// Di main.dart atau root widget, pastikan Provider dibungkus di level tertinggi
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(), // Provider Anda
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      theme: themeProvider.themeData,
      home: MainScreen(),
    );
  }
}
