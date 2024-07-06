import 'package:dartz/dartz.dart';
import 'package:imperio_mock/app/modules/home/data/datasource/home_data_source.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/bonus.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/championships.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/match.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/tip.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/won_bets.dart';
import 'package:imperio_mock/core/errors/failure.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

abstract class HomeRepo {
  const HomeRepo();

  ResultFuture<List<LocalTip>> listOfTips();

  ResultFuture<List<Championships>> listOfChampionships();

  ResultFuture<List<WonBets>> listOfWonBets();

  ResultFuture<List<Bonus>> listOfBonus();

  ResultFuture<List<LocalMatch>> listOfMatches();
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

  @override
  ResultFuture<List<Bonus>> listOfBonus() async {
    try {
      final result = await _dataSource.getBonusList();
      return Right(result);
    } catch (e) {
      return Left(APIFailure(message: e.toString(), statusCode: 500));
    }
  }

  @override
  ResultFuture<List<Championships>> listOfChampionships() async {
    try {
      final result = await _dataSource.getChampionshipsList();
      return Right(result);
    } catch (e) {
      return Left(APIFailure(message: e.toString(), statusCode: 500));
    }
  }

  @override
  ResultFuture<List<WonBets>> listOfWonBets() async {
    try {
      final result = await _dataSource.getWonBetsList();
      return Right(result);
    } catch (e) {
      return Left(APIFailure(message: e.toString(), statusCode: 500));
    }
  }

  @override
  ResultFuture<List<LocalMatch>> listOfMatches() async {
    try {
      final result = await _dataSource.getMatchesList();
      return Right(result);
    } catch (e) {
      return Left(APIFailure(message: e.toString(), statusCode: 500));
    }
  }
}
