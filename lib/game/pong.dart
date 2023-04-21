import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:pong/game/components/player/player.dart';

class Pong extends FlameGame with SingleGameInstance {
  @override
  //TODO Arrumar esse null check
  Color backgroundColor() => Colors.grey[900]!;

  @override
  Future<void> onLoad() async {
    add(
      Player(
        playerWidth: 250,
        playerHeight: 15,
        playerAnchor: Anchor.bottomCenter,
      ),
    );
  }
}
