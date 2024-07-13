

import 'dart:io';

import 'package:blocc/bloc/image_picker/image_picker_bloc.dart';
import 'package:blocc/bloc/image_picker/image_picker_event.dart';
import 'package:blocc/bloc/image_picker/image_picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
        centerTitle: true,
      ),
      body: BlocBuilder<ImagePickerBloc, ImagePickerState>
        (builder: (context, state) {
          if(state.file == null){
            return InkWell(
              onTap: (){
                context.read<ImagePickerBloc>().add(CameraCapture());
              },
              child: CircleAvatar(
                child: Icon(Icons.camera),
              ),
            );
          }
          else{
            return Image.file(File(state.file!.path.toString()));
          }
      } ),
    );
  }
}
