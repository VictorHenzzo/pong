import 'package:flutter/material.dart';
import 'package:pong/game/factories/pong_factory.dart';
import 'package:pong/modules/game_home/ui/game_home_screen.dart';

class GameHomeRoute {
  static const String path = '/game_home';

  static Widget buildScreen() {
    return GameHomeScreen(
      pong: PongFactory.build(),
    );
  }
}
