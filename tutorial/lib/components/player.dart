import 'package:flame/components.dart';
import 'package:flutter/foundation.dart';

class Player extends SpriteComponent with HasGameRef {
  Player()
  :super(
    size: Vector2.all(50.0),
  );

  @override 
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await gameRef.loadSprite('player.png');
    position = gameRef.size / 2;
  }
}