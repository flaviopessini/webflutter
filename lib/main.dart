import 'package:flutter/material.dart';
import 'package:webflutter/views/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final _themeColor = ColorScheme.fromSeed(seedColor: Colors.deepPurple);

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Flutter Demo',
      theme: ThemeData.light(useMaterial3: true).copyWith(
        colorScheme: _themeColor,
      ),
      darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
        colorScheme: _themeColor,
      ),
      themeMode: ThemeMode.dark,
      //themeMode: ThemeMode.light,
      home: const HomePage(),
    );
  }
}
