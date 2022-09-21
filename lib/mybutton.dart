import 'package:calculator_app/constaint.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const MyButton(
      {super.key,
      required this.title,
      required this.color,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: onPress,
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                border: Border.all(width: 0),
                borderRadius: BorderRadius.circular(8),
                color: buttonColor),
            child: Center(
                child: Text(
              title,
              style: TextStyle(
                color: color,
                fontSize: 28,
              ),
            )),
          ),
        ),
      ],
    );
  }
}
