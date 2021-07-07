import 'package:flame/position.dart';

abstract class IJellyCapability {
  void moveTo(Position destination);

  void rotate();

  void remove();
}
