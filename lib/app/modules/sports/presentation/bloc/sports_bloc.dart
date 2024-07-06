import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:imperio_mock/app/modules/sports/domain/entities/sports.dart';
import 'package:imperio_mock/app/modules/sports/domain/usecases/get_sports.dart';

part 'sports_event.dart';
part 'sports_state.dart';

class SportsBloc extends Bloc<SportsEvent, SportsState> {
  SportsBloc({
    required GetSports getSports,
  })  : _getSports = getSports,
        super(const SportsInitial()) {
    on<SportsEvent>((event, emit) {
      emit(const SportsLoading());
    });
    on<FetchSports>(_getSportsHandler);
  }

  final GetSports _getSports;

  Future<void> _getSportsHandler(
    SportsEvent event,
    Emitter<SportsState> emit,
  ) async {
    final result = await _getSports.call();

    result.fold(
      (failure) {
        emit(SportsError(failure.message));
      },
      (sports) {
        emit(SportsLoaded(sports));
      },
    );
  }
}
