import 'package:cisneros/pagina11_CheckboxListTile.dart';
import 'package:cisneros/pagina2_GridView.dart';
import 'package:cisneros/pagina3_AnimatedContainer.dart';
import 'package:cisneros/pagina4_Stack.dart';
import 'package:cisneros/pagina5_Clipper.dart';
import 'package:cisneros/pagina6_ClipRect.dart';
import 'package:cisneros/pagina7_GestetureNInk.dart';
import 'package:cisneros/pagina8_ShowSearch.dart';
import 'package:cisneros/pagina9_ShowModelBottomSheet.dart';

import 'package:cisneros/pagina_uno.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cisneros",
      initialRoute: "/",
      routes: {
        "/": (context) => const Paginauno(),
        '/pantalla dos': (context) => const Paginados(),
        '/Pantalla tres': (context) => const Paginatres(),
        '/pantalla cuatro': (context) => const Paginacuatro(),
        '/pantalla cinco': (context) => const Paginacinco(),
        '/pantalla seis': (context) => const Paginaseis(),
        '/pantalla siete': (context) => const Paginasiete(),
        '/pantalla nueve': (context) => const Paginanueve(),
        '/pantalla diez': (context) => const Paginadiez(),
        '/pantalla once': (context) => const MyCheckboxListTile(),
      },
    );
  }
}
