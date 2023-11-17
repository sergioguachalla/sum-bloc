part of 'sum_bloc.dart';

@immutable
abstract class SumState {
  int sum;

  SumState({required this.sum});
}

class SumInitial extends SumState {

  SumInitial() : super(sum: 0);
}
class Result extends SumState {
  Result({required int sum}) : super(sum: sum);
}
