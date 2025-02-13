import 'package:blocc/bloc/counter/counter_bloc.dart';
import 'package:blocc/bloc/counter/counter_event.dart';
import 'package:blocc/bloc/counter/counter_state.dart';
import 'package:blocc/ui/switch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SwitchScreen()));
              },
              icon: const Icon(Icons.swap_horiz)
          )
        ],
        title: const Text('Counter'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc , CounterState>(
            builder: (context, state) {
              return Center(
                child: Text(
                  state.counter.toString(),
                  style: const TextStyle(
                    fontSize: 60,
                  ),
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(IncrementCounter());
                },
                child: const Text('Increment'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(DecrementCounter());
                },
                child: const Text('Decrement'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
