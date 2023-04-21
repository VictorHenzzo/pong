import 'dart:async';

import 'package:flame/components.dart';
import 'package:flutter/material.dart' hide Draggable;
import 'package:pong/game/pong.dart';

enum PlayerType { top, bottom }

//TODO Trocar para um sprite component https://docs.flame-engine.org/latest/flame/components.html
class Player extends PositionComponent with HasGameRef<Pong> {
  Player({required this.playerType}) : super(priority: 1) {
    width = 100;
    height = 15;
    anchor = Anchor.center;
  }

  final double playerHeight = 15;
  final Anchor playerAnchor = Anchor.center;
  final PlayerType playerType;

  static final _paint = Paint()..color = Colors.white;

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.drawRect(size.toRect(), _paint);
  }

  @override
  FutureOr<void> onLoad() {
    position = _calculatePosition(gameRef.size);
    super.onLoad();
  }

  void move(Vector2 delta) {
    position.x += delta.x;
  }

  Vector2 _calculatePosition(final Vector2 gameSize) {
    final playerWidth = gameSize.x / 2;
    final playerHeight = gameSize.y * _getHeightMultiplier;

    return Vector2(playerWidth, playerHeight);
  }

  double get _getHeightMultiplier {
    switch (playerType) {
      case PlayerType.top:
        return 0.1;
      case PlayerType.bottom:
        return 0.9;
    }
  }
}
