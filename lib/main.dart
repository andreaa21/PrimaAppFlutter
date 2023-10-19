import 'package:flutter/material.dart';
import 'package:prima_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 19, 84, 13),
          Color.fromARGB(255, 120, 175, 36),
        ),
      ),
    ),
  );
}
