import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:imperio_mock/app/modules/auth/domain/entities/auth.dart';
import 'package:imperio_mock/app/modules/auth/domain/usecases/cache_user.dart';
import 'package:imperio_mock/app/modules/auth/domain/usecases/check_user_logged.dart';
import 'package:imperio_mock/app/modules/auth/domain/usecases/sign_in.dart';
import 'package:imperio_mock/core/utils/logger_util.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required SignIn signIn,
    required CacheUser cacheUser,
    required CheckUserLogged checkUserLogged,
  })  : _signIn = signIn,
        _cacheUser = cacheUser,
        _checkUserLogged = checkUserLogged,
        super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      emit(const AuthLoading());
    });
    on<SignInEvent>(_signInHandler);
    on<CacheUserEvent>(_cacheUserHandler);
    on<CheckUserLoggedEvent>(_checkUserLoggedHandler);
  }

  final SignIn _signIn;
  final CacheUser _cacheUser;
  final CheckUserLogged _checkUserLogged;

  String userEmail = '';

  Future<void> _signInHandler(
    SignInEvent event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _signIn(
      SignInParams(
        email: event.email,
        password: event.password,
      ),
    );

    result.fold(
      (failure) => emit(AuthError(failure.errorMessage)),
      (auth) => emit(SignedIn(auth)),
    );
  }

  Future<void> _cacheUserHandler(
    CacheUserEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const CachingUser());
    final result = await _cacheUser();
    LogUtil.printLog('CACHINHG INFO: $result');
    result.fold(
      (failure) => emit(AuthError(failure.message)),
      (_) => emit(const UserCached()),
    );
  }

  Future<void> _checkUserLoggedHandler(
    CheckUserLoggedEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const CheckingIfUserLogged());
    final result = await _checkUserLogged();

    result.fold(
      (failure) => emit(AuthError(failure.message)),
      (status) => CheckedIfUserLogged(userIsLogged: status),
    );
  }
}
