import 'package:dartz/dartz.dart';
import 'package:imperio_mock/app/modules/sports/data/datasource/sports_datasource.dart';
import 'package:imperio_mock/app/modules/sports/domain/entities/sports.dart';
import 'package:imperio_mock/core/errors/failure.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

abstract class SportsRepo {
  const SportsRepo();

  ResultFuture<List<Sports>> listOfSports();
}

class SportsRepoImpl implements SportsRepo {
  const SportsRepoImpl(this._dataSource);

  final SportsDataSrcInterface _dataSource;

  @override
  ResultFuture<List<Sports>> listOfSports() async {
    try {
      final result = await _dataSource.getSports();
      return Right(result);
    } catch (e) {
      return Left(APIFailure(message: e.toString(), statusCode: 500));
    }
  }
}
