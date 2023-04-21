import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:pong/modules/game/factories/pong_factory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pong',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // TODO Adicionar ClipRect
      home: const GameWidget.controlled(
        gameFactory: PongFactory.build,
      ),
    );
  }
}
