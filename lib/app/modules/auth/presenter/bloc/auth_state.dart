part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthLoading extends AuthState {
  const AuthLoading();
}

class SignedIn extends AuthState {
  const SignedIn(this.authUser);

  final LocalAuth authUser;

  @override
  List<Object> get props => [authUser];
}

class CachingUser extends AuthState {
  const CachingUser();
}

class UserCached extends AuthState {
  const UserCached();
}

class CheckingIfUserLogged extends AuthState {
  const CheckingIfUserLogged();
}

class CheckedIfUserLogged extends AuthState {
  const CheckedIfUserLogged({required bool userIsLogged})
      : _userIsLogged = userIsLogged;

  final bool _userIsLogged;

  @override
  List<bool> get props => [_userIsLogged];
}

class AuthError extends AuthState {
  const AuthError(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
