
import '../shared/shared.dart';

final router = GoRouter(
  initialLocation: DashboardPage.path,
  routes: [
    GoRoute(
      path:  DashboardPage.path,
      name: DashboardPage.name,
      builder: (context, state) => const DashboardPage(),
    ),
  ],
);
