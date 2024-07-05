import 'package:equatable/equatable.dart';
import 'package:imperio_mock/app/modules/auth/data/models/auth_model.dart';
import 'package:imperio_mock/app/modules/auth/data/repo/auth_repo.dart';
import 'package:imperio_mock/app/modules/auth/domain/entities/auth.dart';
import 'package:imperio_mock/core/usecase/usecase.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

class SignIn extends UseCaseWithParams<LocalAuth, SignInParams> {
  const SignIn(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<LocalAuth> call(SignInParams params) => _repo.signIn(
    email: params.email,
    password: params.password,
  );
}

class SignInParams extends Equatable {
  const SignInParams({
    required this.email,
    required this.password,
  });

  const SignInParams.empty()
      : email = '',
        password = '';

  final String email;
  final String password;

  @override
  List<String> get props => [email, password];
}
