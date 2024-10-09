import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'switch_bloc_event.dart';
part 'switch_bloc_state.dart';

class SwitchBlocBloc extends Bloc<SwitchBlocEvent, SwitchBlocInitial> {
  SwitchBlocBloc() : super(SwitchBlocInitial()) {
    on<EnableDisable>((event, emit) {
      // TODO: implement event handler
      emit(state.copyWith(isSwitch: !state.isSwitch));
    });

    on<SliderEvent>((event, emit) {
      // TODO: implement event handler
      emit(state.copyWith(sliderval: event.sliderval));
    });
  }
}
