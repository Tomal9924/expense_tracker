import 'package:expense_tracker/src/features/dashboard/presentation/widgets/dashboard/appbar.dart';

import '../../../../core/shared/shared.dart';

class DashboardPage extends StatelessWidget {
  static const path = '/dashboard';
  static const name = 'dashboard';

  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final theme = state.scheme;
        return Scaffold(
          backgroundColor: theme.backgroundPrimary,
          body: const SafeArea(
            child: Center(
              child: Text('Dashboard'),
            ),
          ),
        );
      },
    );
  }
}
