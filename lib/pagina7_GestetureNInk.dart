import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Ejemplo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Paginasiete(),
    );
  }
}

class Paginasiete extends StatefulWidget {
  const Paginasiete({Key? key}) : super(key: key);

  @override
  State<Paginasiete> createState() => _PaginasieteState();
}

class _PaginasieteState extends State<Paginasiete> {
  int index = 0;
  final random = Random();
  final List<Color> myColors = [
    Colors.green,
    Colors.blueAccent,
    Colors.cyan,
    Colors.yellow,
    Colors.redAccent,
  ];

  void changeColorIndex() {
    setState(() {
      index = random.nextInt(myColors.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          'GestureDetect & InkWell',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'GestureDetect\n↓',
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewScreen(),
                  ),
                );
              },
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 4.0, color: Colors.white),
                ),
                child: const Text(
                  'Press',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),
            const Divider(color: Colors.white),
            const SizedBox(height: 60),
            InkWell(
              onDoubleTap: changeColorIndex,
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: myColors[index],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 4.0, color: Colors.white),
                ),
                child: const Text(
                  'Press',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Text(
              '↑\nInkWell',
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class NewScreen extends StatelessWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          'New Screen',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            alignment: Alignment.center,
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.deepPurple[300],
              border: Border.all(width: 7, color: Colors.white),
            ),
            child: const Text(
              'New Screen\nPress\n👊',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
