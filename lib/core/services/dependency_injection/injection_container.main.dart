part of 'injection_container.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await _initAuth();
}

Future<void> _initAuth() async {
  final prefs = await SharedPreferences.getInstance();

  sl
    ..registerLazySingleton(http.Client.new)
    ..registerLazySingleton(() => prefs)
    ..registerFactory(
      () => AuthBloc(
        signIn: sl(),
        cacheUser: sl(),
        checkUserLogged: sl(),
      ),
    )
    ..registerLazySingleton(() => SignIn(sl()))
    ..registerLazySingleton(() => CacheUser(sl()))
    ..registerLazySingleton(() => CheckUserLogged(sl()))
    ..registerLazySingleton<AuthRepo>(() => AuthRepoImpl(sl()))
    ..registerLazySingleton<AuthDataSrcInterface>(
      () => AuthDataSrcImpl(
        client: sl(),
        prefs: sl(),
      ),
    );
}

void initHome() {
  sl
    ..registerFactory(HomeBloc.new)
    ..registerLazySingleton<HomeDataSrcInterface>(
      () => HomeDataSrcImpl(client: sl()),
    );
}
