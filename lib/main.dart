import 'package:elearning_app/Utils/app_theme.dart';
import 'package:elearning_app/Views/home_page.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ELearning App',
      theme: AppTheme.theme,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
