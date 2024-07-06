part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class InfoLoadedEvent extends HomeEvent {
  const InfoLoadedEvent();
}

class OpenMenuEvent extends HomeEvent {
  const OpenMenuEvent();
}

class CloseMenuEvent extends HomeEvent {
  const CloseMenuEvent();
}

class SelectedMatchEvent extends HomeEvent {
  const SelectedMatchEvent({required this.id});

  final String id;

  @override
  List<Object> get props => [id];
}
