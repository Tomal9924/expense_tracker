
import 'core/config/config.dart';
import 'core/router/router.dart';
import 'core/shared/shared.dart';

/// The Widget that configures your application.
class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
          builder: (_, state) {
            final theme = state.scheme;
        return MaterialApp.router(
          routerConfig: router,
          theme: AppConfig.theme(context: context, theme: theme),
          darkTheme: AppConfig.theme(context: context, theme: theme),
        );
      },
    );
  }
}
