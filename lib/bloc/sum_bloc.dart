import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sum_event.dart';
part 'sum_state.dart';

class SumBloc extends Bloc<SumEvent, SumState> {
  SumBloc() : super(SumInitial()) {
    on<SumEvent>((event, emit) {

    });
    on<SumAdd>((event, emit) {
      int result = event.a + event.b;
      emit(Result(sum: result));
    });
    on<NewSum>((event, emit) {

      emit(SumInitial());
    });
  }
}
