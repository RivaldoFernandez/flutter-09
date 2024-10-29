import 'package:flutter/material.dart';

class Shape extends StatelessWidget {
  const Shape({super.key}); // Cambia el constructor a const

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/img/Vector.png',
          width: 143,
          height: 129,
        ),
      ],
    );
  }
}
