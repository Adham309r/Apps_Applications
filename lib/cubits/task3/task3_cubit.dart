import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'task3_state.dart';

class Task3Cubit extends Cubit<Task3State> {
  Task3Cubit() : super(Task3Initial());

int selectedRadioIndex = 0;

  void handleRadioValueChange(int? value) {
    selectedRadioIndex = value!;
    emit(Task3Initial());
  }





}
