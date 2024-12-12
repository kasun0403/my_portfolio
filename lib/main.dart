import 'package:flutter/material.dart';
import 'package:kasun_tharanga/pages/home_screen.dart';
import 'package:kasun_tharanga/utils/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kasun Tharanga',
      debugShowCheckedModeBanner: false,
      theme: ThemeClass.darkTheme,
      home: HomePage(),
    );
  }
}
