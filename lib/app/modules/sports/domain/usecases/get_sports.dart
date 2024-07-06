import 'package:imperio_mock/app/modules/sports/data/repo/sports_repo.dart';
import 'package:imperio_mock/app/modules/sports/domain/entities/sports.dart';
import 'package:imperio_mock/core/usecase/usecase.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

class GetSports extends UseCaseWithoutParams<List<Sports>> {
  const GetSports(this._sportsRepo);

  final SportsRepo _sportsRepo;

  @override
  ResultFuture<List<Sports>> call() => _sportsRepo.listOfSports();
}
