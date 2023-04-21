import 'package:flame/game.dart';
import 'package:pong/modules/game/pong.dart';

abstract class PongFactory {
  static Game build() {
    return Pong();
  }
}
