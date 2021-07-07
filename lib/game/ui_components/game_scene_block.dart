import 'dart:ui';

import 'package:flame/components/component.dart';
import 'package:match3_sandbox/game/model/base_game_obj_model.dart';
import 'package:match3_sandbox/game/ui_components/jelly_sprite_component.dart';
import 'package:match3_sandbox/utils/color/colors.dart';
import 'package:match3_sandbox/utils/drawable.dart';
import 'package:match3_sandbox/utils/game_object/rect_model_factory.dart';
import 'package:match3_sandbox/utils/screen_utils.dart';

class GameSceneBloc {
  List<JellySpriteComponent> jellies = [];
  Size _actualScreenSize = Size(appScreenHeight, appScreenWidth);
  RectObjectModel backgroundModel;

  Future<void> init() async {
    jellies
      ..add(JellySpriteComponent(imgBlockAir))
      ..add(JellySpriteComponent(imgArthropoda))
      ..add(JellySpriteComponent(imgDemon));

    backgroundModel = RectModelFactory.create(
      gameSceneBgColor,
      _actualScreenSize.height,
      _actualScreenSize.width,
    );
  }

  void updateScreenSize(Size screenSize) {
    this._actualScreenSize = screenSize;
  }

  void render(Canvas canvas) {
    canvas.drawRect(backgroundModel.body, backgroundModel.paint);
    jellies.forEach((jelly) => jelly.component?.render(canvas));
  }

  void update(double dt) {}
}
