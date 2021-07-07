import 'package:flutter/material.dart';
import 'package:match3_sandbox/game/ui_components/game_scene.dart';

class GameScreen extends StatefulWidget {
  final GameScene gameScene;

  const GameScreen({Key key, @required this.gameScene}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) =>
      Container(child: widget.gameScene.widget);
}
