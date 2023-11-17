import 'package:bloc1/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/sum_bloc.dart';

class Home extends StatelessWidget {
  Home({super.key});
  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SumBloc, SumState>(builder: (context, state){
      return Scaffold(
        appBar: AppBar(
          title: const Text('Bloc'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(256.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                TextField(
                  controller: a,
                  decoration: const InputDecoration(
                    hintText: 'Ingrese a',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: b,
                  decoration: const InputDecoration(
                    hintText: 'Ingrese b',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20,),
                Text('Resultado : ${state.sum}'),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.indigoAccent),
                      ),
                      onPressed: (){
                        context.read<SumBloc>().add(SumAdd(a: int.parse(a.text), b: int.parse(b.text)));
                      },
                      child: const Text('Sumar'),
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.indigoAccent),
                      ),
                      onPressed: (){
                        a.clear();
                        b.clear();
                        context.read<SumBloc>().add(NewSum());
                      },
                      child: const Text('Nuevo'),
                    ),
                    const SizedBox(width: 20,),

                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.indigoAccent),
                      ),
                      onPressed: (){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PageLast(),
                        )
                        );
                      },
                      child: const Text('Página'),
                    )

                  ],
                ),

              ],
            ),
          )
        )
      );
    });
  }
}
