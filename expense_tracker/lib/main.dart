import 'src/app.dart';
import 'src/core/config/config.dart';
import 'src/core/shared/shared.dart';

void main() async {
  await AppConfig.init();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<ThemeBloc>()),
      ],
      child: const MainApp(),
    ),
  );
}
