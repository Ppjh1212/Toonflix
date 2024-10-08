import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _AppState();
}

class _AppState extends State<MyApp> {
  List<int> numbers = [];

  void onClicked() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xFFF4EDDB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Click Count",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text( 
              "$numbers",
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            IconButton(
              iconSize: 40,
              onPressed: onClicked,
              icon: const Icon(Icons.add_box_rounded),
            ),
          ],
        ),
      ),
    ));
  }
}
