import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_application/cubits/task3/task3_cubit.dart';

class RadioListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Task3Cubit _cubit = context.read<Task3Cubit>();
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return BlocBuilder<Task3Cubit, Task3State>(
            builder: (context, state) {
              return ListTile(
                title: Text('Option ${index + 1}'),
                leading: Radio<int>(
                  value: index,
                  groupValue: _cubit.selectedRadioIndex,
                  onChanged: _cubit.handleRadioValueChange,
                ),
              );
            },
          );
        },
      ),
    );
  }
}