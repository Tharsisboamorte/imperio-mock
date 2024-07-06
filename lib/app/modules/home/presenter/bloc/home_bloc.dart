import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/bonus.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/championships.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/match.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/tip.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/won_bets.dart';
import 'package:imperio_mock/app/modules/home/domain/usecases/get_matches.dart';
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
    required GetMatches getMatches,
  })  : _getTips = getTips,
        _getChampionships = getChampionships,
        _wonBets = wonBets,
        _getBonusList = getBonusList,
        _getMatches = getMatches,
        super(const HomeInitial()) {
    on<HomeEvent>((event, emit) {
      emit(const HomeLoading());
    });
    on<InfoLoadedEvent>(_callInfoHandler);
  }

  final GetListOfTips _getTips;
  final GetListOfChampionships _getChampionships;
  final GetListOfWonBets _wonBets;
  final GetListOfBonus _getBonusList;
  final GetMatches _getMatches;

  Future<void> _callInfoHandler(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    final tips = await _getTipsHandler();
    final champs = await _getChampionshipsHandler();
    final bonus = await _getBonusListHandler();
    final wonBets = await _getWonBetsHandler();
    final matches = await _getMatchesHandler();

    emit(InfoLoaded(tips, matches, wonBets, champs, bonus));
  }

  Future<List<LocalTip>> _getTipsHandler() async {
    final result = await _getTips.call();

    return result.fold(
      (_) {
        return <LocalTip>[];
      },
      (tips) {
        LogUtil.printLog('LIST OF TIPS: $tips');
        return tips;
      },
    );
  }

  Future<List<Championships>> _getChampionshipsHandler() async {
    final result = await _getChampionships.call();

    return result.fold(
      (failure) {
        return <Championships>[];
      },
      (champs) {
        LogUtil.printLog('LIST OF TIPS: $champs');
        return champs;
      },
    );
  }

  Future<List<WonBets>> _getWonBetsHandler() async {
    final result = await _wonBets.call();

    return result.fold(
      (failure) {
        LogUtil.printLog(failure.message);
        return <WonBets>[];
      },
      (bets) {
        LogUtil.printLog('LIST OF bets: $bets');
        return bets;
      },
    );
  }

  Future<List<Bonus>> _getBonusListHandler() async {
    final result = await _getBonusList.call();

    return result.fold(
      (failure) {
        return <Bonus>[];
      },
      (bonus) {
        LogUtil.printLog('LIST OF TIPS: $bonus');
        return bonus;
      },
    );
  }

  Future<List<LocalMatch>> _getMatchesHandler() async {
    final result = await _getMatches.call();

    return result.fold(
      (failure) {
        LogUtil.printLog(failure.message);
        return <LocalMatch>[];
      },
      (matches) {
        LogUtil.printLog('LIST OF Matches: $matches');
        return matches;
      },
    );
  }
}
