import 'package:flutter/material.dart';
import 'package:pong/modules/game_home/navigation/route/game_home_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pong',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GameHomeRoute.buildScreen(),
    );
  }
}
