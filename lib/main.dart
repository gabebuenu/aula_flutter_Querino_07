import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dado',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Dado'),
        ),
        body: Center(
          child: Dado(),
        ),
      ),
    );
  }
}

class Dado extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Dado();
}

class _Dado extends State<Dado> {
  int _numeroSorteado = -1;

  void rolarDado() {
    setState(() {
      _numeroSorteado = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       Text("$_numeroSorteado", style: TextStyle(fontSize: 64)),
       SizedBox(height: 50),
        ElevatedButton.icon(
          onPressed: () {
            rolarDado();
          },
          icon: Icon(Icons.rotate_left_outlined),
          label: Text("Rolar o dado"),
        ),
       Icon(Icons.rotate_left_outlined),
      ],
    );
  }
}
