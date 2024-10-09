import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_examples/utils/image_picker_utils.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'image_picker_event.dart';
part 'image_picker_state.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerInitial> {
  final ImagePickerUtil imagePickerUtil;
  ImagePickerBloc(this.imagePickerUtil) : super(ImagePickerInitial()) {
    on<CameraCapture>((event, emit) async {
      // TODO: implement event handler
      XFile? file = await imagePickerUtil.cameraCapture();
      emit(state.copyWith(file: file));
    });
    on<GalleryPicker>((event, emit) async {
      // TODO: implement event handler
      XFile? file = await imagePickerUtil.cameraCapture();
      emit(state.copyWith(file: file));
    });
  }
}
