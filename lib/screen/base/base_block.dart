import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc extends BaseBlock {}

class BaseBlock {
  final _loading = PublishSubject();

  @protected
  void onProgressStart() async => _loading.add(true);

  @protected
  void onProgressFinished() async => _loading.add(false);

  Stream<bool> get progress => _loading.stream;

  void dispose() {
    _loading.close();
  }
}
