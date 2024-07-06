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
    ..registerFactory(
      () => HomeBloc(
        getTips: sl(),
        getChampionships: sl(),
        wonBets: sl(),
        getBonusList: sl(),
        getMatches: sl(),
      ),
    )
    ..registerLazySingleton(() => GetListOfTips(sl()))
    ..registerLazySingleton(() => GetListOfBonus(sl()))
    ..registerLazySingleton(() => GetListOfChampionships(sl()))
    ..registerLazySingleton(() => GetListOfWonBets(sl()))
    ..registerLazySingleton(() => GetMatches(sl()))
    ..registerLazySingleton<HomeRepo>(() => HomeRepoImpl(sl()))
    ..registerLazySingleton<HomeDataSrcInterface>(
      () => HomeDataSrcImpl(client: sl()),
    );
}
