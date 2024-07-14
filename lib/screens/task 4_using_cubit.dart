import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_application/cubits/task4/cube_sizing_cubit.dart';

class ScreenUsingCubit extends StatelessWidget {
  const ScreenUsingCubit({super.key});

  @override
  Widget build(BuildContext context) {
    CubeSizingCubit cubit = context.read<CubeSizingCubit>();
    Widget buildDisplay() {
      switch (cubit.currentDisplay) {
        case 'Show text':
          return const Text('This is a text');
        case 'Show cubit image':
          return Image.asset("assets/images/cubit.png");
        case 'Show red circle':
          return Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          );
        default:
          return Container();
      }
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<CubeSizingCubit, CubeSizingState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: buildDisplay(),
                  ),
                ),
                ElevatedButton(
                  onPressed: cubit.showText,
                  child: const Text('Show text'),
                ),
                ElevatedButton(
                  onPressed: cubit.showImage,
                  child: const Text('Show cubit image'),
                ),
                ElevatedButton(
                  onPressed: cubit.showCircle,
                  child: const Text('Show red circle'),
                ),
                ElevatedButton(
                  onPressed: cubit.reset,
                  child: const Text('Reset'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}