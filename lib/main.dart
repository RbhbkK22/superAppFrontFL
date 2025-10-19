import 'package:flutter/material.dart';
import 'package:supper_app/core/routers.dart';
import 'package:supper_app/core/themes.dart';

void main() {
  CustomThemeManager.initialize();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}


//тест ветки
