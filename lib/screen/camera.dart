import 'package:flutter/material.dart';
import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatelessWidget {
   Camera({super.key});

  var imagePath = ''.obs;

  Future<void> openCamera() async {
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.camera,preferredCameraDevice: CameraDevice.rear);
    imagePath(pickedImage == null ? '' : pickedImage.path);
  }

  Widget build(BuildContext context){
    return Scaffold(
      body: Obx(() => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              width: Size.infinite.width,
              child: imagePath.value == ''
              ? Image.asset('asets/images/no_image.jpeg')
              : Image.file(File(imagePath.value)),
            ),
            const SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () async{await openCamera();},
                  child: const Text('Take Picture')),
                const SizedBox(width: 20,),
              ],
            )
          ],
        ),
      )),
    );
  }
}