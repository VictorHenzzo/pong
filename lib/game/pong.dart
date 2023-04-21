import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:pong/game/components/player/player.dart';

class Pong extends FlameGame with SingleGameInstance, PanDetector {
  Pong();

  @override
  //TODO Arrumar esse null check
  Color backgroundColor() => Colors.grey[900]!;

  final Player bottomPlayer = Player(
    playerType: PlayerType.bottom,
  );

  final Player topPlayer = Player(
    playerType: PlayerType.top,
  );

  @override
  Future<void> onLoad() async {
    add(bottomPlayer);
    add(topPlayer);
  }

  @override
  void onPanUpdate(DragUpdateInfo info) {
    super.onPanUpdate(info);
    bottomPlayer.move(info.delta.game);
    topPlayer.move(info.delta.game);
  }
}
