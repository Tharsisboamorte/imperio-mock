import 'package:dartz/dartz.dart';
import 'package:imperio_mock/app/modules/home/data/datasource/home_data_source.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/tip.dart';
import 'package:imperio_mock/core/errors/failure.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

abstract class HomeRepo {
  const HomeRepo();

  ResultFuture<List<LocalTip>> listOfTips();
}

class HomeRepoImpl implements HomeRepo {
  const HomeRepoImpl(this._dataSource);

  final HomeDataSrcInterface _dataSource;

  @override
  ResultFuture<List<LocalTip>> listOfTips() async {
    try {
      final result = await _dataSource.getTipsList();
      return Right(result);
    } catch (e) {
      return Left(APIFailure(message: e.toString(), statusCode: 500));
    }
  }
}
