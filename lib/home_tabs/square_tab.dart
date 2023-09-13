import 'dart:math';

import 'package:flutter/material.dart';

class SquareTab extends StatefulWidget {
  @override
  State<SquareTab> createState() => _SquareTabState();
}

class _SquareTabState extends State<SquareTab> {
  Color _color = Colors.red;
  final Random random = Random(10);
  final List<Color> _colorsList = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.purple,
    Colors.yellow
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _changeColor,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: _color,
          ),
          width: 200,
          height: 200,
        ),
      ),
    );
  }

  void _changeColor() {
    int random = Random().nextInt(_colorsList.length);
    setState(() {
      _color = _colorsList[random];
    });
  }
}
