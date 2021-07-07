import 'dart:ui';

import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:match3_sandbox/game/ui_components/game_scene_block.dart';

class GameScene extends Game {
  final _block = GameSceneBloc();

  GameScene() {
    init();
  }

  void init() async {
    resize(await Flame.util.initialDimensions());
    await _block.init();
  }

  @override
  void render(Canvas canvas) {
    _block.render(canvas);
  }

  @override
  void update(double t) {
    _block.update(t);
  }

  @override
  void resize(Size size) {
    _block.updateScreenSize(size);
  }
}
