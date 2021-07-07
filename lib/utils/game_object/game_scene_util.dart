import 'dart:math';

import 'package:match3_sandbox/game/ui_components/block.dart';
import 'package:match3_sandbox/utils/game_object/rect_model_factory.dart';
import '../color/colors.dart';

const double defaultGameBlockHeight = 50;
const double defaultGameBlockWidth = 50;

class GameSceneUtils {
  static List<Block> generateLine({int count = 5}) {
    return List.generate(
        count,
        (index) => Block(RectModelFactory.create(
            blockAvailableColorsList[
                Random().nextInt(blockAvailableColorsList.length)],
            defaultGameBlockHeight,
            defaultGameBlockWidth)));
  }
}
