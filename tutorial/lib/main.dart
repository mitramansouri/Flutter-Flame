import 'dart:html';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(GameWidget(game: MyGame()));
}

class MyGame extends FlameGame {
  SpriteComponent player = SpriteComponent();

  @override 
  Future<void> onLoad() async{
    player
      ..sprite = await loadSprite('player.png')
      ..size = Vector2(40.0, 40.0); //give size 
    add(player);
  }
}