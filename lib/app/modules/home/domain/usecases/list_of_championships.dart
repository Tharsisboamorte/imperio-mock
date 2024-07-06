

import 'package:imperio_mock/app/modules/home/data/repo/home_repo.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/championships.dart';
import 'package:imperio_mock/core/usecase/usecase.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

class GetListOfChampionships extends UseCaseWithoutParams<List<Championships>> {
  const GetListOfChampionships(this._homeRepo);

  final HomeRepo _homeRepo;

  @override
  ResultFuture<List<Championships>> call() => _homeRepo.listOfChampionships();
}
