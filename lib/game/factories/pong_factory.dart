import 'package:flame/game.dart';
import 'package:pong/game/pong.dart';

abstract class PongFactory {
  static final Game _instance = Pong();

  static Game build() => _instance;
}
