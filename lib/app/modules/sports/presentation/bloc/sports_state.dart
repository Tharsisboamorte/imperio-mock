part of 'sports_bloc.dart';

sealed class SportsState extends Equatable {
  const SportsState();

  @override
  List<Object> get props => [];
}

class SportsInitial extends SportsState {
  const SportsInitial();
}

class SportsLoading extends SportsState {
  const SportsLoading();
}

class SportsLoaded extends SportsState {
  const SportsLoaded(this.listOfSports);

  final List<Sports> listOfSports;

  @override
  List<Object> get props => [listOfSports];
}

class SportsError extends SportsState {
  const SportsError(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
