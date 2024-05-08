part of 'config.dart';

final sl = GetIt.instance;

Future<void> _setupDependencies() async {
  await _core;

  await Future.wait(
    [
      sl.allReady(),
    ],
  );
}

Future<void> get _core async {
  sl.registerFactory(
    () => ThemeBloc(),
  );

  sl.registerLazySingleton(() => Client());
}
