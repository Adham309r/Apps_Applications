import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'cube_sizing_state.dart';

class CubeSizingCubit extends Cubit<CubeSizingState> {
  CubeSizingCubit() : super(ShowTextState());
   String currentDisplay = '';
   

   void showText() {
    currentDisplay = 'Show text';
    
   emit(ShowTextState());

   } 
   void showImage() {
   currentDisplay = 'Show cubit image';

   emit(ShowImageState());

   }
   void showCircle() {
     currentDisplay = 'Show red circle';
   emit(ShowCircleState());

   }
   void reset() {
     currentDisplay = '';

   emit(InitialState());

   }














}
