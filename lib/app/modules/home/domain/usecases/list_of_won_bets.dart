import 'package:imperio_mock/app/modules/home/data/repo/home_repo.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/won_bets.dart';
import 'package:imperio_mock/core/usecase/usecase.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

class GetListOfWonBets extends UseCaseWithoutParams<List<WonBets>> {
  const GetListOfWonBets(this._homeRepo);

  final HomeRepo _homeRepo;

  @override
  ResultFuture<List<WonBets>> call() => _homeRepo.listOfWonBets();
}
