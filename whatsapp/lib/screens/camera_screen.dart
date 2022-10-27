import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sampleproject/main.dart';

// ignore: must_be_immutable
class CameraScreen extends StatelessWidget {
  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();

  CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: TextButton(
        child: const Text('Open Camera'),
        onPressed: () {
          takePhoto(context, ImageSource.camera);
        },
      )),
    );
  }

  Future<void> takePhoto(BuildContext context, ImageSource source) async {
    try {
      final pickedImage =
          await imagePicker.pickImage(source: source, imageQuality: 100);
      pickedFile = File(pickedImage!.path);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => MyApp())));
    } catch (e) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => MyApp())));
    }

    
  }
}
