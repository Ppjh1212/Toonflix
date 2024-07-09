import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40, //수평
          vertical: 16, // 수직
        ),
        
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
