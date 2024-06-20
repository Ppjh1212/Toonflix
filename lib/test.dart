import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,                
                  children: [
                    Text(
                      'data 1',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ), 
                    Text('data 2'), 
                    Text('data 3'), 
                    Text('data 4'),
                  ],
                ),
              ],
            )
          ],
        ),
        ),
      ),
    );
  }
}
