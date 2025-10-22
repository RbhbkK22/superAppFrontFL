import 'package:flutter/material.dart';
import 'package:supper_app/widgets/ui_elements/ui_input.dart';

class CustomThemeManager {

  static final Map<String, CustomTheme> _themes = {};

  static void initialize() {
    _themes['loginInput'] = UiInputTheme(
      cursorColor: Colors.black,
      selectionColor: Colors.grey[400],
    );
  }

  static T getTheme<T extends CustomTheme>(String key) {
    final theme = _themes[key];
    if (theme is T) {
      return theme;
    }
    throw Exception('Theme is haven`t key or type theme is not CustomTheme or your type');
  }
}

abstract class CustomTheme {}


