import 'dart:ui';

import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:match3_sandbox/units/game_object/rect_model_factory.dart';
import 'package:match3_sandbox/units/color/colors.dart';
import 'package:match3_sandbox/units/game_object/game_scene_util.dart';
import 'package:match3_sandbox/units/logger.dart';
import 'package:match3_sandbox/units/screen_utils.dart';

class GameScene extends Game {
  static Size screenSize = Size(appScreenHeight, appScreenWidth);

  final blockLine = GameSceneUtils.generateLine();

  final _background = RectModelFactory.create(
    gameSceneBgColor,
    screenSize.height,
    screenSize.width,
  );

  GameScene() {
    init();
  }

  void init() async {
    resize(await Flame.util.initialDimensions());
  }

  @override
  void render(Canvas canvas) {
    _drawBg(canvas);
    _drawBlocks(canvas);
  }

  @override
  void update(double t) {
    Logger.i('update');
  }

  @override
  void resize(Size size) {
    screenSize = size;
  }

  _drawBg(Canvas canvas) {
    canvas.drawRect(_background.body, _background.paint);
  }

  _drawBlocks(Canvas canvas) {
    blockLine.forEach((element) {
      canvas.drawRect(element.blockModel.body, element.blockModel.paint);
    });
  }
}
