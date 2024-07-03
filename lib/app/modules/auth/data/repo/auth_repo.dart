import 'package:imperio_mock/app/modules/auth/data/datasources/auth_datasource.dart';
import 'package:imperio_mock/app/modules/auth/data/models/auth_model.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

abstract class AuthRepo {
  const AuthRepo();

  ResultFuture<AuthModel> signIn({
    required String email,
    required String password,
  });
}

class AuthRepoImpl implements AuthRepo {
  const AuthRepoImpl(this._dataSource);

  final AuthDataSrcInterface _dataSource;

  @override
  ResultFuture<AuthModel> signIn({
    required String email,
    required String password,
  }) {
    // TODO: implement signIn
    throw UnimplementedError();
  }
}
