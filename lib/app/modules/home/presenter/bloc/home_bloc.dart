import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/bonus.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/championships.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/tip.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/won_bets.dart';
import 'package:imperio_mock/app/modules/home/domain/usecases/list_of_bonus.dart';
import 'package:imperio_mock/app/modules/home/domain/usecases/list_of_championships.dart';
import 'package:imperio_mock/app/modules/home/domain/usecases/list_of_tips.dart';
import 'package:imperio_mock/app/modules/home/domain/usecases/list_of_won_bets.dart';
import 'package:imperio_mock/core/utils/logger_util.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required GetListOfWonBets wonBets,
    required GetListOfChampionships getChampionships,
    required GetListOfBonus getBonusList,
    required GetListOfTips getTips,
  })  : _getTips = getTips,
        _getChampionships = getChampionships,
        _wonBets = wonBets,
        _getBonusList = getBonusList,
        super(const HomeInitial()) {
    on<HomeEvent>((event, emit) {
      emit(const HomeLoading());
    });
    on<TipsLoadedEvent>(_getTipsHandler);
    on<BetsLoadedEvent>(_getChampionshipsHandler);
    on<BonusLoadedEvent>(_getWonBetsHandler);
    on<ChampionshipsLoadedEvent>(_getBonusListHandler);
  }

  final GetListOfTips _getTips;
  final GetListOfChampionships _getChampionships;
  final GetListOfWonBets _wonBets;
  final GetListOfBonus _getBonusList;

  List<LocalTip> listOfTips = [];
  List<WonBets> listBets = [];
  List<Championships> listOfChamps = [];
  List<Bonus> listOfBonus = [];

  Future<void> _getTipsHandler(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    final result = await _getTips.call();

    result.fold(
      (failure) {},
      (tips) {
        listOfTips = tips;
        LogUtil.printLog('LIST OF TIPS: $listOfTips');
        emit(InfoLoaded(tips));
      },
    );
  }

  Future<void> _getChampionshipsHandler(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    final result = await _getChampionships.call();

    result.fold(
      (failure) {},
      (champs) {
        listOfChamps = champs;
        LogUtil.printLog('LIST OF TIPS: $listOfTips');
      },
    );
  }

  Future<void> _getWonBetsHandler(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    final result = await _wonBets.call();

    result.fold(
      (failure) {},
      (bets) {
        listBets = bets;
        LogUtil.printLog('LIST OF TIPS: $listOfTips');
      },
    );
  }

  Future<void> _getBonusListHandler(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    final result = await _getBonusList.call();

    result.fold(
      (failure) {},
      (bonus) {
        listOfBonus = bonus;
        LogUtil.printLog('LIST OF TIPS: $listOfTips');
      },
    );
  }
}
