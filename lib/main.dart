import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomBackgroundColorWidget(),
    );
  }
}

class RandomBackgroundColorWidget extends StatefulWidget {
  @override
  _RandomBackgroundColorWidget createState() => _RandomBackgroundColorWidget();
}

class _RandomBackgroundColorWidget extends State<RandomBackgroundColorWidget> {
  int _colorIndex = 0xFF42A5F5;

  void _randomColorIndexGenerator() {
    final _rng = new Random();
    setState(() => {_colorIndex = (_rng.nextInt(0x1000000) + 0xFF000000)});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Material(
        color: Color(_colorIndex),
        child: Center(
          child: Text("Hey there"),
        ),
      ),
      GestureDetector(
        onTap: () => _randomColorIndexGenerator(),
      ),
    ]);
  }
}
