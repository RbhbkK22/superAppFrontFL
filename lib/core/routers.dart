import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  redirect: (context, state) {
    if (state.path != null && state.path!.startsWith('/')) {
      return '/login';
    }
    return null;
  },
  routes: [],
);
