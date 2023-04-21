import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class Pong extends FlameGame with SingleGameInstance {
  @override
  Color backgroundColor() => const Color(0x00000000);

  @override
  Future<void> onLoad() async {}
}
