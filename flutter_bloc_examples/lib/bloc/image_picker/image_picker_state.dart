part of 'image_picker_bloc.dart';

@immutable
sealed class ImagePickerState {}

class ImagePickerInitial extends ImagePickerState {
  final XFile? file;
  ImagePickerInitial({this.file});

  ImagePickerInitial copyWith({XFile? file}) {
    return ImagePickerInitial(file: file ?? this.file);
  }
}
