class CustomThemeManager {

  static final Map<String, CustomTheme> _themes = {};

  static void initialize() {

  }

  static T getTheme<T extends CustomTheme>(String key) {
    final theme = _themes[key];
    if (theme is T) {
      return theme;
    }
    throw Exception('Theme is havent key or type theme is not CustomTheme or your type');
  }
}

abstract class CustomTheme {}


