import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class GiraDado extends StatefulWidget {
  const GiraDado({super.key});

  @override
  State<GiraDado> createState() {
    return _StatoGiraDado();
  }
}

class _StatoGiraDado extends State<GiraDado> {
  var tiroCorrente = 1;

  void tiraDado() {
    setState(() {
      tiroCorrente = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$tiroCorrente.png',
          width: 200,
        ),
        TextButton(
          onPressed: tiraDado,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Tira il dado'),
        ),
      ],
    );
  }
}
