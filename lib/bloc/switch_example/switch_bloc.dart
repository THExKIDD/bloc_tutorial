import 'package:bloc/bloc.dart';
import 'package:blocc/bloc/switch_example/switch_event.dart';
import 'package:blocc/bloc/switch_example/switch_state.dart';
import 'package:flutter/material.dart';


class SwitchBloc extends Bloc<SwitchEvent, SwitchStates> {
  SwitchBloc() : super(SwitchStates()) {
    on<EnableOrDisableNoti>(_enableOrDisableNoti);
    on<SliderEvent>(_slider);

  }
  void _enableOrDisableNoti (EnableOrDisableNoti events , Emitter<SwitchStates> emit)
  {
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }

  void _slider (SliderEvent events , Emitter<SwitchStates> emit)
  {
    emit(state.copyWith(slider: events.slider));
  }

}
