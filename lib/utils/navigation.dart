import 'package:flutter/material.dart';

class AppNav {
  static final AppNav i = AppNav._();

  factory AppNav() => i;

  AppNav._();

  static final navigationKey = GlobalKey<NavigatorState>();

  BuildContext get navContext => navigationKey.currentContext;

  Future<void> push(Widget widget) async => navigationKey.currentState
      .push(MaterialPageRoute(builder: (context) => widget));
}
