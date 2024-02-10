import 'package:go_router/go_router.dart';

import 'features/main_screen/presentation/pages/main_screen.dart';

GoRouter goRouter = GoRouter(
  // initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
    ),
  ],
);
