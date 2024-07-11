import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
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
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Click Count",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    for (var n in numbers) Text("$n"),
                    IconButton(
                      iconSize: 40,
                      onPressed: onClicked,
                      icon: const Icon(Icons.add_box_rounded),
                    ),
                  ],
                ),
              ),
            )));
  }
}
