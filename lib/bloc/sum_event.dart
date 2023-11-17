part of 'sum_bloc.dart';

@immutable
abstract class SumEvent {
  
}

class SumAdd extends SumEvent {
  int a, b;

  SumAdd({required this.a, required this.b});

}

class NewSum extends SumEvent {
  NewSum();
}

