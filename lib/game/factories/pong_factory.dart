import 'package:flame/game.dart';
import 'package:pong/game/pong.dart';

abstract class PongFactory {
  static Game build() {
    return Pong();
  }
}
