import 'package:bloc/bloc.dart';
import 'package:blocc/bloc/image_picker/image_picker_event.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/image_picker_utils.dart';
import 'image_picker_state.dart';


class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final ImagePickerUtils imagePickerUtils;

  ImagePickerBloc(this.imagePickerUtils) : super( ImagePickerState()) {
    on<CameraCapture>(cameraCapture);
  }

  void cameraCapture(CameraCapture event, Emitter<ImagePickerState> states)async{
    XFile? file = await imagePickerUtils.cameraCapture();
    emit(state.copyWith(file: file));
  }

}
