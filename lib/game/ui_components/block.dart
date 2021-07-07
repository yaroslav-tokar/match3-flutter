import 'dart:ui';

import 'package:flame/components/component.dart';
import 'package:match3_sandbox/game/model/base_game_obj_model.dart';
import 'package:match3_sandbox/utils/logger.dart';

class Block extends Component {
  final RectObjectModel blockModel;

  Block(this.blockModel);

  @override
  void render(Canvas c) {
    c?.drawRect(blockModel.body, blockModel.paint);
  }

  @override
  void update(double t) {
    Logger.i('update block\t${blockModel.hashCode}');
  }
}
