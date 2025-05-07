import 'package:flutter/material.dart';

class Paginados extends StatelessWidget {
  const Paginados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Pantalla dos'),
          backgroundColor: const Color(0xff75a8fe)),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.purple[300],
              ),
            ),
          );
        },
      ),
    );
  }
}
