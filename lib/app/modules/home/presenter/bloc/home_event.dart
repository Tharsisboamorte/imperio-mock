part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class InfoLoadedEvent extends HomeEvent {
  const InfoLoadedEvent();
}

class TipsLoadedEvent extends HomeEvent {
  const TipsLoadedEvent();
}
class BetsLoadedEvent extends HomeEvent {
  const BetsLoadedEvent();
}
class BonusLoadedEvent extends HomeEvent {
  const BonusLoadedEvent();
}
class ChampionshipsLoadedEvent extends HomeEvent {
  const ChampionshipsLoadedEvent();
}


class SelectedMatchEvent extends HomeEvent {
  const SelectedMatchEvent({required this.id});

  final String id;

  @override
  List<Object> get props => [id];
}
