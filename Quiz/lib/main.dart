import 'package:flutter/material.dart';
import 'package:quizz_like/home_page.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dana'),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
