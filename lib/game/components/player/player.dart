import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:pong/game/pong.dart';

//TODO Tarocar para um sprite component https://docs.flame-engine.org/latest/flame/components.html
class Player extends PositionComponent with HasGameRef<Pong> {
  Player({
    required this.playerWidth,
    required this.playerHeight,
    required this.playerAnchor,
  }) : super(priority: 1);

  final double playerWidth;
  final double playerHeight;
  final Anchor playerAnchor;

  static final _paint = Paint()..color = Colors.white;

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    configureDimensions();
    canvas.drawRect(size.toRect(), _paint);
  }

  void configureDimensions() {
    position = gameRef.size / 2;
    width = playerWidth;
    height = playerHeight;
    anchor = playerAnchor;
  }
}
