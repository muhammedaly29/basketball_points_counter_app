import 'package:basketball_points_counter_app/Cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  CounterCubit() : super(TeamAIncrementState());

  void counter ({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(TeamAIncrementState());
    } else if (team == 'B') {
      teamBPoints += buttonNumber;
      emit(TeamBIncrementState());
    } else {
      teamAPoints = buttonNumber;
      teamBPoints = buttonNumber;
      emit(ResetState());
    }
  }
}
