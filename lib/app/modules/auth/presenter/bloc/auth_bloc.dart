import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:imperio_mock/app/modules/auth/data/models/auth_model.dart';
import 'package:imperio_mock/app/modules/auth/domain/entities/auth.dart';
import 'package:imperio_mock/app/modules/auth/domain/usecases/sign_in.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required SignIn signIn,
  })  : _signIn = signIn,
        super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      emit(const AuthLoading());
    });
    on<SignInEvent>(_signInHandler);
  }

  final SignIn _signIn;

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
      (user) => emit(SignedIn(user)),
    );
  }
}
