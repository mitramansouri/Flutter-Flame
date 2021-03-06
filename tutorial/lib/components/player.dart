import 'package:flame/components.dart';

import '../helpers/direction.dart';

class Player extends SpriteComponent with HasGameRef {
  Direction direction = Direction.none;
  final double _playerSpeed = 300.0;

  Player()
  :super(
    size: Vector2(150.0,150.0),
  );

  @override 
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await gameRef.loadSprite('player.png');
    position = gameRef.size / 2;
  }

  @override 
  void update(double dt){
    super.update(dt);
    movePlayer(dt);
  }
  void movePlayer(delta){
    switch (direction) {
      case Direction.up:
        moveUp(delta);
        break;
      case Direction.down:
        moveDown(delta);
        break;
      case Direction.left:
        moveLeft(delta);
        break;
      case Direction.right:
        moveRight(delta);
        break;
      case Direction.none:
        break;
    }

  }
void moveDown(double delta) {
   position.add(Vector2(0, delta * _playerSpeed));
}

void moveUp(double delta) {
  position.add(Vector2(0, delta * -_playerSpeed));
}
 
void moveLeft(double delta) {
  position.add(Vector2(delta * -_playerSpeed, 0));
}
 
void moveRight(double delta) {
  position.add(Vector2(delta * _playerSpeed, 0));
}

}