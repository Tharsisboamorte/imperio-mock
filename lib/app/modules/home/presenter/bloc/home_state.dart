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

class InfoLoaded extends HomeState {
  const InfoLoaded(this.listOfTips);

  final List<LocalTip> listOfTips;

  @override
  List<Object> get props => [listOfTips];
}

class SelectedMatch extends HomeState {
  const SelectedMatch({required this.id});

  final String id;

  @override
  List<Object> get props => [id];
}
