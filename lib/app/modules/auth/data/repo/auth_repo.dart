import 'package:dartz/dartz.dart';
import 'package:imperio_mock/app/modules/auth/data/datasources/auth_datasource.dart';
import 'package:imperio_mock/app/modules/auth/domain/entities/auth.dart';
import 'package:imperio_mock/core/errors/failure.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

abstract class AuthRepo {
  const AuthRepo();

  ResultFuture<LocalAuth> signIn({
    required String email,
    required String password,
  });

  ResultVoid cacheUser();

  ResultFuture<bool> checkUserLogged();
}

class AuthRepoImpl implements AuthRepo {
  const AuthRepoImpl(this._dataSource);

  final AuthDataSrcInterface _dataSource;

  @override
  ResultFuture<LocalAuth> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _dataSource.signIn(email: email, password: password);
      return Right(result);
    } catch (e) {
      return Left(APIFailure(message: e.toString(), statusCode: 500));
    }
  }

  @override
  ResultVoid cacheUser() async {
    try {
      final result = await _dataSource.cacheUser();
      return Right(result);
    } catch (e) {
      return Left(CacheFailure(message: e.toString(), statusCode: 500));
    }
  }

  @override
  ResultFuture<bool> checkUserLogged() async {
    try {
      final result = await _dataSource.checkIfUserIsLogged();
      return Right(result);
    } catch (e) {
      return Left(CacheFailure(message: e.toString(), statusCode: 500));
    }
  }
}
