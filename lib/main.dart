import 'package:flame/images.dart';
import 'package:flame/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:match3_sandbox/screen/home/hom_screen.dart';
import 'package:match3_sandbox/utils/drawable.dart';
import 'package:match3_sandbox/utils/logger.dart';
import 'package:match3_sandbox/utils/navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initFlameEnv();

  try {
    final loader = Images();
    final image = await loader.load(imgBlockAir);
  } catch (exc) {
    Logger.i('Cant load image with error\t$exc');
  }

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        navigatorKey: AppNav.navigationKey,
        theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
        home: HomeScreen(),
      );
}

Future<void> _initFlameEnv() async {
  final flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);
}
