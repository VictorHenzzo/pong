import 'dart:async';
import 'dart:developer';

import 'package:flame/components.dart';
import 'package:flutter/material.dart' hide Draggable;
import 'package:pong/game/pong.dart';

//TODO Tarocar para um sprite component https://docs.flame-engine.org/latest/flame/components.html
class Player extends PositionComponent with HasGameRef<Pong> {
  Player() : super(priority: 1);

  final double playerWidth = 250;
  final double playerHeight = 15;
  final Anchor playerAnchor = Anchor.bottomCenter;

  static final _paint = Paint()..color = Colors.white;

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.drawRect(size.toRect(), _paint);
  }

  @override
  FutureOr<void> onLoad() {
    position = gameRef.size / 2;
    width = playerWidth;
    height = playerHeight;
    anchor = playerAnchor;

    return super.onLoad();
  }

  void move(Vector2 delta) {
    position.add(delta);
  }
}
