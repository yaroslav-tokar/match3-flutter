import 'package:flutter/cupertino.dart';
import 'package:match3_sandbox/game/model/base_game_obj_model.dart';

class RectModelFactory {

  static RectObjectModel create(Color color, double height, double width) {
    final painter = Paint()..color = color;
    final body = Rect.fromLTWH(0, 0, width, height);
    return RectObjectModel(painter, body);
  }
}
