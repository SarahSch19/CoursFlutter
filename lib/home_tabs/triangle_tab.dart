import 'package:flutter/material.dart';

class TriangleTab extends StatelessWidget {
  final Color color;

  const TriangleTab(this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    print("Build");
    return Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          width: 200,
          height: 200,
      ),
    );
  }
}
