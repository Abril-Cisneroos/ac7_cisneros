import 'package:flutter/material.dart';
import 'dart:math' as math;

class Paginatres extends StatefulWidget {
  const Paginatres({Key? key}) : super(key: key);

  @override
  State<Paginatres> createState() => _PaginatresState();
}

class _PaginatresState extends State<Paginatres> {
  // Variables para el AnimatedContainer
  double boxX = 0;
  double boxY = 0;
  double boxWidth = 100;
  double boxHeight = 100;
  Color boxColor = Colors.blue;

  void _movedBox() {
    setState(() {
      // Genera nuevas posiciones aleatorias
      final random = math.Random();
      boxX = random.nextDouble() * 2 - 1; // Entre -1 y 1
      boxY = random.nextDouble() * 2 - 1; // Entre -1 y 1

      // Cambia el tamaño y color aleatoriamente
      boxWidth = random.nextDouble() * 100 + 50; // Entre 50 y 150
      boxHeight = random.nextDouble() * 100 + 50; // Entre 50 y 150
      boxColor = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
          title: const Text("pantalla tres"),
          backgroundColor: const Color(0xff75a8fe)),
      body: Center(
        child: GestureDetector(
          onTap: _movedBox,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.bounceInOut,
            alignment: Alignment(boxX, boxY),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: boxHeight,
                width: boxWidth,
                color: boxColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
