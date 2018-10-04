import 'package:flutter/material.dart';
import 'dart:async';

class Blocs{
  static final bgBloc = BgBloc();
  static final themeBloc = ThemeBloc();
}

class BgBloc{
  final _bgController = StreamController<String>();

  get changeBg => _bgController.sink;
  get selectedBg => _bgController.stream;
}
class ThemeBloc{
  final _themeController = StreamController<ThemeData>();

  get changeTheme => _themeController.sink;
  get selectedTheme => _themeController.stream;
}