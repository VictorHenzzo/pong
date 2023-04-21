import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class GameHomeScreen extends StatelessWidget {
  const GameHomeScreen({
    required this.pong,
    super.key,
  });

  final Game pong;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipRect(
        child: GameWidget(
          game: pong,
        ),
      ),
    );
  }
}
