import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supper_app/core/repositoryes/auth_repo.dart';
import 'package:supper_app/core/routers.dart';
import 'package:supper_app/core/themes.dart';
import 'package:supper_app/features/login/bloc/auth_bloc.dart';

void main() {
  CustomThemeManager.initialize();
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  AuthRepo authRepo = AuthRepoImpl();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AuthBloc(authRepo))],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
