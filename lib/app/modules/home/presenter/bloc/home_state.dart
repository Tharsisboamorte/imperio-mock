part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {
  const HomeInitial();

  @override
  List<Object> get props => [];
}

class HomeLoading extends HomeState {
  const HomeLoading();
}

class OpenMenu extends HomeState {
  const OpenMenu();
}

class InfoLoaded extends HomeState {
  const InfoLoaded(
    this.listOfTips,
    this.listOfMatches,
    this.listOfWonBets,
    this.listOfChamps,
    this.listOfBonus,
  );

  final List<LocalTip> listOfTips;
  final List<LocalMatch> listOfMatches;
  final List<WonBets> listOfWonBets;
  final List<Championships> listOfChamps;
  final List<Bonus> listOfBonus;

  @override
  List<Object> get props => [listOfTips];
}

class SelectedMatch extends HomeState {
  const SelectedMatch({required this.id});

  final String id;

  @override
  List<Object> get props => [id];
}
