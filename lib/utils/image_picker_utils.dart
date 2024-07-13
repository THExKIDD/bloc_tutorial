


import 'package:image_picker/image_picker.dart';

class ImagePickerUtils {

  final ImagePicker _picker = ImagePicker();

  Future<XFile?> cameraCapture(){
    final Future<XFile?> file = _picker.pickImage(source: ImageSource.camera);
    return file;
  }


  Future<XFile?> galleryWala(){
    final Future<XFile?> file = _picker.pickImage(source: ImageSource.camera);
    return file;
  }

}