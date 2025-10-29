import 'package:go_router/go_router.dart';
import 'package:supper_app/features/login/screens/login_screen.dart';
import 'package:supper_app/features/summary/screens/summary.dart';
import 'package:supper_app/layouts/login_layout.dart';

GoRouter router = GoRouter(
  initialLocation: '/login',
  redirect: (context, state) {
    if (state.path != null && state.path!.startsWith('/')) {
      return '/login';
    }
    return null;
  },
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return LoginLayout(child: child);
      },
      routes: [
        GoRoute(
          path: '/login',
          builder: (context, state) {
            return LoginScreen();
          },
        ),
      ],
    ),
    GoRoute(path: '/main',
        builder: (context, state) {
          return Summary();
        }
    )
  ],
);
