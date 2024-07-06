import 'package:imperio_mock/app/modules/home/data/repo/home_repo.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/bonus.dart';
import 'package:imperio_mock/core/usecase/usecase.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

class GetListOfBonus extends UseCaseWithoutParams<List<Bonus>> {
  const GetListOfBonus(this._homeRepo);

  final HomeRepo _homeRepo;

  @override
  ResultFuture<List<Bonus>> call() => _homeRepo.listOfBonus();
}
