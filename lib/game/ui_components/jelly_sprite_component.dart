import 'package:flame/anchor.dart';
import 'package:flame/components/component.dart';
import 'package:flame/position.dart';
import 'package:flutter/cupertino.dart';
import 'package:match3_sandbox/game/ui_components/base_jelly_event.dart';
import 'package:vector_math/vector_math.dart';

import 'package:flame/sprite.dart';

class JellySpriteComponent {
  SpriteComponent component;
  bool _isMoving = false;

  JellySpriteComponent(String spriteImagePath) {
    final sprite = Sprite(spriteImagePath);
    final size = Vector2.all(150.0);
    component = SpriteComponent.fromSprite(size.x, size.y, sprite);
    component.anchor = Anchor.center;
  }

  void render(Canvas canvas) {
    component.render(canvas);
  }

  void moveTo(double desX, double dexY){

  }

  void update(double dt) {
    if (_isMoving) {
      _moveTo();
    }
  }

  void _moveTo() {

  }
}
