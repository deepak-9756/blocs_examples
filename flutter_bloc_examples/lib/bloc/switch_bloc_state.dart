part of 'switch_bloc_bloc.dart';

@immutable
sealed class SwitchBlocState {}

final class SwitchBlocInitial extends SwitchBlocState {
  final bool isSwitch;
  final double sliderval;
  SwitchBlocInitial({this.isSwitch = false, this.sliderval = 1.0});

  SwitchBlocInitial copyWith({bool? isSwitch, double? sliderval}) {
    return SwitchBlocInitial(
        isSwitch: isSwitch ?? this.isSwitch,
        sliderval: sliderval ?? this.sliderval);
  }
}
