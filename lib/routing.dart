import 'package:go_router/go_router.dart';

import 'features/about_screen/presentation/pages/about_screen.dart';
import 'features/main_screen/presentation/pages/main_screen.dart';

GoRouter goRouter = GoRouter(
  // initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      name: 'about_screen',
      path: '/cars/sale/:mark/:model/:id',
      builder: (context, state) => AboutScreen(
        markName: state.pathParameters['mark'] ?? '-',
        modelName: state.pathParameters['model'] ?? '-',
        id: int.parse(state.pathParameters['id'] ?? "0"),
      ),
    ),
  ],
);
