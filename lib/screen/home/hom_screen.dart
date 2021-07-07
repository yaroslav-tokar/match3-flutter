import 'package:flutter/material.dart';
import 'package:match3_sandbox/game/ui_components/game_scene.dart';
import 'package:match3_sandbox/screen/base/base_block.dart';
import 'package:match3_sandbox/screen/base/base_screen.dart';
import 'package:match3_sandbox/screen/game/game_screen.dart';
import 'package:match3_sandbox/utils/navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeBlock = HomeBloc();

  @override
  Widget build(BuildContext context) => BaseScreen(
        body: Container(
          child: Column(
            children: [
              Center(
                child: ElevatedButton(
                    onPressed: () =>
                        AppNav.i.push(GameScreen(gameScene: GameScene())),
                    child: Text('Game screen')),
              )
            ],
          ),
        ),
      );
}
