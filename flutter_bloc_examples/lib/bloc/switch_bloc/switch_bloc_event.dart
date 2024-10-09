part of 'switch_bloc_bloc.dart';

@immutable
sealed class SwitchBlocEvent {}

class EnableDisable extends SwitchBlocEvent {}

class SliderEvent extends SwitchBlocEvent {
  final double sliderval;
  SliderEvent({required this.sliderval});
}
