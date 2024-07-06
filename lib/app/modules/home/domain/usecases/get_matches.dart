import 'package:imperio_mock/app/modules/home/data/repo/home_repo.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/match.dart';
import 'package:imperio_mock/core/usecase/usecase.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

class GetMatches extends UseCaseWithoutParams<List<LocalMatch>> {
  const GetMatches(this._homeRepo);

  final HomeRepo _homeRepo;

  @override
  ResultFuture<List<LocalMatch>> call() => _homeRepo.listOfMatches();
}
