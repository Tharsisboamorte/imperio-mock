part of 'injection_container.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await _initAuth();
}


Future<void> _initAuth() async {
  sl
  ..registerFactory(() => AuthBloc(signIn: sl()))
  ..registerLazySingleton(() => SignIn(sl()))
  ..registerLazySingleton<AuthRepo>(() => AuthRepoImpl(sl()))
  ..registerLazySingleton<AuthDataSrcInterface>(() => AuthDataSrcImpl(sl()));
}