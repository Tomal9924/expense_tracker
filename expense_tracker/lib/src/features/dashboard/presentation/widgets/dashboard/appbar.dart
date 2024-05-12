import 'package:expense_tracker/src/core/shared/shared.dart';

class DashboardAppBar extends StatelessWidget {
  const DashboardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final theme = state.scheme;
        return ListTile(
          dense: true,
          visualDensity: VisualDensity.comfortable,
          title: Text(
            'Welcome',
            style: TextStyles.title(
              context: context,
              color: theme.textPrimary,
            ),
          ),
          subtitle: Text(
            'Tanvir Ahmed',
            style: TextStyles.caption(
              context: context,
              color: theme.textSecondary,
            ).copyWith(fontWeight: FontWeight.bold),
          ),
          leading: const CircleAvatar(
            child: Icon(Icons.person),
          ),
        );
      },
    );
  }
}
