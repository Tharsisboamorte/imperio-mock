import 'package:imperio_mock/app/modules/home/data/repo/home_repo.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/tip.dart';
import 'package:imperio_mock/core/usecase/usecase.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

class GetListOfTips extends UseCaseWithoutParams<List<LocalTip>> {
  const GetListOfTips(this._homeRepo);

  final HomeRepo _homeRepo;

  @override
  ResultFuture<List<LocalTip>> call() => _homeRepo.listOfTips();
}
