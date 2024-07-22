import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/ui/cubit/home_page_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("Counter"),),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<HomePageCubit, int>(builder: (context, state) {
            return Text(state.toString());
          }),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<HomePageCubit>().increment();
                  },
                  child: Icon(Icons.add)),
              ElevatedButton(
                  onPressed: () {
                    context.read<HomePageCubit>().decrement();
                  },
                  child: Icon(Icons.remove)),
            ],
          )
        ],
      )),
    );
  }
}
