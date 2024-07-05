

import 'package:imperio_mock/app/modules/auth/data/repo/auth_repo.dart';
import 'package:imperio_mock/core/usecase/usecase.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

class CheckUserLogged extends UseCaseWithoutParams<bool>{
  const CheckUserLogged(this._authRepo);

  final AuthRepo _authRepo;

  @override
  ResultFuture<bool> call() async => _authRepo.checkUserLogged();
}
