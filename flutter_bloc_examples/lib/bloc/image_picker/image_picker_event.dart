part of 'image_picker_bloc.dart';

@immutable
sealed class ImagePickerEvent {}

class CameraCapture extends ImagePickerEvent {}

class GalleryPicker extends ImagePickerEvent {}
