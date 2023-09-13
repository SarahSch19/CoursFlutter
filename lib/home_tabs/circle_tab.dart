import 'package:flutter/material.dart';

class CircleTab extends StatelessWidget {
  final void Function() callback;

  const CircleTab({super.key, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: callback,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.red,
          ),
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
