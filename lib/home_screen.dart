import 'package:bloc_app/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is DecrementState) {
                  return Text('Counter ${state.count}');
                }
                if (state is IncrementState) {
                  return Text('Counter ${state.count}');
                }
                return const Text('Counter 0');
              },
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(MinusEvent());
                    },
                    icon: const Icon(Icons.remove)),
                IconButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(PlusEvent());
                    },
                    icon: const Icon(Icons.add)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
