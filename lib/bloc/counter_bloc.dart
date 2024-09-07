import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int count = 0;
  CounterBloc() : super(CounterInitial()) {
    on<MinusEvent>((event, emit) {
      emit(DecrementState(count > 0 ? --count : 0));
    });
    on<PlusEvent>((event, emit) {
      emit(IncrementState(++count));
    });
  }
}
