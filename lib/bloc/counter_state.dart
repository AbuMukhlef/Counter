part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class IncrementState extends CounterState {
  final int count;
  IncrementState(this.count);
}

final class DecrementState extends CounterState {
  final int count;
  DecrementState(this.count);
}
