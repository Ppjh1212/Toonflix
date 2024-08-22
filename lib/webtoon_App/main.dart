import 'package:Flutter_Study/webtoon_App/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {   
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
