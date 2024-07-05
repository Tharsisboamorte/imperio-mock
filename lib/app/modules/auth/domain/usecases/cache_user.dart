

import 'package:imperio_mock/app/modules/auth/data/repo/auth_repo.dart';
import 'package:imperio_mock/core/usecase/usecase.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

class CacheUser extends UseCaseWithoutParams<void>{
  const CacheUser(this._authRepo);

  final AuthRepo _authRepo;

  @override
  ResultFuture<void> call() async => _authRepo.cacheUser();
}
