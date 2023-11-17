import 'package:bloc1/bloc/sum_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageLast extends StatelessWidget {
  const PageLast ({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SumBloc, SumState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Último estado'),
        ),
        body: Center(
          child: Text('El último estado fue : ${state.sum}'),
        ),
        );

    });
  }
}
