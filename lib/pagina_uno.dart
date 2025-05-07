import 'package:flutter/material.dart';

class Paginauno extends StatelessWidget {
  const Paginauno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pantalla uno")), // Título centrado
        backgroundColor: Color(0xff75a8fe), // Color de la barra
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla dos');
              },
              child: const Text('Ver pantalla 1'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Pantalla tres');
              },
              child: const Text('Ver pantalla 2'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla cuatro');
              },
              child: const Text('Ver pantalla 4'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla cinco');
              },
              child: const Text('Ver pantalla 5'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla seis');
              },
              child: const Text('Ver pantalla 6'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla siete');
              },
              child: const Text('Ver pantalla 7'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla nueve');
              },
              child: const Text('Ver pantalla 8'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla diez');
              },
              child: const Text('Ver pantalla 9'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla once');
              },
              child: const Text('Ver pantalla 10'),
            ),
          ),
        ],
      ),
    );
  }
}
