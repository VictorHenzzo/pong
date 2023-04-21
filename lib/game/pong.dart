import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:pong/game/components/player/player.dart';

class Pong extends FlameGame with SingleGameInstance, PanDetector {
  Pong(this.player);

  @override
  //TODO Arrumar esse null check
  Color backgroundColor() => Colors.grey[900]!;

  final Player player;

  @override
  Future<void> onLoad() async {
    add(player);
  }

  @override
  void onPanUpdate(DragUpdateInfo info) {
    super.onPanUpdate(info);
    player.move(info.delta.game);
  }
}
