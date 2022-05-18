import 'dart:html';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:tutorial/components/player.dart';

void main() {
  runApp(GameWidget(game: MyGame()));
}


class MyGame extends FlameGame {
  final Player _player = Player();
  @override 
  Future<void> onLoad() async{
    add(_player);
  }

  @override 
  void update(double dt) {
    // TODO: implement update
    super.update(dt);
    _player.y +1 ;
  }
}